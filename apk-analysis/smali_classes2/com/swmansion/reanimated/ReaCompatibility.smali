.class Lcom/swmansion/reanimated/ReaCompatibility;
.super Ljava/lang/Object;
.source "ReaCompatibility.java"


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 0
    .param p1, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public registerFabricEventListener(Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0
    .param p1, "nodesManager"    # Lcom/swmansion/reanimated/NodesManager;

    .line 9
    return-void
.end method

.method public synchronouslyUpdateUIProps(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 0
    .param p1, "viewTag"    # I
    .param p2, "uiProps"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 11
    return-void
.end method
