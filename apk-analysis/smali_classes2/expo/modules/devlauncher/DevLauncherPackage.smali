.class public final Lexpo/modules/devlauncher/DevLauncherPackage;
.super Ljava/lang/Object;
.source "DevLauncherPackage.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/Package;
.implements Lcom/facebook/react/ReactPackage;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016J\u0016\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\n0\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0016J\u0018\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00052\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0016J\u0016\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00052\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J\u001e\u0010\u0014\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00150\u00052\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a8\u0006\u0016"
    }
    d2 = {
        "Lexpo/modules/devlauncher/DevLauncherPackage;",
        "Lexpo/modules/core/interfaces/Package;",
        "Lcom/facebook/react/ReactPackage;",
        "()V",
        "createApplicationLifecycleListeners",
        "",
        "Lexpo/modules/core/interfaces/ApplicationLifecycleListener;",
        "context",
        "Landroid/content/Context;",
        "createNativeModules",
        "Lcom/facebook/react/bridge/NativeModule;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "createReactActivityHandlers",
        "Lexpo/modules/core/interfaces/ReactActivityHandler;",
        "activityContext",
        "createReactActivityLifecycleListeners",
        "Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;",
        "createReactNativeHostHandlers",
        "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
        "createViewManagers",
        "Lcom/facebook/react/uimanager/ViewManager;",
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
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createApplicationLifecycleListeners(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ApplicationLifecycleListener;",
            ">;"
        }
    .end annotation

    .line 19
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->INSTANCE:Lexpo/modules/devlauncher/DevLauncherPackageDelegate;

    invoke-virtual {v0, p1}, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->createApplicationLifecycleListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->INSTANCE:Lexpo/modules/devlauncher/DevLauncherPackageDelegate;

    invoke-virtual {v0, p1}, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createReactActivityHandlers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "activityContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactActivityHandler;",
            ">;"
        }
    .end annotation

    .line 23
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->INSTANCE:Lexpo/modules/devlauncher/DevLauncherPackageDelegate;

    invoke-virtual {v0, p1}, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->createReactActivityHandlers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createReactActivityLifecycleListeners(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "activityContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactActivityLifecycleListener;",
            ">;"
        }
    .end annotation

    .line 21
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->INSTANCE:Lexpo/modules/devlauncher/DevLauncherPackageDelegate;

    invoke-virtual {v0, p1}, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->createReactActivityLifecycleListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createReactNativeHostHandlers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ReactNativeHostHandler;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->INSTANCE:Lexpo/modules/devlauncher/DevLauncherPackageDelegate;

    invoke-virtual {v0, p1}, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->createReactNativeHostHandlers(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager<",
            "**>;>;"
        }
    .end annotation

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
