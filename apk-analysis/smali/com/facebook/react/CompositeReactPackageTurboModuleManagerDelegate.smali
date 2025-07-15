.class public Lcom/facebook/react/CompositeReactPackageTurboModuleManagerDelegate;
.super Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;
.source "CompositeReactPackageTurboModuleManagerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/CompositeReactPackageTurboModuleManagerDelegate$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
    since = "CompositeReactPackageTurboModuleManagerDelegate is deprecated and will be deleted in the future. Please use ReactPackage interface or BaseReactPackage instead."
.end annotation


# direct methods
.method private constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;",
            "Ljava/util/List<",
            "Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;",
            ">;)V"
        }
    .end annotation

    .line 33
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/ReactPackage;>;"
    .local p3, "delegates":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;>;"
    invoke-direct {p0, p1, p2}, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V

    .line 34
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;

    .line 35
    .local v1, "delegate":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;
    invoke-direct {p0, v1}, Lcom/facebook/react/CompositeReactPackageTurboModuleManagerDelegate;->addTurboModuleManagerDelegate(Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;)V

    .line 36
    .end local v1    # "delegate":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;
    goto :goto_0

    .line 37
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Ljava/util/List;Lcom/facebook/react/CompositeReactPackageTurboModuleManagerDelegate-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/CompositeReactPackageTurboModuleManagerDelegate;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private native addTurboModuleManagerDelegate(Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;)V
.end method


# virtual methods
.method protected native initHybrid()Lcom/facebook/jni/HybridData;
.end method
