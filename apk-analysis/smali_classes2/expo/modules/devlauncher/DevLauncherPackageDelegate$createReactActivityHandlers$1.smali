.class public final Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityHandlers$1;
.super Ljava/lang/Object;
.source "DevLauncherPackageDelegate.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/ReactActivityHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->createReactActivityHandlers(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0003H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "expo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityHandlers$1",
        "Lexpo/modules/core/interfaces/ReactActivityHandler;",
        "onDidCreateReactActivityDelegate",
        "Lcom/facebook/react/ReactActivityDelegate;",
        "activity",
        "Lcom/facebook/react/ReactActivity;",
        "delegate",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDidCreateReactActivityDelegate(Lcom/facebook/react/ReactActivity;Lcom/facebook/react/ReactActivityDelegate;)Lcom/facebook/react/ReactActivityDelegate;
    .locals 2
    .param p1, "activity"    # Lcom/facebook/react/ReactActivity;
    .param p2, "delegate"    # Lcom/facebook/react/ReactActivityDelegate;

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherController;->Companion:Lexpo/modules/devlauncher/DevLauncherController$Companion;

    .line 58
    nop

    .line 59
    new-instance v1, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityHandlers$1$onDidCreateReactActivityDelegate$1;

    invoke-direct {v1, p2}, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityHandlers$1$onDidCreateReactActivityDelegate$1;-><init>(Lcom/facebook/react/ReactActivityDelegate;)V

    check-cast v1, Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;

    .line 57
    invoke-virtual {v0, p1, v1}, Lexpo/modules/devlauncher/DevLauncherController$Companion;->wrapReactActivityDelegate(Lcom/facebook/react/ReactActivity;Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;)Lcom/facebook/react/ReactActivityDelegate;

    move-result-object v0

    return-object v0
.end method
