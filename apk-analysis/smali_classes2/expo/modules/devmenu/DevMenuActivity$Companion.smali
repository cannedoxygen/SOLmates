.class public final Lexpo/modules/devmenu/DevMenuActivity$Companion;
.super Ljava/lang/Object;
.source "DevMenuActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/devmenu/DevMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u0004H\u0002R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/devmenu/DevMenuActivity$Companion;",
        "",
        "()V",
        "appWasLoaded",
        "",
        "getAppWasLoaded",
        "()Z",
        "setAppWasLoaded",
        "(Z)V",
        "reactSurface",
        "Lcom/facebook/react/interfaces/fabric/ReactSurface;",
        "rootView",
        "Lcom/facebook/react/ReactRootView;",
        "rootViewWasInitialized",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuActivity$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$rootViewWasInitialized(Lexpo/modules/devmenu/DevMenuActivity$Companion;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/devmenu/DevMenuActivity$Companion;

    .line 162
    invoke-direct {p0}, Lexpo/modules/devmenu/DevMenuActivity$Companion;->rootViewWasInitialized()Z

    move-result v0

    return v0
.end method

.method private final rootViewWasInitialized()Z
    .locals 3

    .line 168
    sget-object v0, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->INSTANCE:Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;

    invoke-virtual {v0}, Lexpo/modules/rncompatibility/ReactNativeFeatureFlags;->getEnableBridgelessArchitecture()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 169
    invoke-static {}, Lexpo/modules/devmenu/DevMenuActivity;->access$getRootView$cp()Lcom/facebook/react/ReactRootView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lexpo/modules/devmenu/DevMenuActivity;->access$getReactSurface$cp()Lcom/facebook/react/interfaces/fabric/ReactSurface;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 171
    :cond_1
    invoke-static {}, Lexpo/modules/devmenu/DevMenuActivity;->access$getRootView$cp()Lcom/facebook/react/ReactRootView;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public final getAppWasLoaded()Z
    .locals 1

    .line 163
    invoke-static {}, Lexpo/modules/devmenu/DevMenuActivity;->access$getAppWasLoaded$cp()Z

    move-result v0

    return v0
.end method

.method public final setAppWasLoaded(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 163
    invoke-static {p1}, Lexpo/modules/devmenu/DevMenuActivity;->access$setAppWasLoaded$cp(Z)V

    return-void
.end method
