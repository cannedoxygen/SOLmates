.class public final Lcom/solmates/MainApplication;
.super Landroid/app/Application;
.source "MainApplication.kt"

# interfaces
.implements Lcom/facebook/react/ReactApplication;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\rH\u0016R\u0014\u0010\u0004\u001a\u00020\u00058VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\tX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/solmates/MainApplication;",
        "Landroid/app/Application;",
        "Lcom/facebook/react/ReactApplication;",
        "()V",
        "reactHost",
        "Lcom/facebook/react/ReactHost;",
        "getReactHost",
        "()Lcom/facebook/react/ReactHost;",
        "reactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
        "getReactNativeHost",
        "()Lcom/facebook/react/ReactNativeHost;",
        "onConfigurationChanged",
        "",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "onCreate",
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
.field private final reactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 21
    new-instance v0, Lexpo/modules/ReactNativeHostWrapper;

    .line 22
    move-object v1, p0

    check-cast v1, Landroid/app/Application;

    .line 23
    new-instance v2, Lcom/solmates/MainApplication$reactNativeHost$1;

    invoke-direct {v2, p0}, Lcom/solmates/MainApplication$reactNativeHost$1;-><init>(Lcom/solmates/MainApplication;)V

    check-cast v2, Lcom/facebook/react/ReactNativeHost;

    .line 21
    invoke-direct {v0, v1, v2}, Lexpo/modules/ReactNativeHostWrapper;-><init>(Landroid/app/Application;Lcom/facebook/react/ReactNativeHost;)V

    check-cast v0, Lcom/facebook/react/ReactNativeHost;

    iput-object v0, p0, Lcom/solmates/MainApplication;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    .line 19
    return-void
.end method


# virtual methods
.method public getReactHost()Lcom/facebook/react/ReactHost;
    .locals 3

    .line 41
    sget-object v0, Lexpo/modules/ReactNativeHostWrapper;->Companion:Lexpo/modules/ReactNativeHostWrapper$Companion;

    invoke-virtual {p0}, Lcom/solmates/MainApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getApplicationContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/solmates/MainApplication;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lexpo/modules/ReactNativeHostWrapper$Companion;->createReactHost(Landroid/content/Context;Lcom/facebook/react/ReactNativeHost;)Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method

.method public getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/solmates/MainApplication;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 55
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0, p1}, Lexpo/modules/ApplicationLifecycleDispatcher;->onConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V

    .line 56
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 44
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 45
    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lcom/facebook/react/soloader/OpenSourceMergedSoMapping;->INSTANCE:Lcom/facebook/react/soloader/OpenSourceMergedSoMapping;

    check-cast v1, Lcom/facebook/soloader/ExternalSoMapping;

    invoke-static {v0, v1}, Lcom/facebook/soloader/SoLoader;->init(Landroid/content/Context;Lcom/facebook/soloader/ExternalSoMapping;)V

    .line 46
    nop

    .line 50
    move-object v0, p0

    check-cast v0, Landroid/app/Application;

    invoke-static {v0}, Lexpo/modules/ApplicationLifecycleDispatcher;->onApplicationCreate(Landroid/app/Application;)V

    .line 51
    return-void
.end method
