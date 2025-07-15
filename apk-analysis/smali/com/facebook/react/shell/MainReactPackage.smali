.class public Lcom/facebook/react/shell/MainReactPackage;
.super Lcom/facebook/react/BaseReactPackage;
.source "MainReactPackage.java"

# interfaces
.implements Lcom/facebook/react/ViewManagerOnDemandReactPackage;


# instance fields
.field private mConfig:Lcom/facebook/react/shell/MainPackageConfig;

.field private mViewManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/facebook/react/BaseReactPackage;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/shell/MainPackageConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/facebook/react/shell/MainPackageConfig;

    .line 105
    invoke-direct {p0}, Lcom/facebook/react/BaseReactPackage;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/facebook/react/shell/MainReactPackage;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    .line 107
    return-void
.end method

.method private static appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;",
            "Ljava/lang/String;",
            "Ljavax/inject/Provider<",
            "+",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/bridge/ModuleSpec;>;"
    .local p2, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<+Lcom/facebook/react/bridge/NativeModule;>;"
    invoke-static {p2}, Lcom/facebook/react/bridge/ModuleSpec;->viewManagerSpec(Ljavax/inject/Provider;)Lcom/facebook/react/bridge/ModuleSpec;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method private fallbackForMissingClass()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 15

    .line 285
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-class v3, Lcom/facebook/react/modules/appearance/AppearanceModule;

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-class v3, Lcom/facebook/react/modules/appstate/AppStateModule;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-class v3, Lcom/facebook/react/modules/blob/BlobModule;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-class v3, Lcom/facebook/react/modules/devloading/DevLoadingModule;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-class v3, Lcom/facebook/react/modules/blob/FileReaderModule;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-class v3, Lcom/facebook/react/modules/clipboard/ClipboardModule;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-class v3, Lcom/facebook/react/modules/dialog/DialogModule;

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-class v3, Lcom/facebook/react/modules/fresco/FrescoModule;

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-class v3, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-class v3, Lcom/facebook/react/modules/image/ImageLoaderModule;

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-class v3, Lcom/facebook/react/modules/camera/ImageStoreManager;

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-class v3, Lcom/facebook/react/modules/intent/IntentModule;

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-class v3, Lcom/facebook/react/animated/NativeAnimatedModule;

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-class v3, Lcom/facebook/react/modules/network/NetworkingModule;

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-class v3, Lcom/facebook/react/modules/permissions/PermissionsModule;

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-class v3, Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule;

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-class v3, Lcom/facebook/react/modules/share/ShareModule;

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-class v3, Lcom/facebook/react/modules/statusbar/StatusBarModule;

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const-class v3, Lcom/facebook/react/modules/sound/SoundManagerModule;

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-class v3, Lcom/facebook/react/modules/toast/ToastModule;

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const-class v3, Lcom/facebook/react/modules/vibration/VibrationModule;

    aput-object v3, v0, v1

    const/16 v1, 0x16

    const-class v3, Lcom/facebook/react/modules/websocket/WebSocketModule;

    aput-object v3, v0, v1

    .line 312
    .local v0, "moduleList":[Ljava/lang/Class;, "[Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 313
    .local v1, "reactModuleInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/module/model/ReactModuleInfo;>;"
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 314
    .local v4, "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    const-class v5, Lcom/facebook/react/module/annotations/ReactModule;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Lcom/facebook/react/module/annotations/ReactModule;

    .line 315
    .local v5, "reactModule":Lcom/facebook/react/module/annotations/ReactModule;
    if-eqz v5, :cond_0

    .line 316
    nop

    .line 317
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v6

    new-instance v14, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 319
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->name()Ljava/lang/String;

    move-result-object v8

    .line 320
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    .line 321
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->canOverrideExistingModule()Z

    move-result v10

    .line 322
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->needsEagerInit()Z

    move-result v11

    .line 323
    invoke-interface {v5}, Lcom/facebook/react/module/annotations/ReactModule;->isCxxModule()Z

    move-result v12

    .line 324
    invoke-static {v4}, Lcom/facebook/react/module/model/ReactModuleInfo;->classIsTurboModule(Ljava/lang/Class;)Z

    move-result v13

    move-object v7, v14

    invoke-direct/range {v7 .. v13}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZ)V

    .line 316
    invoke-interface {v1, v6, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .end local v4    # "moduleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/NativeModule;>;"
    .end local v5    # "reactModule":Lcom/facebook/react/module/annotations/ReactModule;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_1
    new-instance v2, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    return-object v2
.end method

.method static synthetic lambda$fallbackForMissingClass$0(Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "reactModuleInfoMap"    # Ljava/util/Map;

    .line 327
    return-object p0
.end method


# virtual methods
.method public createViewManager(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "viewManagerName"    # Ljava/lang/String;

    .line 253
    invoke-virtual {p0}, Lcom/facebook/react/shell/MainReactPackage;->getViewManagersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ModuleSpec;

    .line 254
    .local v0, "spec":Lcom/facebook/react/bridge/ModuleSpec;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ModuleSpec;->getProvider()Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewManager;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v0, "viewManagers":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/uimanager/ViewManager;>;"
    new-instance v1, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;

    invoke-direct {v1}, Lcom/facebook/react/views/drawer/ReactDrawerLayoutManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/scroll/ReactHorizontalScrollContainerViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/progressbar/ReactProgressBarViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    new-instance v1, Lcom/facebook/react/views/scroll/ReactScrollViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/scroll/ReactScrollViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v1, Lcom/facebook/react/views/switchview/ReactSwitchManager;

    invoke-direct {v1}, Lcom/facebook/react/views/switchview/ReactSwitchManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/facebook/react/views/safeareaview/ReactSafeAreaViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/safeareaview/ReactSafeAreaViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v1, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;

    invoke-direct {v1}, Lcom/facebook/react/views/swiperefresh/SwipeRefreshLayoutManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/text/frescosupport/FrescoBasedReactTextInlineImageViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Lcom/facebook/react/views/image/ReactImageManager;

    invoke-direct {v1}, Lcom/facebook/react/views/image/ReactImageManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    new-instance v1, Lcom/facebook/react/views/modal/ReactModalHostManager;

    invoke-direct {v1}, Lcom/facebook/react/views/modal/ReactModalHostManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v1, Lcom/facebook/react/views/text/ReactRawTextManager;

    invoke-direct {v1}, Lcom/facebook/react/views/text/ReactRawTextManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    new-instance v1, Lcom/facebook/react/views/textinput/ReactTextInputManager;

    invoke-direct {v1}, Lcom/facebook/react/views/textinput/ReactTextInputManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lcom/facebook/react/views/text/ReactTextViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/text/ReactTextViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    new-instance v1, Lcom/facebook/react/views/view/ReactViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/view/ReactViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v1, Lcom/facebook/react/views/text/ReactVirtualTextViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/text/ReactVirtualTextViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    new-instance v1, Lcom/facebook/react/views/unimplementedview/ReactUnimplementedViewManager;

    invoke-direct {v1}, Lcom/facebook/react/views/unimplementedview/ReactUnimplementedViewManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-object v0
.end method

.method public getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v0, "Vibration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "NativeAnimatedModule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "ShareModule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "BlobModule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "Networking"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "AppState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "IntentAndroid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "DevToolsSettingsManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "Clipboard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "FrescoModule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "DevLoadingView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "WebSocketModule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "StatusBarManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "AccessibilityInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "Appearance"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_f
    const-string v0, "I18nManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_10
    const-string v0, "ImageLoader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_11
    const-string v0, "PermissionsAndroid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_12
    const-string v0, "FileReaderModule"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_13
    const-string v0, "DialogManagerAndroid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_14
    const-string v0, "SoundManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_15
    const-string v0, "ImageStoreManager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_16
    const-string v0, "ToastAndroid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 159
    return-object v2

    .line 157
    :pswitch_0
    new-instance v0, Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/devtoolssettings/DevToolsSettingsManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 155
    :pswitch_1
    new-instance v0, Lcom/facebook/react/modules/websocket/WebSocketModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/websocket/WebSocketModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 153
    :pswitch_2
    new-instance v0, Lcom/facebook/react/modules/vibration/VibrationModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/vibration/VibrationModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 151
    :pswitch_3
    new-instance v0, Lcom/facebook/react/modules/toast/ToastModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/toast/ToastModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 149
    :pswitch_4
    new-instance v0, Lcom/facebook/react/modules/sound/SoundManagerModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/sound/SoundManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 147
    :pswitch_5
    new-instance v0, Lcom/facebook/react/modules/statusbar/StatusBarModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/statusbar/StatusBarModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 145
    :pswitch_6
    new-instance v0, Lcom/facebook/react/modules/share/ShareModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/share/ShareModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 143
    :pswitch_7
    new-instance v0, Lcom/facebook/react/modules/permissions/PermissionsModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/permissions/PermissionsModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 141
    :pswitch_8
    new-instance v0, Lcom/facebook/react/modules/network/NetworkingModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 139
    :pswitch_9
    new-instance v0, Lcom/facebook/react/animated/NativeAnimatedModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/animated/NativeAnimatedModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 137
    :pswitch_a
    new-instance v0, Lcom/facebook/react/modules/intent/IntentModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/intent/IntentModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 135
    :pswitch_b
    new-instance v0, Lcom/facebook/react/modules/camera/ImageStoreManager;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/camera/ImageStoreManager;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 133
    :pswitch_c
    new-instance v0, Lcom/facebook/react/modules/image/ImageLoaderModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/image/ImageLoaderModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 131
    :pswitch_d
    new-instance v0, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/i18nmanager/I18nManagerModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 129
    :pswitch_e
    new-instance v0, Lcom/facebook/react/modules/fresco/FrescoModule;

    iget-object v3, p0, Lcom/facebook/react/shell/MainReactPackage;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/facebook/react/shell/MainReactPackage;->mConfig:Lcom/facebook/react/shell/MainPackageConfig;

    invoke-virtual {v2}, Lcom/facebook/react/shell/MainPackageConfig;->getFrescoConfig()Lcom/facebook/imagepipeline/core/ImagePipelineConfig;

    move-result-object v2

    :cond_1
    invoke-direct {v0, p2, v1, v2}, Lcom/facebook/react/modules/fresco/FrescoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;ZLcom/facebook/imagepipeline/core/ImagePipelineConfig;)V

    return-object v0

    .line 127
    :pswitch_f
    new-instance v0, Lcom/facebook/react/modules/dialog/DialogModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/dialog/DialogModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 125
    :pswitch_10
    new-instance v0, Lcom/facebook/react/modules/clipboard/ClipboardModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/clipboard/ClipboardModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 123
    :pswitch_11
    new-instance v0, Lcom/facebook/react/modules/blob/FileReaderModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/blob/FileReaderModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 121
    :pswitch_12
    new-instance v0, Lcom/facebook/react/modules/devloading/DevLoadingModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/devloading/DevLoadingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 119
    :pswitch_13
    new-instance v0, Lcom/facebook/react/modules/blob/BlobModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/blob/BlobModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 117
    :pswitch_14
    new-instance v0, Lcom/facebook/react/modules/appstate/AppStateModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/appstate/AppStateModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 115
    :pswitch_15
    new-instance v0, Lcom/facebook/react/modules/appearance/AppearanceModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/appearance/AppearanceModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    .line 113
    :pswitch_16
    new-instance v0, Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;

    invoke-direct {v0, p2}, Lcom/facebook/react/modules/accessibilityinfo/AccessibilityInfoModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e115d98 -> :sswitch_16
        -0x74ffd399 -> :sswitch_15
        -0x6e4e4c42 -> :sswitch_14
        -0x629eae76 -> :sswitch_13
        -0x501dbf35 -> :sswitch_12
        -0x3f4dc695 -> :sswitch_11
        -0x272d42d2 -> :sswitch_10
        -0x21ff2871 -> :sswitch_f
        -0x1e16677c -> :sswitch_e
        -0x1b4a7d04 -> :sswitch_d
        -0x16ced634 -> :sswitch_c
        -0xf2876ed -> :sswitch_b
        -0x5ea6d34 -> :sswitch_a
        0x9baee92 -> :sswitch_9
        0x180dfd76 -> :sswitch_8
        0x1a6bde44 -> :sswitch_7
        0x219d6013 -> :sswitch_6
        0x48cceb10 -> :sswitch_5
        0x5a50c314 -> :sswitch_4
        0x5c43b489 -> :sswitch_3
        0x5cb5e70b -> :sswitch_2
        0x66989206 -> :sswitch_1
        0x72911272 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 3

    .line 259
    const-string v0, "No ReactModuleInfoProvider for com.facebook.react.shell.MainReactPackage$$ReactModuleInfoProvider"

    invoke-static {}, Lcom/facebook/react/common/ClassFinder;->canLoadClassesFromAnnotationProcessors()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/facebook/react/shell/MainReactPackage;->fallbackForMissingClass()Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v0

    return-object v0

    .line 263
    :cond_0
    :try_start_0
    const-string v1, "com.facebook.react.shell.MainReactPackage$$ReactModuleInfoProvider"

    .line 264
    invoke-static {v1}, Lcom/facebook/react/common/ClassFinder;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 266
    .local v1, "reactModuleInfoProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 274
    .end local v1    # "reactModuleInfoProviderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 275
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 269
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 267
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-direct {p0}, Lcom/facebook/react/shell/MainReactPackage;->fallbackForMissingClass()Lcom/facebook/react/module/model/ReactModuleInfoProvider;

    move-result-object v1

    return-object v1
.end method

.method public getViewManagerNames(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/Collection;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcom/facebook/react/shell/MainReactPackage;->getViewManagersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/facebook/react/shell/MainReactPackage;->getViewManagersMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getViewManagersMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ModuleSpec;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/facebook/react/shell/MainReactPackage;->mViewManagers:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 203
    .local v0, "viewManagers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/bridge/ModuleSpec;>;"
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda9;-><init>()V

    const-string v2, "AndroidDrawerLayout"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 204
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda17;-><init>()V

    const-string v2, "AndroidHorizontalScrollView"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 208
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "AndroidHorizontalScrollContentView"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 212
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "AndroidProgressBar"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 214
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda3;-><init>()V

    const-string v2, "RCTSafeAreaView"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 215
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda4;-><init>()V

    const-string v2, "RCTScrollView"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 216
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda5;-><init>()V

    const-string v2, "AndroidSwitch"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 217
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda6;-><init>()V

    const-string v2, "AndroidSwipeRefreshLayout"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 219
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda7;-><init>()V

    const-string v2, "RCTTextInlineImage"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 223
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda8;-><init>()V

    const-string v2, "RCTImageView"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 224
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda10;-><init>()V

    const-string v2, "RCTModalHostView"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 225
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda11;-><init>()V

    const-string v2, "RCTRawText"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 226
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda12;-><init>()V

    const-string v2, "AndroidTextInput"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 227
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda13;-><init>()V

    const-string v2, "RCTText"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 228
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda14;-><init>()V

    const-string v2, "RCTView"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 229
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda15;-><init>()V

    const-string v2, "RCTVirtualText"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 231
    new-instance v1, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/facebook/react/shell/MainReactPackage$$ExternalSyntheticLambda16;-><init>()V

    const-string v2, "UnimplementedNativeView"

    invoke-static {v0, v2, v1}, Lcom/facebook/react/shell/MainReactPackage;->appendMap(Ljava/util/Map;Ljava/lang/String;Ljavax/inject/Provider;)V

    .line 235
    iput-object v0, p0, Lcom/facebook/react/shell/MainReactPackage;->mViewManagers:Ljava/util/Map;

    .line 237
    .end local v0    # "viewManagers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/react/bridge/ModuleSpec;>;"
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/shell/MainReactPackage;->mViewManagers:Ljava/util/Map;

    return-object v0
.end method
