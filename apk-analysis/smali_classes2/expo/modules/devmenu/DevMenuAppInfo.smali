.class public final Lexpo/modules/devmenu/DevMenuAppInfo;
.super Ljava/lang/Object;
.source "DevMenuAppInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/devmenu/DevMenuAppInfo;",
        "",
        "()V",
        "getAppInfo",
        "Landroid/os/Bundle;",
        "reactHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "getApplicationIconUri",
        "",
        "expo-dev-menu_debug"
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
.field public static final INSTANCE:Lexpo/modules/devmenu/DevMenuAppInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devmenu/DevMenuAppInfo;

    invoke-direct {v0}, Lexpo/modules/devmenu/DevMenuAppInfo;-><init>()V

    sput-object v0, Lexpo/modules/devmenu/DevMenuAppInfo;->INSTANCE:Lexpo/modules/devmenu/DevMenuAppInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getApplicationIconUri(Lcom/facebook/react/bridge/ReactContext;)Ljava/lang/String;
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 61
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 62
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {p1}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-string v3, "getApplicationInfo(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .local v2, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public final getAppInfo(Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/bridge/ReactContext;)Landroid/os/Bundle;
    .locals 18
    .param p1, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p2, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    move-object/from16 v0, p2

    const-string v1, "reactHost"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/react/bridge/ReactContext;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 12
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/react/bridge/ReactContext;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 13
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 15
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v6, 0x0

    .local v6, "appVersion":Ljava/lang/Object;
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 16
    const/16 v7, 0x80

    invoke-virtual {v1, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    const-string v8, "getApplicationInfo(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .local v7, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v8, 0x0

    .local v8, "appName":Ljava/lang/Object;
    invoke-virtual {v1, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 18
    move-object/from16 v9, p0

    invoke-direct {v9, v0}, Lexpo/modules/devmenu/DevMenuAppInfo;->getApplicationIconUri(Lcom/facebook/react/bridge/ReactContext;)Ljava/lang/String;

    move-result-object v10

    .line 19
    .local v10, "appIcon":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "hostUrl":Ljava/lang/Object;
    invoke-virtual/range {p2 .. p2}, Lcom/facebook/react/bridge/ReactContext;->getSourceURL()Ljava/lang/String;

    move-result-object v11

    .line 20
    const/4 v12, 0x0

    .local v12, "runtimeVersion":Ljava/lang/Object;
    const-string v12, ""

    .line 21
    sget-object v13, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v13}, Lexpo/modules/devmenu/DevMenuManager;->getCurrentManifest()Lexpo/modules/manifests/core/Manifest;

    move-result-object v13

    .line 23
    .local v13, "manifest":Lexpo/modules/manifests/core/Manifest;
    if-eqz v13, :cond_2

    .line 24
    invoke-virtual {v13}, Lexpo/modules/manifests/core/Manifest;->getName()Ljava/lang/String;

    move-result-object v14

    .line 25
    .local v14, "manifestName":Ljava/lang/String;
    if-eqz v14, :cond_0

    .line 26
    move-object v8, v14

    .line 29
    :cond_0
    invoke-virtual {v13}, Lexpo/modules/manifests/core/Manifest;->getVersion()Ljava/lang/String;

    move-result-object v15

    .line 30
    .local v15, "manifestVersion":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 31
    move-object v6, v15

    .line 34
    :cond_1
    instance-of v4, v13, Lexpo/modules/manifests/core/ExpoUpdatesManifest;

    if-eqz v4, :cond_2

    .line 35
    move-object v4, v13

    check-cast v4, Lexpo/modules/manifests/core/ExpoUpdatesManifest;

    invoke-virtual {v4}, Lexpo/modules/manifests/core/ExpoUpdatesManifest;->getRuntimeVersion()Ljava/lang/String;

    move-result-object v12

    .line 39
    .end local v14    # "manifestName":Ljava/lang/String;
    .end local v15    # "manifestVersion":Ljava/lang/String;
    :cond_2
    sget-object v4, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v4}, Lexpo/modules/devmenu/DevMenuManager;->getCurrentManifestURL()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 40
    sget-object v4, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v4}, Lexpo/modules/devmenu/DevMenuManager;->getCurrentManifestURL()Ljava/lang/String;

    move-result-object v11

    .line 43
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getJsExecutorName()Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, "jsExecutorName":Ljava/lang/String;
    nop

    .line 45
    move-object v14, v4

    check-cast v14, Ljava/lang/CharSequence;

    const-string v15, "Hermes"

    move-object v0, v15

    check-cast v0, Ljava/lang/CharSequence;

    move-object/from16 v16, v1

    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .local v16, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object/from16 v17, v3

    const/4 v3, 0x0

    .end local v3    # "packageName":Ljava/lang/String;
    .local v17, "packageName":Ljava/lang/String;
    invoke-static {v14, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 46
    :cond_4
    move-object v0, v4

    check-cast v0, Ljava/lang/CharSequence;

    const-string v15, "V8"

    move-object v14, v15

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v0, v14, v3, v1, v2}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 47
    :cond_5
    const-string v15, "JSC"

    .line 44
    :goto_0
    move-object v0, v15

    .line 50
    .local v0, "engine":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v2, v1

    .local v2, "$this$getAppInfo_u24lambda_u240":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 51
    .local v3, "$i$a$-apply-DevMenuAppInfo$getAppInfo$1":I
    const-string v14, "appVersion"

    invoke-virtual {v2, v14, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v14, "appName"

    invoke-virtual {v2, v14, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v14, "appIcon"

    invoke-virtual {v2, v14, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v14, "runtimeVersion"

    invoke-virtual {v2, v14, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v14, "hostUrl"

    invoke-virtual {v2, v14, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v14, "engine"

    invoke-virtual {v2, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    nop

    .line 50
    .end local v2    # "$this$getAppInfo_u24lambda_u240":Landroid/os/Bundle;
    .end local v3    # "$i$a$-apply-DevMenuAppInfo$getAppInfo$1":I
    return-object v1
.end method
