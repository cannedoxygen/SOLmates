.class public final Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;
.super Landroid/widget/BaseAdapter;
.source "DevLauncherStackAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0011\u001a\u00020\u000eH\u0016J$\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u000e2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0019"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;",
        "Landroid/widget/BaseAdapter;",
        "context",
        "Landroid/content/Context;",
        "data",
        "Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;",
        "(Landroid/content/Context;Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V",
        "getContext",
        "()Landroid/content/Context;",
        "getData",
        "()Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;",
        "setData",
        "(Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V",
        "getCount",
        "",
        "getItem",
        "",
        "position",
        "getItemId",
        "",
        "getView",
        "Landroid/view/View;",
        "convertView",
        "parent",
        "Landroid/view/ViewGroup;",
        "expo-dev-launcher_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private data:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 12
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;->context:Landroid/content/Context;

    .line 13
    iput-object p2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;->data:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    .line 11
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 12
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 16
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;->data:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getData()Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;->data:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 20
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;->data:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;->getError()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 24
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 28
    invoke-virtual {p0, p1}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.StackTraceElement"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/StackTraceElement;

    .line 30
    .local v0, "stackTraceElement":Ljava/lang/StackTraceElement;
    if-nez p2, :cond_0

    .line 31
    iget-object v1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lexpo/modules/devlauncher/R$layout;->error_console_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 30
    :cond_0
    move-object v1, p2

    :goto_0
    nop

    .line 32
    .local v1, "currentView":Landroid/view/View;
    invoke-static {v1}, Lexpo/modules/devlauncher/databinding/ErrorConsoleListItemBinding;->bind(Landroid/view/View;)Lexpo/modules/devlauncher/databinding/ErrorConsoleListItemBinding;

    move-result-object v2

    const-string v3, "bind(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .local v2, "binding":Lexpo/modules/devlauncher/databinding/ErrorConsoleListItemBinding;
    iget-object v3, v2, Lexpo/modules/devlauncher/databinding/ErrorConsoleListItemBinding;->rnFrameMethod:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object v3, v2, Lexpo/modules/devlauncher/databinding/ErrorConsoleListItemBinding;->rnFrameFile:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    invoke-virtual {v2}, Lexpo/modules/devlauncher/databinding/ErrorConsoleListItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v3

    const-string v4, "getRoot(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/view/View;

    return-object v3
.end method

.method public final setData(Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;)V
    .locals 0
    .param p1, "<set-?>"    # Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    .line 13
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherStackAdapter;->data:Lexpo/modules/devlauncher/launcher/errors/DevLauncherAppError;

    return-void
.end method
