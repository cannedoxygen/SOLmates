.class public final Lexpo/modules/devlauncher/DevLauncherPackageDelegate;
.super Ljava/lang/Object;
.source "DevLauncherPackageDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007J\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u00042\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\r0\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007J\u0016\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u00042\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0007J\u0014\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u00042\u0006\u0010\u0006\u001a\u00020\u0007\u00a8\u0006\u0013"
    }
    d2 = {
        "Lexpo/modules/devlauncher/DevLauncherPackageDelegate;",
        "",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/devlauncher/DevLauncherPackageDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;

    invoke-direct {v0}, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;-><init>()V

    sput-object v0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate;->INSTANCE:Lexpo/modules/devlauncher/DevLauncherPackageDelegate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createApplicationLifecycleListeners(Landroid/content/Context;)Ljava/util/List;
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

    .line 33
    new-instance v0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createApplicationLifecycleListeners$1;

    invoke-direct {v0}, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createApplicationLifecycleListeners$1;-><init>()V

    .line 32
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 39
    return-object v0
.end method

.method public final createNativeModules(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 3
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

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/react/bridge/NativeModule;

    new-instance v1, Lexpo/modules/devlauncher/modules/DevLauncherModule;

    invoke-direct {v1, p1}, Lexpo/modules/devlauncher/modules/DevLauncherModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 26
    new-instance v1, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;

    invoke-direct {v1, p1}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 25
    nop

    .line 27
    new-instance v1, Lexpo/modules/devlauncher/modules/DevLauncherDevMenuExtension;

    invoke-direct {v1, p1}, Lexpo/modules/devlauncher/modules/DevLauncherDevMenuExtension;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    nop

    .line 28
    new-instance v1, Lexpo/modules/devlauncher/modules/DevLauncherAuth;

    invoke-direct {v1, p1}, Lexpo/modules/devlauncher/modules/DevLauncherAuth;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 25
    nop

    .line 24
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 29
    return-object v0
.end method

.method public final createReactActivityHandlers(Landroid/content/Context;)Ljava/util/List;
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

    .line 55
    new-instance v0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityHandlers$1;

    invoke-direct {v0}, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityHandlers$1;-><init>()V

    .line 54
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method public final createReactActivityLifecycleListeners(Landroid/content/Context;)Ljava/util/List;
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

    .line 43
    new-instance v0, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityLifecycleListeners$1;

    invoke-direct {v0, p1}, Lexpo/modules/devlauncher/DevLauncherPackageDelegate$createReactActivityLifecycleListeners$1;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 51
    return-object v0
.end method

.method public final createReactNativeHostHandlers(Landroid/content/Context;)Ljava/util/List;
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

    .line 69
    new-instance v0, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler;

    invoke-direct {v0, p1}, Lexpo/modules/devlauncher/react/DevLauncherReactNativeHostHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
