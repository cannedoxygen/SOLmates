.class Lcom/facebook/react/runtime/BridgelessReactContext$BridgelessJSModuleInvocationHandler;
.super Ljava/lang/Object;
.source "BridgelessReactContext.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/runtime/BridgelessReactContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BridgelessJSModuleInvocationHandler"
.end annotation


# instance fields
.field private final mJSModuleInterface:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">;"
        }
    .end annotation
.end field

.field private final mReactHost:Lcom/facebook/react/runtime/ReactHostImpl;


# direct methods
.method public constructor <init>(Lcom/facebook/react/runtime/ReactHostImpl;Ljava/lang/Class;)V
    .locals 0
    .param p1, "reactHost"    # Lcom/facebook/react/runtime/ReactHostImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/runtime/ReactHostImpl;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/facebook/react/bridge/JavaScriptModule;",
            ">;)V"
        }
    .end annotation

    .line 131
    .local p2, "jsModuleInterface":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/facebook/react/bridge/JavaScriptModule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/facebook/react/runtime/BridgelessReactContext$BridgelessJSModuleInvocationHandler;->mReactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    .line 133
    iput-object p2, p0, Lcom/facebook/react/runtime/BridgelessReactContext$BridgelessJSModuleInvocationHandler;->mJSModuleInterface:Ljava/lang/Class;

    .line 134
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 138
    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/facebook/react/bridge/Arguments;->fromJavaArgs([Ljava/lang/Object;)Lcom/facebook/react/bridge/WritableNativeArray;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeArray;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeArray;-><init>()V

    .line 139
    .local v0, "jsArgs":Lcom/facebook/react/bridge/NativeArray;
    :goto_0
    iget-object v1, p0, Lcom/facebook/react/runtime/BridgelessReactContext$BridgelessJSModuleInvocationHandler;->mReactHost:Lcom/facebook/react/runtime/ReactHostImpl;

    iget-object v2, p0, Lcom/facebook/react/runtime/BridgelessReactContext$BridgelessJSModuleInvocationHandler;->mJSModuleInterface:Ljava/lang/Class;

    .line 140
    invoke-static {v2}, Lcom/facebook/react/bridge/JavaScriptModuleRegistry;->getJSModuleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/react/runtime/ReactHostImpl;->callFunctionOnModule(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/NativeArray;)Lcom/facebook/react/runtime/internal/bolts/Task;

    .line 141
    const/4 v1, 0x0

    return-object v1
.end method
