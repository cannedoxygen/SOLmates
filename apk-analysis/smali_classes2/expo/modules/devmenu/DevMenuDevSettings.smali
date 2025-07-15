.class public final Lexpo/modules/devmenu/DevMenuDevSettings;
.super Ljava/lang/Object;
.source "DevMenuDevSettings.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/devmenu/DevMenuDevSettings;",
        "",
        "()V",
        "getDevSettings",
        "Landroid/os/Bundle;",
        "reactHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
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
.field public static final INSTANCE:Lexpo/modules/devmenu/DevMenuDevSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devmenu/DevMenuDevSettings;

    invoke-direct {v0}, Lexpo/modules/devmenu/DevMenuDevSettings;-><init>()V

    sput-object v0, Lexpo/modules/devmenu/DevMenuDevSettings;->INSTANCE:Lexpo/modules/devmenu/DevMenuDevSettings;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDevSettings(Lexpo/interfaces/devmenu/ReactHostWrapper;)Landroid/os/Bundle;
    .locals 17
    .param p1, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-object/from16 v0, p1

    const-string v1, "reactHost"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v1, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;

    sget-object v2, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    check-cast v2, Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    invoke-direct {v1, v2, v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;-><init>(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    .line 10
    .local v1, "devDelegate":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    invoke-virtual {v1}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getDevSettings()Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;

    move-result-object v2

    .line 12
    .local v2, "devSettings":Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;
    invoke-virtual/range {p1 .. p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;->getJSBundleURLForRemoteDebugging()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, ""

    .line 14
    .local v3, "jsBundleURL":Ljava/lang/String;
    :cond_1
    const-string v4, "isJSInspectorAvailable"

    const-string v5, "isPerfMonitorAvailable"

    const-string v6, "isHotLoadingAvailable"

    const-string v7, "isElementInspectorAvailable"

    const-string v8, "isRemoteDebuggingAvailable"

    const-string v9, "isPerfMonitorShown"

    const-string v10, "isHotLoadingEnabled"

    const-string v11, "isElementInspectorShown"

    const-string v12, "isDebuggingRemotely"

    if-eqz v2, :cond_6

    .line 15
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    move-object v15, v14

    .local v15, "$this$getDevSettings_u24lambda_u241":Landroid/os/Bundle;
    const/16 v16, 0x0

    .line 16
    .local v16, "$i$a$-apply-DevMenuDevSettings$getDevSettings$1":I
    invoke-interface {v2}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isRemoteJSDebugEnabled()Z

    move-result v13

    invoke-virtual {v15, v12, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 17
    invoke-interface {v2}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isElementInspectorEnabled()Z

    move-result v12

    invoke-virtual {v15, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    invoke-virtual {v1}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->getDevInternalSettings$expo_dev_menu_debug()Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;

    move-result-object v11

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/facebook/react/devsupport/DevMenuInternalSettingsWrapper;->isHotModuleReplacementEnabled()Z

    move-result v11

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v15, v10, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 19
    invoke-interface {v2}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isFpsDebugEnabled()Z

    move-result v10

    invoke-virtual {v15, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    move-object v9, v3

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x1

    if-lez v9, :cond_3

    move v9, v10

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    invoke-virtual {v15, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    invoke-interface {v2}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isJSDevModeEnabled()Z

    move-result v8

    invoke-virtual {v15, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    invoke-interface {v2}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isJSDevModeEnabled()Z

    move-result v7

    invoke-virtual {v15, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    invoke-interface {v2}, Lcom/facebook/react/modules/debug/interfaces/DeveloperSettings;->isJSDevModeEnabled()Z

    move-result v6

    invoke-virtual {v15, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 24
    nop

    .line 25
    nop

    .line 26
    move-object v5, v15

    .local v5, "$this$getDevSettings_u24lambda_u241_u24lambda_u240":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 27
    .local v6, "$i$a$-run-DevMenuDevSettings$getDevSettings$1$1":I
    invoke-virtual/range {p1 .. p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getJsExecutorName()Ljava/lang/String;

    move-result-object v7

    .line 28
    .local v7, "jsExecutorName":Ljava/lang/String;
    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    const-string v9, "Hermes"

    check-cast v9, Ljava/lang/CharSequence;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v8, v9, v13, v11, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    const-string v9, "V8"

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9, v13, v11, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move v13, v10

    .line 26
    .end local v5    # "$this$getDevSettings_u24lambda_u241_u24lambda_u240":Landroid/os/Bundle;
    .end local v6    # "$i$a$-run-DevMenuDevSettings$getDevSettings$1$1":I
    .end local v7    # "jsExecutorName":Ljava/lang/String;
    :goto_3
    nop

    .line 24
    invoke-virtual {v15, v4, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 31
    nop

    .line 15
    .end local v15    # "$this$getDevSettings_u24lambda_u241":Landroid/os/Bundle;
    .end local v16    # "$i$a$-apply-DevMenuDevSettings$getDevSettings$1":I
    return-object v14

    .line 34
    :cond_6
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    move-object v14, v13

    .local v14, "$this$getDevSettings_u24lambda_u242":Landroid/os/Bundle;
    const/4 v15, 0x0

    .line 35
    .local v15, "$i$a$-apply-DevMenuDevSettings$getDevSettings$2":I
    const/4 v0, 0x0

    invoke-virtual {v14, v12, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 36
    invoke-virtual {v14, v11, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {v14, v10, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 38
    invoke-virtual {v14, v9, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 39
    invoke-virtual {v14, v8, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    invoke-virtual {v14, v7, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 41
    invoke-virtual {v14, v6, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    invoke-virtual {v14, v5, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {v14, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    nop

    .line 34
    .end local v14    # "$this$getDevSettings_u24lambda_u242":Landroid/os/Bundle;
    .end local v15    # "$i$a$-apply-DevMenuDevSettings$getDevSettings$2":I
    return-object v13
.end method
