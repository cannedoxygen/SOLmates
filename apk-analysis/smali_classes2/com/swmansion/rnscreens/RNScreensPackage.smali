.class public final Lcom/swmansion/rnscreens/RNScreensPackage;
.super Lcom/facebook/react/TurboReactPackage;
.source "RNScreensPackage.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/RNScreensPackage$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00112\u00020\u0001:\u0001\u0011B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0005\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u001a\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\tH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/RNScreensPackage;",
        "Lcom/facebook/react/TurboReactPackage;",
        "()V",
        "screenDummyLayoutHelper",
        "Lcom/swmansion/rnscreens/utils/ScreenDummyLayoutHelper;",
        "createViewManagers",
        "",
        "Lcom/facebook/react/uimanager/ViewManager;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "getModule",
        "Lcom/facebook/react/bridge/NativeModule;",
        "s",
        "",
        "reactApplicationContext",
        "getReactModuleInfoProvider",
        "Lcom/facebook/react/module/model/ReactModuleInfoProvider;",
        "Companion",
        "react-native-screens_debug"
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
.field public static final Companion:Lcom/swmansion/rnscreens/RNScreensPackage$Companion;

.field public static final TAG:Ljava/lang/String; = "RNScreensPackage"


# instance fields
.field private screenDummyLayoutHelper:Lcom/swmansion/rnscreens/utils/ScreenDummyLayoutHelper;


# direct methods
.method public static synthetic $r8$lambda$5eN8AiDeddXpZFRlRBo3ug7izkY()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/swmansion/rnscreens/RNScreensPackage;->getReactModuleInfoProvider$lambda$0()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/RNScreensPackage$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/RNScreensPackage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/RNScreensPackage;->Companion:Lcom/swmansion/rnscreens/RNScreensPackage$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/facebook/react/TurboReactPackage;-><init>()V

    return-void
.end method

.method private static final getReactModuleInfoProvider$lambda$0()Ljava/util/Map;
    .locals 11

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    .line 62
    .local v0, "moduleInfos":Ljava/util/Map;
    const/4 v9, 0x0

    .line 63
    .local v9, "isTurboModule":Z
    nop

    .line 64
    new-instance v10, Lcom/facebook/react/module/model/ReactModuleInfo;

    .line 65
    nop

    .line 66
    nop

    .line 67
    nop

    .line 68
    nop

    .line 69
    nop

    .line 70
    nop

    .line 71
    nop

    .line 64
    const-string v2, "RNSModule"

    const-string v3, "RNSModule"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, v10

    move v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/facebook/react/module/model/ReactModuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZZZ)V

    const-string v1, "RNSModule"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object v0
.end method


# virtual methods
.method public createViewManagers(Lcom/facebook/react/bridge/ReactApplicationContext;)Ljava/util/List;
    .locals 3
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

    .line 28
    nop

    .line 34
    sget-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->INSTANCE:Lcom/swmansion/rnscreens/InsetsObserverProxy;

    invoke-virtual {v0, p1}, Lcom/swmansion/rnscreens/InsetsObserverProxy;->registerWithContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 37
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/facebook/react/uimanager/ViewManager;

    new-instance v1, Lcom/swmansion/rnscreens/ScreenContainerViewManager;

    invoke-direct {v1}, Lcom/swmansion/rnscreens/ScreenContainerViewManager;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    new-instance v1, Lcom/swmansion/rnscreens/ScreenViewManager;

    invoke-direct {v1}, Lcom/swmansion/rnscreens/ScreenViewManager;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 37
    nop

    .line 39
    new-instance v1, Lcom/swmansion/rnscreens/ModalScreenViewManager;

    invoke-direct {v1}, Lcom/swmansion/rnscreens/ModalScreenViewManager;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 37
    nop

    .line 40
    new-instance v1, Lcom/swmansion/rnscreens/ScreenStackViewManager;

    invoke-direct {v1}, Lcom/swmansion/rnscreens/ScreenStackViewManager;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 37
    nop

    .line 41
    new-instance v1, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigViewManager;

    invoke-direct {v1}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigViewManager;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 37
    nop

    .line 42
    new-instance v1, Lcom/swmansion/rnscreens/ScreenStackHeaderSubviewManager;

    invoke-direct {v1}, Lcom/swmansion/rnscreens/ScreenStackHeaderSubviewManager;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 37
    nop

    .line 43
    new-instance v1, Lcom/swmansion/rnscreens/SearchBarManager;

    invoke-direct {v1}, Lcom/swmansion/rnscreens/SearchBarManager;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 37
    nop

    .line 44
    new-instance v1, Lcom/swmansion/rnscreens/ScreenFooterManager;

    invoke-direct {v1}, Lcom/swmansion/rnscreens/ScreenFooterManager;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 37
    nop

    .line 45
    new-instance v1, Lcom/swmansion/rnscreens/ScreenContentWrapperManager;

    invoke-direct {v1}, Lcom/swmansion/rnscreens/ScreenContentWrapperManager;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 37
    nop

    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getModule(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;)Lcom/facebook/react/bridge/NativeModule;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactApplicationContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    nop

    .line 54
    const-string v0, "RNSModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/swmansion/rnscreens/ScreensModule;

    invoke-direct {v0, p2}, Lcom/swmansion/rnscreens/ScreensModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    check-cast v0, Lcom/facebook/react/bridge/NativeModule;

    return-object v0

    .line 56
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReactModuleInfoProvider()Lcom/facebook/react/module/model/ReactModuleInfoProvider;
    .locals 1

    new-instance v0, Lcom/swmansion/rnscreens/RNScreensPackage$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/swmansion/rnscreens/RNScreensPackage$$ExternalSyntheticLambda0;-><init>()V

    .line 74
    return-object v0
.end method
