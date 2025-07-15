.class public final Lexpo/interfaces/devmenu/ReactHostWrapper;
.super Ljava/lang/Object;
.source "ReactHostWrapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u000e\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020+J\u0010\u0010,\u001a\u00020)2\u0008\u0008\u0002\u0010-\u001a\u00020\u0016J\u0013\u0010.\u001a\u00020\u00112\u0008\u0010/\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u0008\u00100\u001a\u000201H\u0016J\u000e\u00102\u001a\u00020)2\u0006\u0010*\u001a\u00020+J\u0006\u00103\u001a\u00020)R\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t8F\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0013R\u0017\u0010\u0015\u001a\u00020\u00168F\u00a2\u0006\u000c\u0012\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001aR\u0011\u0010\u001b\u001a\u00020\u001c8F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\u001f\u001a\u00020\u0006X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u00064"
    }
    d2 = {
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "",
        "reactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
        "reactHostProvider",
        "Lkotlin/Function0;",
        "Lcom/facebook/react/ReactHost;",
        "(Lcom/facebook/react/ReactNativeHost;Lkotlin/jvm/functions/Function0;)V",
        "currentReactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "getCurrentReactContext",
        "()Lcom/facebook/react/bridge/ReactContext;",
        "devSupportManager",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "getDevSupportManager",
        "()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "hasInstance",
        "",
        "getHasInstance",
        "()Z",
        "isBridgelessMode",
        "jsExecutorName",
        "",
        "getJsExecutorName$annotations",
        "()V",
        "getJsExecutorName",
        "()Ljava/lang/String;",
        "lifecycleState",
        "Lcom/facebook/react/common/LifecycleState;",
        "getLifecycleState",
        "()Lcom/facebook/react/common/LifecycleState;",
        "reactHost",
        "getReactHost",
        "()Lcom/facebook/react/ReactHost;",
        "setReactHost",
        "(Lcom/facebook/react/ReactHost;)V",
        "getReactNativeHost",
        "()Lcom/facebook/react/ReactNativeHost;",
        "setReactNativeHost",
        "(Lcom/facebook/react/ReactNativeHost;)V",
        "addReactInstanceEventListener",
        "",
        "listener",
        "Lcom/facebook/react/ReactInstanceEventListener;",
        "destroy",
        "reason",
        "equals",
        "other",
        "hashCode",
        "",
        "removeReactInstanceEventListener",
        "start",
        "expo-dev-menu-interface_debug"
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
.field private final isBridgelessMode:Z

.field public reactHost:Lcom/facebook/react/ReactHost;

.field public reactNativeHost:Lcom/facebook/react/ReactNativeHost;


# direct methods
.method public constructor <init>(Lcom/facebook/react/ReactNativeHost;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "reactNativeHost"    # Lcom/facebook/react/ReactNativeHost;
    .param p2, "reactHostProvider"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/ReactNativeHost;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lcom/facebook/react/ReactHost;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reactNativeHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactHostProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    nop

    .line 24
    sget-object v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-virtual {v0}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->getEnableBridgelessArchitecture()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/facebook/react/ReactHost;

    invoke-virtual {p0, v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->setReactHost(Lcom/facebook/react/ReactHost;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value was null."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->setReactNativeHost(Lcom/facebook/react/ReactNativeHost;)V

    .line 29
    :goto_0
    nop

    .line 66
    sget-object v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-virtual {v0}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->getEnableBridgelessArchitecture()Z

    move-result v0

    iput-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    .line 19
    return-void
.end method

.method public static synthetic destroy$default(Lexpo/interfaces/devmenu/ReactHostWrapper;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 107
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "DevLauncher reloading app"

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->destroy(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic getJsExecutorName$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/facebook/react/ReactInstanceEventListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.runtime.ReactHostImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/runtime/ReactHostImpl;

    invoke-virtual {v0, p1}, Lcom/facebook/react/runtime/ReactHostImpl;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/ReactInstanceManager;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 89
    :goto_0
    return-void
.end method

.method public final destroy(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    const-string v0, "reason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/facebook/react/ReactHost;->destroy(Ljava/lang/String;Ljava/lang/Exception;)Lcom/facebook/react/interfaces/TaskInterface;

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->clear()V

    .line 113
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 124
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 125
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 127
    :cond_2
    const-string v1, "null cannot be cast to non-null type expo.interfaces.devmenu.ReactHostWrapper"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lexpo/interfaces/devmenu/ReactHostWrapper;

    .line 129
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lexpo/interfaces/devmenu/ReactHostWrapper;

    invoke-virtual {v3}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 130
    :cond_3
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v1

    move-object v3, p1

    check-cast v3, Lexpo/interfaces/devmenu/ReactHostWrapper;

    invoke-virtual {v3}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 132
    :cond_4
    return v0
.end method

.method public final getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 33
    iget-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/ReactHost;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    .line 33
    :goto_0
    return-object v0
.end method

.method public final getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .locals 1

    .line 59
    iget-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/ReactHost;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0
.end method

.method public final getHasInstance()Z
    .locals 2

    .line 51
    iget-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->hasActiveReactInstance()Z

    move-result v1

    :cond_0
    return v1

    .line 54
    :cond_1
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->hasInstance()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactContext;->hasActiveReactInstance()Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public final getJsExecutorName()Ljava/lang/String;
    .locals 5

    .line 71
    iget-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 73
    const-string v1, "mReactHostDelegate"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const-string v1, "getDeclaredField(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    nop

    .line 74
    .local v0, "reactHostDelegateField":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 75
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type com.facebook.react.runtime.ReactHostDelegate"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/runtime/ReactHostDelegate;

    .line 76
    .local v1, "reactHostDelegate":Lcom/facebook/react/runtime/ReactHostDelegate;
    invoke-interface {v1}, Lcom/facebook/react/runtime/ReactHostDelegate;->getJsRuntimeFactory()Lcom/facebook/react/runtime/JSRuntimeFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "className":Ljava/lang/String;
    const-string v3, "Instance"

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Runtime"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lkotlin/text/StringsKt;->removeSuffix(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 80
    .end local v0    # "reactHostDelegateField":Ljava/lang/reflect/Field;
    .end local v1    # "reactHostDelegate":Lcom/facebook/react/runtime/ReactHostDelegate;
    .end local v2    # "className":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getJsExecutorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getJsExecutorName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getLifecycleState()Lcom/facebook/react/common/LifecycleState;
    .locals 1

    .line 42
    iget-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/react/ReactHost;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->getLifecycleState()Lcom/facebook/react/common/LifecycleState;

    move-result-object v0

    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    :goto_0
    return-object v0
.end method

.method public final getReactHost()Lcom/facebook/react/ReactHost;
    .locals 1

    .line 21
    iget-object v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->reactHost:Lcom/facebook/react/ReactHost;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "reactHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getReactNativeHost()Lcom/facebook/react/ReactNativeHost;
    .locals 1

    .line 20
    iget-object v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "reactNativeHost"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 116
    iget-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->hashCode()I

    move-result v0

    .line 116
    :goto_0
    return v0
.end method

.method public final isBridgelessMode()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    return v0
.end method

.method public final removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/facebook/react/ReactInstanceEventListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.runtime.ReactHostImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/runtime/ReactHostImpl;

    invoke-virtual {v0, p1}, Lcom/facebook/react/runtime/ReactHostImpl;->removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/ReactInstanceManager;->removeReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 97
    :goto_0
    return-void
.end method

.method public final setReactHost(Lcom/facebook/react/ReactHost;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/facebook/react/ReactHost;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->reactHost:Lcom/facebook/react/ReactHost;

    return-void
.end method

.method public final setReactNativeHost(Lcom/facebook/react/ReactNativeHost;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/facebook/react/ReactNativeHost;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    return-void
.end method

.method public final start()V
    .locals 2

    .line 100
    iget-boolean v0, p0, Lexpo/interfaces/devmenu/ReactHostWrapper;->isBridgelessMode:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactHost()Lcom/facebook/react/ReactHost;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.runtime.ReactHostImpl"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/runtime/ReactHostImpl;

    invoke-virtual {v0}, Lcom/facebook/react/runtime/ReactHostImpl;->start()Lcom/facebook/react/interfaces/TaskInterface;

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getReactNativeHost()Lcom/facebook/react/ReactNativeHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactNativeHost;->getReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/ReactInstanceManager;->createReactContextInBackground()V

    .line 105
    :goto_0
    return-void
.end method
