.class public Lcom/facebook/react/config/ReactFeatureFlags;
.super Ljava/lang/Object;
.source "ReactFeatureFlags.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    since = "Use com.facebook.react.internal.featureflags.ReactNativeFeatureFlags instead."
.end annotation


# static fields
.field public static dispatchPointerEvents:Z

.field public static enableBridgelessArchitecture:Z
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "enableBridgelessArchitecture will be deleted in 0.77, please use DefaultNewArchitectureEntryPoint.load() to enable bridgeless architecture instead."
    .end annotation
.end field

.field public static enableCppPropsIteratorSetter:Z

.field public static volatile enableFabricRenderer:Z
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "enableFabricRenderer will be deleted in 0.77, please use DefaultNewArchitectureEntryPoint.load() to enable fabric instead."
    .end annotation
.end field

.field public static volatile useTurboModules:Z
    .annotation runtime Ljava/lang/Deprecated;
        forRemoval = true
        since = "useTurboModules will be deleted in 0.77, please use DefaultNewArchitectureEntryPoint.load() to enable TurboModules instead."
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->useTurboModules:Z

    .line 45
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableFabricRenderer:Z

    .line 57
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableBridgelessArchitecture:Z

    .line 59
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->dispatchPointerEvents:Z

    .line 64
    sput-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->enableCppPropsIteratorSetter:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
