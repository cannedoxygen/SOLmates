.class public Lexpo/modules/adapters/react/ReactAdapterPackage;
.super Lexpo/modules/core/BasePackage;
.source "ReactAdapterPackage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lexpo/modules/core/BasePackage;-><init>()V

    return-void
.end method


# virtual methods
.method public createInternalModules(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/InternalModule;",
            ">;"
        }
    .end annotation

    .line 25
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 26
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactContext;
    const/4 v1, 0x3

    new-array v1, v1, [Lexpo/modules/core/interfaces/InternalModule;

    new-instance v2, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;

    invoke-direct {v2, v0}, Lexpo/modules/adapters/react/services/UIManagerModuleWrapper;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lexpo/modules/adapters/react/services/EventEmitterModule;

    invoke-direct {v2, v0}, Lexpo/modules/adapters/react/services/EventEmitterModule;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lexpo/modules/adapters/react/permissions/PermissionsService;

    invoke-direct {v2, v0}, Lexpo/modules/adapters/react/permissions/PermissionsService;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
