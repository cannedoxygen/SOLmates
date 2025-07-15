.class Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;
.super Ljava/lang/Object;
.source "RedBoxDialogSurfaceDelegate.java"

# interfaces
.implements Lcom/facebook/react/common/SurfaceDelegate;


# instance fields
.field private final mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

.field private mDialog:Landroid/app/Dialog;

.field private final mDoubleTapReloadRecognizer:Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

.field private mRedBoxContentView:Lcom/facebook/react/devsupport/RedBoxContentView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDevSupportManager(Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDoubleTapReloadRecognizer(Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;)Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDoubleTapReloadRecognizer:Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRedBoxContentView(Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;)Lcom/facebook/react/devsupport/RedBoxContentView;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mRedBoxContentView:Lcom/facebook/react/devsupport/RedBoxContentView;

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V
    .locals 1
    .param p1, "devSupportManager"    # Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 44
    new-instance v0, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

    invoke-direct {v0}, Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDoubleTapReloadRecognizer:Lcom/facebook/react/devsupport/DoubleTapReloadRecognizer;

    .line 45
    return-void
.end method


# virtual methods
.method public createContentView(Ljava/lang/String;)V
    .locals 5
    .param p1, "appKey"    # Ljava/lang/String;

    .line 51
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getRedBoxHandler()Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;

    move-result-object v0

    .line 52
    .local v0, "redBoxHandler":Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 53
    .local v1, "context":Landroid/app/Activity;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance v2, Lcom/facebook/react/devsupport/RedBoxContentView;

    invoke-direct {v2, v1}, Lcom/facebook/react/devsupport/RedBoxContentView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mRedBoxContentView:Lcom/facebook/react/devsupport/RedBoxContentView;

    .line 64
    iget-object v2, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mRedBoxContentView:Lcom/facebook/react/devsupport/RedBoxContentView;

    iget-object v3, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    .line 65
    invoke-virtual {v2, v3}, Lcom/facebook/react/devsupport/RedBoxContentView;->setDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)Lcom/facebook/react/devsupport/RedBoxContentView;

    move-result-object v2

    .line 66
    invoke-virtual {v2, v0}, Lcom/facebook/react/devsupport/RedBoxContentView;->setRedBoxHandler(Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;)Lcom/facebook/react/devsupport/RedBoxContentView;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/facebook/react/devsupport/RedBoxContentView;->init()V

    .line 68
    return-void

    .line 54
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v2}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getLastErrorTitle()Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "message":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to launch redbox because react activity is not available, here is the error that redbox would\'ve displayed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 59
    if-eqz v2, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    const-string v4, "N/A"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 55
    const-string v4, "ReactNative"

    invoke-static {v4, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public destroyContentView()V
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mRedBoxContentView:Lcom/facebook/react/devsupport/RedBoxContentView;

    .line 78
    return-void
.end method

.method public hide()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 148
    invoke-virtual {p0}, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->destroyContentView()V

    .line 149
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDialog:Landroid/app/Dialog;

    .line 151
    :cond_0
    return-void
.end method

.method public isContentViewReady()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mRedBoxContentView:Lcom/facebook/react/devsupport/RedBoxContentView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 4

    .line 82
    iget-object v0, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getLastErrorTitle()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "message":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDevSupportManager:Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    invoke-interface {v1}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 84
    .local v1, "context":Landroid/app/Activity;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mRedBoxContentView:Lcom/facebook/react/devsupport/RedBoxContentView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mRedBoxContentView:Lcom/facebook/react/devsupport/RedBoxContentView;

    invoke-virtual {v2}, Lcom/facebook/react/devsupport/RedBoxContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eq v2, v1, :cond_2

    .line 95
    :cond_1
    const-string v2, "RedBox"

    invoke-virtual {p0, v2}, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->createContentView(Ljava/lang/String;)V

    .line 98
    :cond_2
    iget-object v2, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mRedBoxContentView:Lcom/facebook/react/devsupport/RedBoxContentView;

    invoke-virtual {v2}, Lcom/facebook/react/devsupport/RedBoxContentView;->refreshContentView()V

    .line 99
    iget-object v2, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDialog:Landroid/app/Dialog;

    if-nez v2, :cond_3

    .line 100
    new-instance v2, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate$1;

    sget v3, Lcom/facebook/react/R$style;->Theme_Catalyst_RedBox:I

    invoke-direct {v2, p0, v1, v3}, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate$1;-><init>(Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDialog:Landroid/app/Dialog;

    .line 137
    iget-object v2, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 138
    iget-object v2, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mRedBoxContentView:Lcom/facebook/react/devsupport/RedBoxContentView;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 140
    :cond_3
    iget-object v2, p0, Lcom/facebook/react/devsupport/RedBoxDialogSurfaceDelegate;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 141
    return-void

    .line 85
    :cond_4
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch redbox because react activity is not available, here is the error that redbox would\'ve displayed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 89
    if-eqz v0, :cond_5

    move-object v3, v0

    goto :goto_1

    :cond_5
    const-string v3, "N/A"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    const-string v3, "ReactNative"

    invoke-static {v3, v2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method
