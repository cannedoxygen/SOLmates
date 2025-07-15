.class public final Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;
.super Lcom/facebook/react/devsupport/DevServerHelper;
.source "DevLauncherDevServerHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherDevServerHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherDevServerHelper.kt\ncom/facebook/react/devsupport/DevLauncherDevServerHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1603#2,9:102\n1855#2:111\n1856#2:113\n1612#2:114\n1#3:112\n*S KotlinDebug\n*F\n+ 1 DevLauncherDevServerHelper.kt\ncom/facebook/react/devsupport/DevLauncherDevServerHelper\n*L\n54#1:102,9\n54#1:111\n54#1:113\n54#1:114\n54#1:112\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0012\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0014\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0015\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0016J\u0012\u0010\u0017\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;",
        "Lcom/facebook/react/devsupport/DevServerHelper;",
        "context",
        "Landroid/content/Context;",
        "controller",
        "Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;",
        "devSettings",
        "Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;",
        "packagerConnection",
        "Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;",
        "(Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;)V",
        "httpClient",
        "Lokhttp3/OkHttpClient;",
        "getHttpClient",
        "()Lokhttp3/OkHttpClient;",
        "httpClient$delegate",
        "Lkotlin/Lazy;",
        "getDevServerBundleURL",
        "",
        "jsModulePath",
        "getDevServerSplitBundleURL",
        "getSourceMapUrl",
        "mainModuleName",
        "getSourceUrl",
        "isPackagerRunning",
        "",
        "callback",
        "Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;",
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
.field private final controller:Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

.field private final httpClient$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "controller"    # Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;
    .param p3, "devSettings"    # Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    .param p4, "packagerConnection"    # Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devSettings"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packagerConnection"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p3, p1, p4}, Lcom/facebook/react/devsupport/DevServerHelper;-><init>(Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;Landroid/content/Context;Lcom/facebook/react/packagerconnection/PackagerConnectionSettings;)V

    .line 23
    iput-object p2, p0, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;->controller:Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    .line 28
    sget-object v0, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper$httpClient$2;->INSTANCE:Lcom/facebook/react/devsupport/DevLauncherDevServerHelper$httpClient$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;->httpClient$delegate:Lkotlin/Lazy;

    .line 21
    return-void
.end method

.method private final getHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;->httpClient$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/OkHttpClient;

    return-object v0
.end method


# virtual methods
.method public getDevServerBundleURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "jsModulePath"    # Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;->controller:Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getBundleURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDevServerBundleURL(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getDevServerSplitBundleURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "jsModulePath"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;->controller:Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getBundleURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->getDevServerSplitBundleURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDevServerSplitBundleURL(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getSourceMapUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "mainModuleName"    # Ljava/lang/String;

    .line 49
    invoke-super/range {p0 .. p1}, Lcom/facebook/react/devsupport/DevServerHelper;->getSourceMapUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "defaultValue":Ljava/lang/String;
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;->controller:Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lexpo/modules/manifests/core/Manifest;->getBundleURL()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 53
    .local v2, "bundleURL":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 54
    .local v3, "parsedURL":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    const-string v5, "getQueryParameterNames(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/Iterable;

    .local v4, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 102
    .local v5, "$i$f$mapNotNull":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .local v6, "destination$iv$iv":Ljava/util/Collection;
    move-object v7, v4

    .local v7, "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 110
    .local v8, "$i$f$mapNotNullTo":I
    move-object v9, v7

    .local v9, "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 111
    .local v10, "$i$f$forEach":I
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv$iv$iv":Ljava/lang/Object;
    move-object v13, v12

    .local v13, "element$iv$iv":Ljava/lang/Object;
    const/4 v14, 0x0

    .line 110
    .local v14, "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    move-object v15, v13

    check-cast v15, Ljava/lang/String;

    .local v15, "key":Ljava/lang/String;
    const/16 v16, 0x0

    .line 55
    .local v16, "$i$a$-mapNotNull-DevLauncherDevServerHelper$getSourceMapUrl$customOptions$1":I
    invoke-static {v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x2

    move-object/from16 v17, v2

    .end local v2    # "bundleURL":Ljava/lang/String;
    .local v17, "bundleURL":Ljava/lang/String;
    const-string v2, "transform"

    move-object/from16 v18, v4

    .end local v4    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .local v18, "$this$mapNotNull$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    move/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "$i$f$mapNotNull":I
    .local v19, "$i$f$mapNotNull":I
    invoke-static {v15, v2, v5, v1, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 56
    invoke-virtual {v3, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v15, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_2
    nop

    .line 55
    :goto_1
    nop

    .line 110
    .end local v15    # "key":Ljava/lang/String;
    .end local v16    # "$i$a$-mapNotNull-DevLauncherDevServerHelper$getSourceMapUrl$customOptions$1":I
    if-eqz v4, :cond_3

    move-object v1, v4

    .line 112
    .local v1, "it$iv$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 110
    .local v2, "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    invoke-interface {v6, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 111
    .end local v1    # "it$iv$iv":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-CollectionsKt___CollectionsKt$mapNotNullTo$1$1$iv$iv":I
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "$i$a$-forEach-CollectionsKt___CollectionsKt$mapNotNullTo$1$iv$iv":I
    :cond_3
    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v4, v18

    move/from16 v5, v19

    .end local v12    # "element$iv$iv$iv":Ljava/lang/Object;
    goto :goto_0

    .line 113
    .end local v17    # "bundleURL":Ljava/lang/String;
    .end local v18    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$mapNotNull":I
    .local v2, "bundleURL":Ljava/lang/String;
    .restart local v4    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .restart local v5    # "$i$f$mapNotNull":I
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move/from16 v19, v5

    .line 114
    .end local v2    # "bundleURL":Ljava/lang/String;
    .end local v4    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapNotNull":I
    .end local v9    # "$this$forEach$iv$iv$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$forEach":I
    .restart local v17    # "bundleURL":Ljava/lang/String;
    .restart local v18    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .restart local v19    # "$i$f$mapNotNull":I
    nop

    .end local v6    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$mapNotNullTo$iv$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$mapNotNullTo":I
    move-object v1, v6

    check-cast v1, Ljava/util/List;

    .line 102
    nop

    .end local v18    # "$this$mapNotNull$iv":Ljava/lang/Iterable;
    .end local v19    # "$i$f$mapNotNull":I
    check-cast v1, Ljava/util/Collection;

    .line 60
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    .line 61
    .local v1, "$i$a$-ifEmpty-DevLauncherDevServerHelper$getSourceMapUrl$customOptions$2":I
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 60
    .end local v1    # "$i$a$-ifEmpty-DevLauncherDevServerHelper$getSourceMapUrl$customOptions$2":I
    :cond_5
    check-cast v1, Ljava/util/List;

    .line 54
    nop

    .line 64
    .local v1, "customOptions":Ljava/util/List;
    move-object v4, v1

    check-cast v4, Ljava/lang/Iterable;

    const-string v2, "&"

    move-object v5, v2

    check-cast v5, Ljava/lang/CharSequence;

    sget-object v6, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper$getSourceMapUrl$customOptionsString$1;->INSTANCE:Lcom/facebook/react/devsupport/DevLauncherDevServerHelper$getSourceMapUrl$customOptionsString$1;

    move-object v10, v6

    check-cast v10, Lkotlin/jvm/functions/Function1;

    const/16 v11, 0x1e

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "customOptionsString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 51
    .end local v1    # "customOptions":Ljava/util/List;
    .end local v3    # "parsedURL":Landroid/net/Uri;
    .end local v4    # "customOptionsString":Ljava/lang/String;
    .end local v17    # "bundleURL":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getSourceUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "mainModuleName"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;->controller:Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getBundleURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->getSourceUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getSourceUrl(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;->controller:Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lexpo/modules/devlauncher/launcher/DevLauncherControllerInterface;->getManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lexpo/modules/manifests/core/Manifest;->getBundleURL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 76
    .local v0, "bundleURL":Ljava/lang/String;
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 77
    .local v1, "bundleUri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 78
    const-string v3, "status"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    nop

    .line 82
    .local v2, "statusUrl":Ljava/lang/String;
    new-instance v3, Lokhttp3/Request$Builder;

    invoke-direct {v3}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v3, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 83
    .local v3, "request":Lokhttp3/Request;
    invoke-direct {p0}, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper;->getHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v4

    .line 84
    invoke-virtual {v4, v3}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    .line 85
    new-instance v5, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper$isPackagerRunning$1;

    invoke-direct {v5, p1}, Lcom/facebook/react/devsupport/DevLauncherDevServerHelper$isPackagerRunning$1;-><init>(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    check-cast v5, Lokhttp3/Callback;

    invoke-interface {v4, v5}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 99
    return-void

    .line 75
    .end local v0    # "bundleURL":Ljava/lang/String;
    .end local v1    # "bundleUri":Landroid/net/Uri;
    .end local v2    # "statusUrl":Ljava/lang/String;
    .end local v3    # "request":Lokhttp3/Request;
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/facebook/react/devsupport/DevServerHelper;->isPackagerRunning(Lcom/facebook/react/devsupport/interfaces/PackagerStatusCallback;)V

    return-void
.end method
