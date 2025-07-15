.class public final Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1;
.super Ljava/lang/Object;
.source "DevLauncherUpdatesHelper.kt"

# interfaces
.implements Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt;->loadUpdate(Lexpo/modules/updatesinterface/UpdatesInterface;Ljava/util/HashMap;Landroid/content/Context;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherUpdatesHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherUpdatesHelper.kt\nexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00003\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0016J\u0012\u0010\u000f\u001a\u00020\u00032\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016\u00a8\u0006\u0012"
    }
    d2 = {
        "expo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1",
        "Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;",
        "onFailure",
        "",
        "e",
        "Ljava/lang/Exception;",
        "onManifestLoaded",
        "",
        "manifest",
        "Lorg/json/JSONObject;",
        "onProgress",
        "successfulAssetCount",
        "",
        "failedAssetCount",
        "totalAssetCount",
        "onSuccess",
        "update",
        "Lexpo/modules/updatesinterface/UpdatesInterface$Update;",
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
.field final synthetic $cont:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "Lexpo/modules/updatesinterface/UpdatesInterface$Update;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shouldContinue:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .param p1, "$cont"    # Lkotlin/coroutines/Continuation;
    .param p2, "$shouldContinue"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/updatesinterface/UpdatesInterface$Update;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1;->$cont:Lkotlin/coroutines/Continuation;

    iput-object p2, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1;->$shouldContinue:Lkotlin/jvm/functions/Function1;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 28
    iget-object v0, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1;->$cont:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "There was an unexpected error loading the update."

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 29
    return-void
.end method

.method public onManifestLoaded(Lorg/json/JSONObject;)Z
    .locals 2
    .param p1, "manifest"    # Lorg/json/JSONObject;

    const-string v0, "manifest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1;->$shouldContinue:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x1

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1;->$cont:Lkotlin/coroutines/Continuation;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1$onManifestLoaded$1;

    invoke-direct {v1, p1}, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1$onManifestLoaded$1;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x0

    .line 32
    :goto_0
    return v0
.end method

.method public onProgress(III)V
    .locals 0
    .param p1, "successfulAssetCount"    # I
    .param p2, "failedAssetCount"    # I
    .param p3, "totalAssetCount"    # I

    .line 30
    return-void
.end method

.method public onSuccess(Lexpo/modules/updatesinterface/UpdatesInterface$Update;)V
    .locals 4
    .param p1, "update"    # Lexpo/modules/updatesinterface/UpdatesInterface$Update;

    .line 25
    if-eqz p1, :cond_0

    iget-object v0, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUpdatesHelperKt$loadUpdate$2$1;->$cont:Lkotlin/coroutines/Continuation;

    move-object v1, p1

    .line 66
    .local v1, "it":Lexpo/modules/updatesinterface/UpdatesInterface$Update;
    const/4 v2, 0x0

    .line 25
    .local v2, "$i$a$-let-DevLauncherUpdatesHelperKt$loadUpdate$2$1$onSuccess$1":I
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    .line 26
    .end local v1    # "it":Lexpo/modules/updatesinterface/UpdatesInterface$Update;
    .end local v2    # "$i$a$-let-DevLauncherUpdatesHelperKt$loadUpdate$2$1$onSuccess$1":I
    :cond_0
    return-void
.end method
