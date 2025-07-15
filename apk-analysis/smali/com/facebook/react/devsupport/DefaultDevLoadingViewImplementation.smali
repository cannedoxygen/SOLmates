.class public final Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;
.super Ljava/lang/Object;
.source "DefaultDevLoadingViewImplementation.kt"

# interfaces
.implements Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0002J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J+\u0010\u0014\u001a\u00020\u000e2\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016\u00a2\u0006\u0002\u0010\u0019R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;",
        "Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;",
        "reactInstanceDevHelper",
        "Lcom/facebook/react/devsupport/ReactInstanceDevHelper;",
        "(Lcom/facebook/react/devsupport/ReactInstanceDevHelper;)V",
        "context",
        "Landroid/content/Context;",
        "getContext",
        "()Landroid/content/Context;",
        "devLoadingPopup",
        "Landroid/widget/PopupWindow;",
        "devLoadingView",
        "Landroid/widget/TextView;",
        "hide",
        "",
        "hideInternal",
        "showInternal",
        "message",
        "",
        "showMessage",
        "updateProgress",
        "status",
        "done",
        "",
        "total",
        "(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V",
        "Companion",
        "ReactAndroid_debug"
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
.field public static final Companion:Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation$Companion;

.field private static isEnabled:Z


# instance fields
.field private devLoadingPopup:Landroid/widget/PopupWindow;

.field private devLoadingView:Landroid/widget/TextView;

.field private final reactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;


# direct methods
.method public static synthetic $r8$lambda$3BUQR0c4k0VdgAuZGgjxrMl_eQE(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->updateProgress$lambda$1(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ocmkqkmh3lajgBQuKhYFJfMXqgE(Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->showMessage$lambda$0(Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lCwZY3suZLuhSW74t-xMmEkmhMg(Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;)V
    .locals 0

    invoke-static {p0}, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->hide$lambda$2(Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->Companion:Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation$Companion;

    .line 114
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->isEnabled:Z

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/devsupport/ReactInstanceDevHelper;)V
    .locals 1
    .param p1, "reactInstanceDevHelper"    # Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    const-string/jumbo v0, "reactInstanceDevHelper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->reactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    .line 29
    return-void
.end method

.method public static final synthetic access$setEnabled$cp(Z)V
    .locals 0
    .param p0, "<set-?>"    # Z

    .line 29
    sput-boolean p0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->isEnabled:Z

    return-void
.end method

.method private final getContext()Landroid/content/Context;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->reactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method private static final hide$lambda$2(Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;)V
    .locals 1
    .param p0, "this$0"    # Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->hideInternal()V

    return-void
.end method

.method private final hideInternal()V
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->devLoadingPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    return-void

    .line 103
    .local v0, "popup":Landroid/widget/PopupWindow;
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 104
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 105
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->devLoadingPopup:Landroid/widget/PopupWindow;

    .line 106
    iput-object v1, p0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->devLoadingView:Landroid/widget/TextView;

    .line 108
    :cond_1
    return-void
.end method

.method private final showInternal(Ljava/lang/String;)V
    .locals 11
    .param p1, "message"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->devLoadingPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 65
    return-void

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->reactInstanceDevHelper:Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    invoke-interface {v0}, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 68
    .local v0, "currentActivity":Landroid/app/Activity;
    const-string v2, "ReactNative"

    if-nez v0, :cond_2

    .line 70
    nop

    .line 71
    nop

    .line 69
    const-string v1, "Unable to display loading message because react activity isn\'t available"

    invoke-static {v2, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void

    .line 78
    :cond_2
    nop

    .line 79
    :try_start_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 80
    .local v3, "rectangle":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 81
    iget v4, v3, Landroid/graphics/Rect;->top:I

    .line 83
    .local v4, "topOffset":I
    const-string v5, "layout_inflater"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string/jumbo v6, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/LayoutInflater;

    .line 82
    nop

    .line 84
    .local v5, "inflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/facebook/react/R$layout;->dev_loading_view:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const-string/jumbo v7, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroid/widget/TextView;

    .line 85
    .local v6, "view":Landroid/widget/TextView;
    move-object v7, p1

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v7, Landroid/widget/PopupWindow;

    .line 88
    move-object v8, v6

    check-cast v8, Landroid/view/View;

    .line 87
    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 86
    nop

    .line 89
    .local v7, "popup":Landroid/widget/PopupWindow;
    invoke-virtual {v7, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 90
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8, v1, v1, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 91
    iput-object v6, p0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->devLoadingView:Landroid/widget/TextView;

    .line 92
    iput-object v7, p0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->devLoadingPopup:Landroid/widget/PopupWindow;
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "rectangle":Landroid/graphics/Rect;
    .end local v4    # "topOffset":I
    .end local v5    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "view":Landroid/widget/TextView;
    .end local v7    # "popup":Landroid/widget/PopupWindow;
    goto :goto_1

    .line 94
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Landroid/view/WindowManager$BadTokenException;
    nop

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to display loading message because react activity isn\'t active, message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-static {v2, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .end local v1    # "e":Landroid/view/WindowManager$BadTokenException;
    :goto_1
    return-void
.end method

.method private static final showMessage$lambda$0(Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;Ljava/lang/String;)V
    .locals 1
    .param p0, "this$0"    # Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;
    .param p1, "$message"    # Ljava/lang/String;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->showInternal(Ljava/lang/String;)V

    return-void
.end method

.method private static final updateProgress$lambda$1(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;Ljava/lang/String;)V
    .locals 4
    .param p0, "$done"    # Ljava/lang/Integer;
    .param p1, "$total"    # Ljava/lang/Integer;
    .param p2, "this$0"    # Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;
    .param p3, "$status"    # Ljava/lang/String;

    const-string/jumbo v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/16 v2, 0x64

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, " %.1f%%"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "format(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_0
    const-string v0, ""

    .line 48
    :goto_0
    nop

    .line 47
    nop

    .line 51
    .local v0, "percentage":Ljava/lang/String;
    iget-object v1, p2, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->devLoadingView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    goto :goto_2

    .line 52
    :cond_1
    if-nez p3, :cond_2

    const-string v2, "Loading"

    goto :goto_1

    :cond_2
    move-object v2, p3

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    :goto_2
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .line 57
    sget-boolean v0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->isEnabled:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 60
    :cond_0
    return-void
.end method

.method public showMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-boolean v0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->isEnabled:Z

    if-nez v0, :cond_0

    .line 37
    return-void

    .line 39
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 40
    return-void
.end method

.method public updateProgress(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "status"    # Ljava/lang/String;
    .param p2, "done"    # Ljava/lang/Integer;
    .param p3, "total"    # Ljava/lang/Integer;

    .line 43
    sget-boolean v0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;->isEnabled:Z

    if-nez v0, :cond_0

    .line 44
    return-void

    .line 46
    :cond_0
    new-instance v0, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3, p0, p1}, Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Lcom/facebook/react/devsupport/DefaultDevLoadingViewImplementation;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method
