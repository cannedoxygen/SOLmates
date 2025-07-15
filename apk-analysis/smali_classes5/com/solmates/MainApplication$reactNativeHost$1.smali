.class public final Lcom/solmates/MainApplication$reactNativeHost$1;
.super Lcom/facebook/react/defaults/DefaultReactNativeHost;
.source "MainApplication.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/solmates/MainApplication;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0007\u001a\u00020\u0008H\u0014J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nH\u0014J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u0003X\u0094D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\r"
    }
    d2 = {
        "com/solmates/MainApplication$reactNativeHost$1",
        "Lcom/facebook/react/defaults/DefaultReactNativeHost;",
        "isHermesEnabled",
        "",
        "()Ljava/lang/Boolean;",
        "isNewArchEnabled",
        "()Z",
        "getJSMainModuleName",
        "",
        "getPackages",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "getUseDeveloperSupport",
        "app_debug"
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
.field private final isHermesEnabled:Z

.field private final isNewArchEnabled:Z


# direct methods
.method constructor <init>(Lcom/solmates/MainApplication;)V
    .locals 1
    .param p1, "$receiver"    # Lcom/solmates/MainApplication;

    .line 23
    move-object v0, p1

    check-cast v0, Landroid/app/Application;

    invoke-direct {p0, v0}, Lcom/facebook/react/defaults/DefaultReactNativeHost;-><init>(Landroid/app/Application;)V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/solmates/MainApplication$reactNativeHost$1;->isHermesEnabled:Z

    .line 23
    return-void
.end method


# virtual methods
.method protected getJSMainModuleName()Ljava/lang/String;
    .locals 1

    .line 31
    const-string v0, ".expo/.virtual-metro-entry"

    return-object v0
.end method

.method protected getPackages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/facebook/react/PackageList;

    move-object v1, p0

    check-cast v1, Lcom/facebook/react/ReactNativeHost;

    invoke-direct {v0, v1}, Lcom/facebook/react/PackageList;-><init>(Lcom/facebook/react/ReactNativeHost;)V

    invoke-virtual {v0}, Lcom/facebook/react/PackageList;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    .line 28
    .local v0, "packages":Ljava/util/ArrayList;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    .line 33
    sget-boolean v0, Lcom/solmates/BuildConfig;->DEBUG:Z

    return v0
.end method

.method protected isHermesEnabled()Ljava/lang/Boolean;
    .locals 1

    .line 36
    iget-boolean v0, p0, Lcom/solmates/MainApplication$reactNativeHost$1;->isHermesEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected isNewArchEnabled()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/solmates/MainApplication$reactNativeHost$1;->isNewArchEnabled:Z

    return v0
.end method
