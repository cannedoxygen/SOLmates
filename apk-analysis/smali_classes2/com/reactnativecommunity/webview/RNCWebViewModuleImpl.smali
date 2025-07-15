.class public Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;
.super Ljava/lang/Object;
.source "RNCWebViewModuleImpl.java"

# interfaces
.implements Lcom/facebook/react/bridge/ActivityEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;,
        Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;
    }
.end annotation


# static fields
.field public static final FILE_DOWNLOAD_PERMISSION_REQUEST:I = 0x1

.field public static final NAME:Ljava/lang/String; = "RNCWebViewModule"

.field public static final PICKER:I = 0x1

.field public static final PICKER_LEGACY:I = 0x3

.field protected static final shouldOverrideUrlLoadingLock:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;


# instance fields
.field private final mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

.field private mDownloadRequest:Landroid/app/DownloadManager$Request;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePathCallbackLegacy:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputImage:Ljava/io/File;

.field private mOutputVideo:Ljava/io/File;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;)Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 0

    iget-object p0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDownloadRequest(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;)Landroid/app/DownloadManager$Request;
    .locals 0

    iget-object p0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mDownloadRequest:Landroid/app/DownloadManager$Request;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 164
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;

    invoke-direct {v0}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;-><init>()V

    sput-object v0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->shouldOverrideUrlLoadingLock:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 65
    invoke-virtual {p1, p0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addActivityEventListener(Lcom/facebook/react/bridge/ActivityEventListener;)V

    .line 66
    return-void
.end method

.method private acceptsImages(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .line 416
    move-object v0, p1

    .line 417
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "\\.\\w+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->IMAGE:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;

    invoke-static {v2}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->-$$Nest$fgetvalue(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private acceptsImages([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "types"    # [Ljava/lang/String;

    .line 424
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getAcceptedMimeType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 425
    .local v0, "mimeTypes":[Ljava/lang/String;
    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->DEFAULT:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;

    invoke-static {v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->-$$Nest$fgetvalue(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->arrayContainsString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->IMAGE:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;

    invoke-static {v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->-$$Nest$fgetvalue(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->arrayContainsString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private acceptsVideo(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "types"    # Ljava/lang/String;

    .line 429
    nop

    .line 433
    move-object v0, p1

    .line 434
    .local v0, "mimeType":Ljava/lang/String;
    const-string v1, "\\.\\w+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 435
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->VIDEO:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;

    invoke-static {v2}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->-$$Nest$fgetvalue(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private acceptsVideo([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "types"    # [Ljava/lang/String;

    .line 441
    nop

    .line 445
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getAcceptedMimeType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "mimeTypes":[Ljava/lang/String;
    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->DEFAULT:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;

    invoke-static {v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->-$$Nest$fgetvalue(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->arrayContainsString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->VIDEO:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;

    invoke-static {v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->-$$Nest$fgetvalue(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->arrayContainsString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method private arrayContainsString([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "array"    # [Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;

    .line 450
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 451
    .local v3, "content":Ljava/lang/String;
    invoke-virtual {v3, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 452
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 450
    .end local v3    # "content":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private getAcceptedMimeType([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "types"    # [Ljava/lang/String;

    .line 459
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->noAcceptTypesSet([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->DEFAULT:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;

    invoke-static {v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->-$$Nest$fgetvalue(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0

    .line 462
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    .line 463
    .local v0, "mimeTypes":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 464
    aget-object v2, p1, v1

    .line 466
    .local v2, "t":Ljava/lang/String;
    const-string v3, "\\.\\w+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 467
    const-string v3, "."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "mimeType":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 469
    aput-object v3, v0, v1

    goto :goto_1

    .line 471
    :cond_1
    aput-object v2, v0, v1

    .line 473
    .end local v3    # "mimeType":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 474
    :cond_2
    aput-object v2, v0, v1

    .line 463
    .end local v2    # "t":Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v1    # "i":I
    :cond_3
    return-object v0
.end method

.method private getFileChooserIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "acceptTypes"    # Ljava/lang/String;

    .line 393
    move-object v0, p1

    .line 394
    .local v0, "_acceptTypes":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 395
    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->DEFAULT:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;

    invoke-static {v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->-$$Nest$fgetvalue(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/lang/String;

    move-result-object v0

    .line 397
    :cond_0
    const-string v1, "\\.\\w+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 398
    const-string v1, "."

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 401
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.category.OPENABLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    return-object v1
.end method

.method private getFileChooserIntent([Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .param p1, "acceptTypes"    # [Ljava/lang/String;
    .param p2, "allowMultiple"    # Z

    .line 407
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 409
    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->DEFAULT:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;

    invoke-static {v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->-$$Nest$fgetvalue(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const-string v1, "android.intent.extra.MIME_TYPES"

    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getAcceptedMimeType([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string v1, "android.intent.extra.ALLOW_MULTIPLE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 412
    return-object v0
.end method

.method private getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "extension"    # Ljava/lang/String;

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "type":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 483
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    :cond_0
    return-object v0
.end method

.method private getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;
    .locals 3

    .line 546
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 547
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 549
    instance-of v1, v0, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    if-eqz v1, :cond_0

    .line 552
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/modules/core/PermissionAwareActivity;

    return-object v1

    .line 550
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to use permissions API but the host Activity doesn\'t implement PermissionAwareActivity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 548
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Tried to use permissions API while not attached to an Activity."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getWebviewFileDownloaderPermissionListener(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/modules/core/PermissionListener;
    .locals 1
    .param p1, "downloadingMessage"    # Ljava/lang/String;
    .param p2, "lackPermissionToDownloadMessage"    # Ljava/lang/String;

    .line 179
    new-instance v0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$1;-><init>(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private noAcceptTypesSet([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "types"    # [Ljava/lang/String;

    .line 542
    array-length v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    array-length v0, p1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v2

    if-eqz v0, :cond_0

    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;)V
    .locals 4
    .param p1, "downloadingMessage"    # Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v1, "download"

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 317
    .local v0, "dm":Landroid/app/DownloadManager;
    :try_start_0
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mDownloadRequest:Landroid/app/DownloadManager$Request;

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    nop

    .line 323
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 324
    return-void

    .line 318
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 319
    .local v1, "e":Ljava/lang/RuntimeException;
    :goto_0
    const-string v2, "RNCWebViewModule"

    const-string v3, "Unsupported URI, aborting download"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 320
    return-void
.end method

.method public getCapturedFile(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/io/File;
    .locals 7
    .param p1, "mimeType"    # Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    const-string v0, ""

    .line 501
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, ""

    .line 502
    .local v1, "suffix":Ljava/lang/String;
    const-string v2, ""

    .line 504
    .local v2, "dir":Ljava/lang/String;
    sget-object v3, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$2;->$SwitchMap$com$reactnativecommunity$webview$RNCWebViewModuleImpl$MimeType:[I

    invoke-virtual {p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 511
    :pswitch_0
    const-string v0, "video-"

    .line 512
    const-string v1, ".mp4"

    .line 513
    sget-object v2, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    .line 514
    goto :goto_0

    .line 506
    :pswitch_1
    const-string v0, "image-"

    .line 507
    const-string v1, ".jpg"

    .line 508
    sget-object v2, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    .line 509
    nop

    .line 520
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    .local v3, "filename":Ljava/lang/String;
    const/4 v4, 0x0

    .line 524
    .local v4, "outputFile":Ljava/io/File;
    nop

    .line 530
    iget-object v5, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/facebook/react/bridge/ReactApplicationContext;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 531
    .local v5, "storageDir":Ljava/io/File;
    invoke-static {v0, v1, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 534
    .end local v5    # "storageDir":Ljava/io/File;
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getOutputUri(Ljava/io/File;)Landroid/net/Uri;
    .locals 4
    .param p1, "capturedFile"    # Ljava/io/File;

    .line 490
    nop

    .line 495
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".fileprovider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public getPhotoIntent()Landroid/content/Intent;
    .locals 4

    .line 361
    const/4 v0, 0x0

    .line 364
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->IMAGE:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;

    invoke-virtual {p0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getCapturedFile(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputImage:Ljava/io/File;

    .line 365
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputImage:Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getOutputUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 366
    .local v1, "outputImageUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 367
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    nop

    .end local v1    # "outputImageUri":Landroid/net/Uri;
    goto :goto_1

    .line 368
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "CREATE FILE"

    const-string v3, "Error occurred while creating the File"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 373
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public getSelectedFiles(Landroid/content/Intent;I)[Landroid/net/Uri;
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I

    .line 215
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 216
    return-object v0

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 222
    .local v0, "numSelectedFiles":I
    new-array v1, v0, [Landroid/net/Uri;

    .line 223
    .local v1, "result":[Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 224
    invoke-virtual {p1}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    .line 223
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 226
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 230
    .end local v0    # "numSelectedFiles":I
    .end local v1    # "result":[Landroid/net/Uri;
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 231
    invoke-static {p2, p1}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 234
    :cond_3
    return-object v0
.end method

.method public getVideoIntent()Landroid/content/Intent;
    .locals 4

    .line 377
    const/4 v0, 0x0

    .line 380
    .local v0, "intent":Landroid/content/Intent;
    :try_start_0
    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;->VIDEO:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;

    invoke-virtual {p0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getCapturedFile(Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$MimeType;)Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputVideo:Ljava/io/File;

    .line 381
    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputVideo:Ljava/io/File;

    invoke-virtual {p0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getOutputUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 382
    .local v1, "outputVideoUri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 383
    const-string v2, "output"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    nop

    .end local v1    # "outputVideoUri":Landroid/net/Uri;
    goto :goto_1

    .line 384
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 385
    .local v1, "e":Ljava/lang/Exception;
    :goto_0
    const-string v2, "CREATE FILE"

    const-string v3, "Error occurred while creating the File"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-object v0
.end method

.method public grantFileDownloaderPermissions(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "downloadingMessage"    # Ljava/lang/String;
    .param p2, "lackPermissionToDownloadMessage"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 329
    .local v0, "activity":Landroid/app/Activity;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x1

    if-le v1, v2, :cond_0

    .line 330
    return v3

    .line 333
    :cond_0
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 334
    .local v2, "result":Z
    :goto_0
    if-nez v2, :cond_2

    .line 335
    invoke-direct {p0}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getPermissionAwareActivity()Lcom/facebook/react/modules/core/PermissionAwareActivity;

    move-result-object v5

    .line 336
    .local v5, "PAactivity":Lcom/facebook/react/modules/core/PermissionAwareActivity;
    new-array v6, v3, [Ljava/lang/String;

    aput-object v1, v6, v4

    invoke-direct {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getWebviewFileDownloaderPermissionListener(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/react/modules/core/PermissionListener;

    move-result-object v1

    invoke-interface {v5, v6, v3, v1}, Lcom/facebook/react/modules/core/PermissionAwareActivity;->requestPermissions([Ljava/lang/String;ILcom/facebook/react/modules/core/PermissionListener;)V

    .line 339
    .end local v5    # "PAactivity":Lcom/facebook/react/modules/core/PermissionAwareActivity;
    :cond_2
    return v2
.end method

.method public isFileUploadSupported()Z
    .locals 1

    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method protected needsCameraPermission()Z
    .locals 6

    .line 343
    const-string v0, "android.permission.CAMERA"

    iget-object v1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 344
    .local v1, "activity":Landroid/app/Activity;
    const/4 v2, 0x0

    .line 346
    .local v2, "needed":Z
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 348
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 349
    .local v4, "requestedPermissions":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 350
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 351
    const/4 v2, 0x1

    .line 355
    .end local v4    # "requestedPermissions":[Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x1

    .line 357
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return v2
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .line 70
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallbackLegacy:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    .line 75
    .local v0, "imageTaken":Z
    const/4 v1, 0x0

    .line 77
    .local v1, "videoTaken":Z
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputImage:Ljava/io/File;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputImage:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_1

    .line 78
    const/4 v0, 0x1

    .line 80
    :cond_1
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputVideo:Ljava/io/File;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputVideo:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-lez v2, :cond_2

    .line 81
    const/4 v1, 0x1

    .line 87
    :cond_2
    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 104
    :pswitch_1
    if-eq p3, v2, :cond_3

    .line 105
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallbackLegacy:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 107
    :cond_3
    if-eqz v0, :cond_4

    .line 108
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallbackLegacy:Landroid/webkit/ValueCallback;

    iget-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputImage:Ljava/io/File;

    invoke-virtual {p0, v4}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getOutputUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 109
    :cond_4
    if-eqz v1, :cond_5

    .line 110
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallbackLegacy:Landroid/webkit/ValueCallback;

    iget-object v4, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputVideo:Ljava/io/File;

    invoke-virtual {p0, v4}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getOutputUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 112
    :cond_5
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallbackLegacy:Landroid/webkit/ValueCallback;

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :pswitch_2
    if-eq p3, v2, :cond_6

    .line 90
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_9

    .line 91
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_6
    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 95
    iget-object v5, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallback:Landroid/webkit/ValueCallback;

    new-array v4, v4, [Landroid/net/Uri;

    iget-object v6, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputImage:Ljava/io/File;

    invoke-virtual {p0, v6}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getOutputUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-interface {v5, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    :cond_7
    if-eqz v1, :cond_8

    .line 97
    iget-object v5, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallback:Landroid/webkit/ValueCallback;

    new-array v4, v4, [Landroid/net/Uri;

    iget-object v6, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputVideo:Ljava/io/File;

    invoke-virtual {p0, v6}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getOutputUri(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-interface {v5, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 99
    :cond_8
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallback:Landroid/webkit/ValueCallback;

    invoke-virtual {p0, p4, p3}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getSelectedFiles(Landroid/content/Intent;I)[Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 102
    nop

    .line 119
    :cond_9
    :goto_0
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputImage:Ljava/io/File;

    if-eqz v2, :cond_a

    if-nez v0, :cond_a

    .line 120
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputImage:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 122
    :cond_a
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputVideo:Ljava/io/File;

    if-eqz v2, :cond_b

    if-nez v1, :cond_b

    .line 123
    iget-object v2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputVideo:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 126
    :cond_b
    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 127
    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallbackLegacy:Landroid/webkit/ValueCallback;

    .line 128
    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputImage:Ljava/io/File;

    .line 129
    iput-object v3, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mOutputVideo:Ljava/io/File;

    .line 130
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 135
    return-void
.end method

.method public setDownloadRequest(Landroid/app/DownloadManager$Request;)V
    .locals 0
    .param p1, "request"    # Landroid/app/DownloadManager$Request;

    .line 310
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mDownloadRequest:Landroid/app/DownloadManager$Request;

    .line 311
    return-void
.end method

.method public shouldStartLoadWithLockIdentifier(ZD)V
    .locals 2
    .param p1, "shouldStart"    # Z
    .param p2, "lockIdentifier"    # D

    .line 205
    sget-object v0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->shouldOverrideUrlLoadingLock:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock;->getLock(Ljava/lang/Double;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    .line 206
    .local v0, "lockObject":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;>;"
    if-eqz v0, :cond_1

    .line 207
    monitor-enter v0

    .line 208
    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;->DO_NOT_OVERRIDE:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;->SHOULD_OVERRIDE:Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl$ShouldOverrideUrlLoadingLock$ShouldOverrideCallbackState;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 210
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 212
    :cond_1
    :goto_1
    return-void
.end method

.method public startPhotoPickerIntent(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 6
    .param p1, "acceptType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 238
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallbackLegacy:Landroid/webkit/ValueCallback;

    .line 239
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 240
    .local v0, "activity":Landroid/app/Activity;
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getFileChooserIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 241
    .local v1, "fileChooserIntent":Landroid/content/Intent;
    const-string v2, ""

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    .line 243
    .local v2, "chooserIntent":Landroid/content/Intent;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v3, "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->acceptsImages(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getPhotoIntent()Landroid/content/Intent;

    move-result-object v4

    .line 246
    .local v4, "photoIntent":Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 247
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v4    # "photoIntent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->acceptsVideo(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getVideoIntent()Landroid/content/Intent;

    move-result-object v4

    .line 252
    .local v4, "videoIntent":Landroid/content/Intent;
    if-eqz v4, :cond_1

    .line 253
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .end local v4    # "videoIntent":Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [Landroid/os/Parcelable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/os/Parcelable;

    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 258
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 259
    const/4 v4, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 261
    :cond_2
    const-string v4, "RNCWebViewModule"

    const-string v5, "there is no Activity to handle this Intent"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    return-void
.end method

.method public startPhotoPickerIntent([Ljava/lang/String;ZLandroid/webkit/ValueCallback;Z)Z
    .locals 7
    .param p1, "acceptTypes"    # [Ljava/lang/String;
    .param p2, "allowMultiple"    # Z
    .param p4, "isCaptureEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;Z)Z"
        }
    .end annotation

    .line 266
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<[Landroid/net/Uri;>;"
    iput-object p3, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 267
    iget-object v0, p0, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->mContext:Lcom/facebook/react/bridge/ReactApplicationContext;

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 269
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .local v1, "extraIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .line 271
    .local v2, "photoIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->needsCameraPermission()Z

    move-result v3

    if-nez v3, :cond_1

    .line 272
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->acceptsImages([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getPhotoIntent()Landroid/content/Intent;

    move-result-object v2

    .line 274
    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_0
    invoke-direct {p0, p1}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->acceptsVideo([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getVideoIntent()Landroid/content/Intent;

    move-result-object v3

    .line 280
    .local v3, "videoIntent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 281
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v3    # "videoIntent":Landroid/content/Intent;
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CHOOSER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v3, "chooserIntent":Landroid/content/Intent;
    if-eqz p4, :cond_2

    .line 288
    move-object v3, v2

    goto :goto_0

    .line 290
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/reactnativecommunity/webview/RNCWebViewModuleImpl;->getFileChooserIntent([Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v4

    .line 292
    .local v4, "fileSelectionIntent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 293
    const/4 v5, 0x0

    new-array v5, v5, [Landroid/os/Parcelable;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/os/Parcelable;

    const-string v6, "android.intent.extra.INITIAL_INTENTS"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    .end local v4    # "fileSelectionIntent":Landroid/content/Intent;
    :goto_0
    const/4 v4, 0x1

    const-string v5, "RNCWebViewModule"

    if-eqz v3, :cond_4

    .line 297
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 298
    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 300
    :cond_3
    const-string v6, "there is no Activity to handle this Intent"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 303
    :cond_4
    const-string v6, "there is no Camera permission"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :goto_1
    return v4
.end method
