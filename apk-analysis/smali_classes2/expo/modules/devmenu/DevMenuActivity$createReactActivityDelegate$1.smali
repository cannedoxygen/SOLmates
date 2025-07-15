.class public final Lexpo/modules/devmenu/DevMenuActivity$createReactActivityDelegate$1;
.super Lcom/facebook/react/defaults/DefaultReactActivityDelegate;
.source "DevMenuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devmenu/DevMenuActivity;->createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevMenuActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevMenuActivity.kt\nexpo/modules/devmenu/DevMenuActivity$createReactActivityDelegate$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,175:1\n1549#2:176\n1620#2,3:177\n37#3,2:180\n*S KotlinDebug\n*F\n+ 1 DevMenuActivity.kt\nexpo/modules/devmenu/DevMenuActivity$createReactActivityDelegate$1\n*L\n89#1:176\n89#1:177,3\n89#1:180,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u0014J\u0008\u0010\u0004\u001a\u00020\u0005H\u0014J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0014J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0008\u0010\u000e\u001a\u00020\u000bH\u0016\u00a8\u0006\u000f"
    }
    d2 = {
        "expo/modules/devmenu/DevMenuActivity$createReactActivityDelegate$1",
        "Lcom/facebook/react/defaults/DefaultReactActivityDelegate;",
        "createRootView",
        "Lcom/facebook/react/ReactRootView;",
        "getLaunchOptions",
        "Landroid/os/Bundle;",
        "getReactHost",
        "Lcom/facebook/react/ReactHost;",
        "getReactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
        "loadApp",
        "",
        "appKey",
        "",
        "onDestroy",
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


# instance fields
.field final synthetic this$0:Lexpo/modules/devmenu/DevMenuActivity;


# direct methods
.method constructor <init>(Lexpo/modules/devmenu/DevMenuActivity;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "$receiver"    # Lexpo/modules/devmenu/DevMenuActivity;
    .param p2, "$super_call_param$1"    # Ljava/lang/String;
    .param p3, "$super_call_param$2"    # Z

    iput-object p1, p0, Lexpo/modules/devmenu/DevMenuActivity$createReactActivityDelegate$1;->this$0:Lexpo/modules/devmenu/DevMenuActivity;

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/ReactActivity;

    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/react/defaults/DefaultReactActivityDelegate;-><init>(Lcom/facebook/react/ReactActivity;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected createRootView()Lcom/facebook/react/ReactRootView;
    .locals 1

    .line 95
    sget-object v0, Lexpo/modules/devmenu/DevMenuActivity;->Companion:Lexpo/modules/devmenu/DevMenuActivity$Companion;

    invoke-static {v0}, Lexpo/modules/devmenu/DevMenuActivity$Companion;->access$rootViewWasInitialized(Lexpo/modules/devmenu/DevMenuActivity$Companion;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    invoke-static {}, Lexpo/modules/devmenu/DevMenuActivity;->access$getRootView$cp()Lcom/facebook/react/ReactRootView;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "rootView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return-object v0

    .line 98
    :cond_1
    invoke-super {p0}, Lcom/facebook/react/defaults/DefaultReactActivityDelegate;->createRootView()Lcom/facebook/react/ReactRootView;

    move-result-object v0

    return-object v0
.end method

.method protected getLaunchOptions()Landroid/os/Bundle;
    .locals 12

    .line 83
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lexpo/modules/devmenu/DevMenuActivity$createReactActivityDelegate$1;->this$0:Lexpo/modules/devmenu/DevMenuActivity;

    move-object v2, v0

    .local v2, "$this$getLaunchOptions_u24lambda_u241":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 84
    .local v3, "$i$a$-apply-DevMenuActivity$createReactActivityDelegate$1$getLaunchOptions$1":I
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uuid"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget-object v4, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v4}, Lexpo/modules/devmenu/DevMenuManager;->getAppInfo()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "appInfo"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 86
    sget-object v4, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v4}, Lexpo/modules/devmenu/DevMenuManager;->getDevSettings()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "devSettings"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 87
    sget-object v4, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v4}, Lexpo/modules/devmenu/DevMenuManager;->getMenuPreferences()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "menuPreferences"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 88
    invoke-static {v1}, Lexpo/modules/devmenu/DevMenuActivity;->access$isEmulator(Lexpo/modules/devmenu/DevMenuActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v4, "isDevice"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    sget-object v1, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v1}, Lexpo/modules/devmenu/DevMenuManager;->getRegisteredCallbacks()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 176
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v1

    .local v6, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 177
    .local v7, "$i$f$mapTo":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 178
    .local v9, "item$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lexpo/modules/devmenu/DevMenuManager$Callback;

    .local v10, "it":Lexpo/modules/devmenu/DevMenuManager$Callback;
    const/4 v11, 0x0

    .line 89
    .local v11, "$i$a$-map-DevMenuActivity$createReactActivityDelegate$1$getLaunchOptions$1$1":I
    invoke-virtual {v10}, Lexpo/modules/devmenu/DevMenuManager$Callback;->getName()Ljava/lang/String;

    move-result-object v10

    .line 178
    .end local v10    # "it":Lexpo/modules/devmenu/DevMenuManager$Callback;
    .end local v11    # "$i$a$-map-DevMenuActivity$createReactActivityDelegate$1$getLaunchOptions$1$1":I
    invoke-interface {v5, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 179
    .end local v9    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$mapTo":I
    check-cast v5, Ljava/util/List;

    .line 176
    nop

    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$map":I
    check-cast v5, Ljava/util/Collection;

    .line 89
    move-object v1, v5

    .local v1, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v4, 0x0

    .line 180
    .local v4, "$i$f$toTypedArray":I
    nop

    .line 181
    .local v5, "thisCollection$iv":Ljava/util/Collection;
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v4    # "$i$f$toTypedArray":I
    .end local v5    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v1, [Ljava/lang/String;

    .line 89
    const-string v4, "registeredCallbacks"

    invoke-virtual {v2, v4, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 90
    nop

    .line 83
    .end local v2    # "$this$getLaunchOptions_u24lambda_u241":Landroid/os/Bundle;
    .end local v3    # "$i$a$-apply-DevMenuActivity$createReactActivityDelegate$1$getLaunchOptions$1":I
    nop

    .line 90
    return-object v0
.end method

.method public getReactHost()Lcom/facebook/react/ReactHost;
    .locals 2

    .line 81
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0}, Lexpo/modules/devmenu/DevMenuManager;->getMenuHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 2

    .line 79
    sget-object v0, Lexpo/modules/devmenu/DevMenuManager;->INSTANCE:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v0}, Lexpo/modules/devmenu/DevMenuManager;->getMenuHost()Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected loadApp(Ljava/lang/String;)V
    .locals 7
    .param p1, "appKey"    # Ljava/lang/String;

    const-class v0, Lcom/facebook/react/ReactActivityDelegate;

    .line 44
    const-string v1, "mReactDelegate"

    invoke-static {v0, v1, p0}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->getPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/ReactDelegate;

    .line 43
    nop

    .line 48
    .local v0, "reactDelegate":Lcom/facebook/react/ReactDelegate;
    sget-object v1, Lexpo/modules/devmenu/DevMenuActivity;->Companion:Lexpo/modules/devmenu/DevMenuActivity$Companion;

    invoke-virtual {v1}, Lexpo/modules/devmenu/DevMenuActivity$Companion;->getAppWasLoaded()Z

    move-result v1

    const-string v2, "mReactSurface"

    if-nez v1, :cond_1

    .line 49
    invoke-super {p0, p1}, Lcom/facebook/react/defaults/DefaultReactActivityDelegate;->loadApp(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Lcom/facebook/react/ReactDelegate;->getReactRootView()Lcom/facebook/react/ReactRootView;

    move-result-object v1

    .line 51
    .local v1, "reactRootView":Lcom/facebook/react/ReactRootView;
    sget-object v3, Lexpo/modules/devmenu/DevMenuActivity;->Companion:Lexpo/modules/devmenu/DevMenuActivity$Companion;

    invoke-static {v3}, Lexpo/modules/devmenu/DevMenuActivity$Companion;->access$rootViewWasInitialized(Lexpo/modules/devmenu/DevMenuActivity$Companion;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 52
    sget-object v3, Lexpo/modules/devmenu/DevMenuActivity;->Companion:Lexpo/modules/devmenu/DevMenuActivity$Companion;

    invoke-static {v1}, Lexpo/modules/devmenu/DevMenuActivity;->access$setRootView$cp(Lcom/facebook/react/ReactRootView;)V

    .line 53
    sget-object v3, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-virtual {v3}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->getEnableBridgelessArchitecture()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    sget-object v3, Lexpo/modules/devmenu/DevMenuActivity;->Companion:Lexpo/modules/devmenu/DevMenuActivity$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 55
    nop

    .line 54
    invoke-static {v3, v2, v0}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->getPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/interfaces/fabric/ReactSurface;

    invoke-static {v2}, Lexpo/modules/devmenu/DevMenuActivity;->access$setReactSurface$cp(Lcom/facebook/react/interfaces/fabric/ReactSurface;)V

    .line 59
    :cond_0
    sget-object v2, Lexpo/modules/devmenu/DevMenuActivity;->Companion:Lexpo/modules/devmenu/DevMenuActivity$Companion;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lexpo/modules/devmenu/DevMenuActivity$Companion;->setAppWasLoaded(Z)V

    .line 60
    return-void

    .end local v1    # "reactRootView":Lcom/facebook/react/ReactRootView;
    :cond_1
    const-class v1, Lcom/facebook/react/ReactDelegate;

    .line 64
    invoke-static {}, Lcom/facebook/react/defaults/DefaultNewArchitectureEntryPoint;->getFabricEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "mFabricEnabled"

    invoke-static {v1, v4, v0, v3}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->setPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-class v1, Lcom/facebook/react/ReactDelegate;

    .line 66
    invoke-static {}, Lexpo/modules/devmenu/DevMenuActivity;->access$getRootView$cp()Lcom/facebook/react/ReactRootView;

    move-result-object v3

    const-string v4, "rootView"

    const/4 v5, 0x0

    if-nez v3, :cond_2

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_2
    const-string v6, "mReactRootView"

    invoke-static {v1, v6, v0, v3}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->setPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    sget-object v1, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-virtual {v1}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->getEnableBridgelessArchitecture()Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Lcom/facebook/react/ReactDelegate;

    .line 69
    invoke-static {}, Lexpo/modules/devmenu/DevMenuActivity;->access$getReactSurface$cp()Lcom/facebook/react/interfaces/fabric/ReactSurface;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, "reactSurface"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v3, v5

    :cond_3
    invoke-static {v1, v2, v0, v3}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->setPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    :cond_4
    invoke-static {}, Lexpo/modules/devmenu/DevMenuActivity;->access$getRootView$cp()Lcom/facebook/react/ReactRootView;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v5

    :cond_5
    invoke-virtual {v1}, Lcom/facebook/react/ReactRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_6

    check-cast v1, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_6
    move-object v1, v5

    :goto_0
    if-eqz v1, :cond_8

    invoke-static {}, Lexpo/modules/devmenu/DevMenuActivity;->access$getRootView$cp()Lcom/facebook/react/ReactRootView;

    move-result-object v2

    if-nez v2, :cond_7

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v5, v2

    :goto_1
    check-cast v5, Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 76
    :cond_8
    invoke-virtual {p0}, Lexpo/modules/devmenu/DevMenuActivity$createReactActivityDelegate$1;->getPlainActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/react/ReactDelegate;->getReactRootView()Lcom/facebook/react/ReactRootView;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 40
    return-void
.end method
