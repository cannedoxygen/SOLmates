.class public final Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityHandlers$1$onDidCreateReactActivityDelegate$1;
.super Ljava/lang/Object;
.source "DevLauncherPackageDelegate.kt"

# interfaces
.implements Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityHandlers$1;->onDidCreateReactActivityDelegate(Lcom/facebook/react/ReactActivity;Lcom/facebook/react/ReactActivityDelegate;)Lcom/facebook/react/ReactActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "expo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityHandlers$1$onDidCreateReactActivityDelegate$1",
        "Lexpo/modules/devlauncher/launcher/DevLauncherReactActivityDelegateSupplier;",
        "get",
        "Lcom/facebook/react/ReactActivityDelegate;",
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
.field final synthetic $delegate:Lcom/facebook/react/ReactActivityDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactActivityDelegate;)V
    .locals 0
    .param p1, "$delegate"    # Lcom/facebook/react/ReactActivityDelegate;

    iput-object p1, p0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityHandlers$1$onDidCreateReactActivityDelegate$1;->$delegate:Lcom/facebook/react/ReactActivityDelegate;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Lcom/facebook/react/ReactActivityDelegate;
    .locals 1

    .line 61
    iget-object v0, p0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityHandlers$1$onDidCreateReactActivityDelegate$1;->$delegate:Lcom/facebook/react/ReactActivityDelegate;

    return-object v0
.end method
