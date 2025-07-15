.class Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
.super Ljava/lang/Object;
.source "TurboModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModuleHolder"
.end annotation


# static fields
.field private static volatile sHolderCount:I


# instance fields
.field private volatile mIsDoneCreatingModule:Z

.field private volatile mIsTryingToCreate:Z

.field private volatile mModule:Lcom/facebook/react/bridge/NativeModule;

.field private volatile mModuleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 431
    const/4 v0, 0x0

    sput v0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->sHolderCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mIsTryingToCreate:Z

    .line 430
    iput-boolean v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mIsDoneCreatingModule:Z

    .line 435
    sget v0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->sHolderCount:I

    iput v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mModuleId:I

    .line 436
    sget v0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->sHolderCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->sHolderCount:I

    .line 437
    return-void
.end method


# virtual methods
.method endCreatingModule()V
    .locals 1

    .line 457
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mIsTryingToCreate:Z

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mIsDoneCreatingModule:Z

    .line 459
    return-void
.end method

.method getModule()Lcom/facebook/react/bridge/NativeModule;
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    return-object v0
.end method

.method getModuleId()I
    .locals 1

    .line 440
    iget v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mModuleId:I

    return v0
.end method

.method isCreatingModule()Z
    .locals 1

    .line 466
    iget-boolean v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mIsTryingToCreate:Z

    return v0
.end method

.method isDoneCreatingModule()Z
    .locals 1

    .line 462
    iget-boolean v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mIsDoneCreatingModule:Z

    return v0
.end method

.method setModule(Lcom/facebook/react/bridge/NativeModule;)V
    .locals 0
    .param p1, "module"    # Lcom/facebook/react/bridge/NativeModule;

    .line 444
    iput-object p1, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mModule:Lcom/facebook/react/bridge/NativeModule;

    .line 445
    return-void
.end method

.method startCreatingModule()V
    .locals 1

    .line 453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->mIsTryingToCreate:Z

    .line 454
    return-void
.end method
