.class public Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;
.super Ljava/lang/Object;
.source "TurboModuleManager.java"

# interfaces
.implements Lcom/facebook/react/internal/turbomodule/core/interfaces/TurboModuleRegistry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleProvider;,
        Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TurboModuleManager"


# instance fields
.field private final mDelegate:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;

.field private final mEagerInitModuleNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHybridData:Lcom/facebook/jni/HybridData;

.field private final mLegacyModuleProvider:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleProvider;

.field private final mModuleCleanupLock:Ljava/lang/Object;

.field private mModuleCleanupStarted:Z

.field private final mModuleHolders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTurboModuleProvider:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 47
    invoke-static {}, Lcom/facebook/react/internal/turbomodule/core/NativeModuleSoLoader;->maybeLoadSoLibrary()V

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/RuntimeExecutor;Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;Lcom/facebook/react/turbomodule/core/interfaces/NativeMethodCallInvokerHolder;)V
    .locals 2
    .param p1, "runtimeExecutor"    # Lcom/facebook/react/bridge/RuntimeExecutor;
    .param p2, "delegate"    # Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;
    .param p3, "jsCallInvokerHolder"    # Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;
    .param p4, "nativeMethodCallInvokerHolder"    # Lcom/facebook/react/turbomodule/core/interfaces/NativeMethodCallInvokerHolder;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleCleanupLock:Ljava/lang/Object;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleCleanupStarted:Z

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleHolders:Ljava/util/Map;

    .line 69
    iput-object p2, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mDelegate:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;

    .line 70
    move-object v0, p3

    check-cast v0, Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;

    move-object v1, p4

    check-cast v1, Lcom/facebook/react/turbomodule/core/NativeMethodCallInvokerHolderImpl;

    .line 71
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->initHybrid(Lcom/facebook/react/bridge/RuntimeExecutor;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/facebook/react/turbomodule/core/NativeMethodCallInvokerHolderImpl;Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;)Lcom/facebook/jni/HybridData;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mHybridData:Lcom/facebook/jni/HybridData;

    .line 76
    invoke-direct {p0}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->shouldEnableLegacyModuleInterop()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->installJSIBindings(Z)V

    .line 78
    nop

    .line 79
    if-nez p2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;->getEagerInitModuleNames()Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mEagerInitModuleNames:Ljava/util/List;

    .line 81
    new-instance v0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$$ExternalSyntheticLambda0;-><init>()V

    .line 83
    .local v0, "nullProvider":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleProvider;
    nop

    .line 84
    if-nez p2, :cond_1

    .line 85
    move-object v1, v0

    goto :goto_1

    .line 86
    :cond_1
    new-instance v1, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;)V

    :goto_1
    iput-object v1, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mTurboModuleProvider:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleProvider;

    .line 88
    nop

    .line 89
    if-eqz p2, :cond_3

    invoke-direct {p0}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->shouldEnableLegacyModuleInterop()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 91
    :cond_2
    new-instance v1, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;)V

    goto :goto_3

    .line 90
    :cond_3
    :goto_2
    move-object v1, v0

    .line 91
    :goto_3
    iput-object v1, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mLegacyModuleProvider:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleProvider;

    .line 102
    return-void
.end method

.method private getLegacyCxxModule(Ljava/lang/String;)Lcom/facebook/react/bridge/CxxModuleWrapper;
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 158
    invoke-direct {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->isLegacyModule(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 159
    return-object v1

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->getModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    .line 163
    .local v0, "module":Lcom/facebook/react/bridge/NativeModule;
    instance-of v2, v0, Lcom/facebook/react/bridge/CxxModuleWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v0, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    if-nez v2, :cond_1

    .line 164
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/CxxModuleWrapper;

    goto :goto_0

    .line 165
    :cond_1
    nop

    .line 163
    :goto_0
    return-object v1
.end method

.method private getLegacyJavaModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 139
    invoke-direct {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->isLegacyModule(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 140
    return-object v1

    .line 143
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->getModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    .line 144
    .local v0, "module":Lcom/facebook/react/bridge/NativeModule;
    instance-of v2, v0, Lcom/facebook/react/bridge/CxxModuleWrapper;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    if-nez v2, :cond_1

    .line 145
    move-object v1, v0

    goto :goto_0

    .line 146
    :cond_1
    nop

    .line 144
    :goto_0
    return-object v1
.end method

.method private static getMethodDescriptorsFromModule(Lcom/facebook/react/bridge/NativeModule;)Ljava/util/List;
    .locals 1
    .param p0, "module"    # Lcom/facebook/react/bridge/NativeModule;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/NativeModule;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils$MethodDescriptor;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-static {p0}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleInteropUtils;->getMethodDescriptorsFromModule(Lcom/facebook/react/bridge/NativeModule;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateModule(Ljava/lang/String;Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;Z)Lcom/facebook/react/bridge/NativeModule;
    .locals 6
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "moduleHolder"    # Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    .param p3, "shouldPerfLog"    # Z

    .line 263
    const/4 v0, 0x0

    .line 265
    .local v0, "shouldCreateModule":Z
    monitor-enter p2

    .line 266
    :try_start_0
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->isDoneCreatingModule()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    if-eqz p3, :cond_0

    .line 268
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModuleId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->moduleCreateCacheHit(Ljava/lang/String;I)V

    .line 271
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModule()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    monitor-exit p2

    return-object v1

    .line 274
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->isCreatingModule()Z

    move-result v1

    if-nez v1, :cond_2

    .line 276
    const/4 v0, 0x1

    .line 277
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->startCreatingModule()V

    .line 279
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 281
    if-eqz v0, :cond_5

    .line 282
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModuleId()I

    move-result v1

    invoke-static {p1, v1}, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->moduleCreateConstructStart(Ljava/lang/String;I)V

    .line 283
    iget-object v1, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mTurboModuleProvider:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleProvider;

    invoke-interface {v1, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleProvider;->getModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    .line 285
    .local v1, "nativeModule":Lcom/facebook/react/bridge/NativeModule;
    if-nez v1, :cond_3

    .line 286
    iget-object v2, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mLegacyModuleProvider:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleProvider;

    invoke-interface {v2, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleProvider;->getModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v1

    .line 289
    :cond_3
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModuleId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->moduleCreateConstructEnd(Ljava/lang/String;I)V

    .line 290
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModuleId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->moduleCreateSetUpStart(Ljava/lang/String;I)V

    .line 292
    if-eqz v1, :cond_4

    .line 293
    monitor-enter p2

    .line 294
    :try_start_1
    invoke-virtual {p2, v1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->setModule(Lcom/facebook/react/bridge/NativeModule;)V

    .line 295
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    invoke-interface {v1}, Lcom/facebook/react/bridge/NativeModule;->initialize()V

    goto :goto_0

    .line 295
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 304
    :cond_4
    const-string v2, "TurboModuleManager"

    const-string v3, "getOrCreateModule(): Unable to create module \"%s\" (legacy: %b, turbo: %b)"

    .line 308
    invoke-direct {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->isLegacyModule(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 309
    invoke-direct {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->isTurboModule(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {p1, v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 304
    invoke-static {v2, v3, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    :goto_0
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModuleId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->moduleCreateSetUpEnd(Ljava/lang/String;I)V

    .line 313
    monitor-enter p2

    .line 314
    :try_start_3
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->endCreatingModule()V

    .line 315
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 316
    monitor-exit p2

    .line 318
    return-object v1

    .line 316
    :catchall_1
    move-exception v2

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2

    .line 321
    .end local v1    # "nativeModule":Lcom/facebook/react/bridge/NativeModule;
    :cond_5
    monitor-enter p2

    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, "wasInterrupted":Z
    :goto_1
    :try_start_4
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->isCreatingModule()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v2, :cond_6

    .line 326
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 329
    :goto_2
    goto :goto_1

    .line 327
    :catch_0
    move-exception v2

    .line 328
    .local v2, "e":Ljava/lang/InterruptedException;
    const/4 v1, 0x1

    .end local v2    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 332
    :cond_6
    if-eqz v1, :cond_7

    .line 338
    :try_start_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 341
    :cond_7
    invoke-virtual {p2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModule()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v2

    monitor-exit p2

    return-object v2

    .line 342
    .end local v1    # "wasInterrupted":Z
    :catchall_2
    move-exception v1

    monitor-exit p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 279
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1
.end method

.method private getTurboJavaModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 196
    invoke-direct {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->isTurboModule(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 197
    return-object v1

    .line 200
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->getModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    .line 201
    .local v0, "module":Lcom/facebook/react/bridge/NativeModule;
    instance-of v2, v0, Lcom/facebook/react/bridge/CxxModuleWrapper;

    if-nez v2, :cond_1

    instance-of v2, v0, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    if-eqz v2, :cond_1

    .line 202
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    goto :goto_0

    .line 203
    :cond_1
    nop

    .line 201
    :goto_0
    return-object v1
.end method

.method private getTurboLegacyCxxModule(Ljava/lang/String;)Lcom/facebook/react/bridge/CxxModuleWrapper;
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 177
    invoke-direct {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->isTurboModule(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 178
    return-object v1

    .line 181
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->getModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    .line 182
    .local v0, "module":Lcom/facebook/react/bridge/NativeModule;
    instance-of v2, v0, Lcom/facebook/react/bridge/CxxModuleWrapper;

    if-eqz v2, :cond_1

    instance-of v2, v0, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    if-eqz v2, :cond_1

    .line 183
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/bridge/CxxModuleWrapper;

    goto :goto_0

    .line 184
    :cond_1
    nop

    .line 182
    :goto_0
    return-object v1
.end method

.method private native initHybrid(Lcom/facebook/react/bridge/RuntimeExecutor;Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;Lcom/facebook/react/turbomodule/core/NativeMethodCallInvokerHolderImpl;Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;)Lcom/facebook/jni/HybridData;
.end method

.method private native installJSIBindings(Z)V
.end method

.method private isLegacyModule(Ljava/lang/String;)Z
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mDelegate:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mDelegate:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;

    invoke-virtual {v0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;->unstable_isLegacyModuleRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTurboModule(Ljava/lang/String;)Z
    .locals 1
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mDelegate:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mDelegate:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;

    invoke-virtual {v0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;->unstable_isModuleRegistered(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;
    .locals 1
    .param p0, "moduleName"    # Ljava/lang/String;

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$new$1(Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;
    .locals 1
    .param p0, "delegate"    # Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 86
    invoke-virtual {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;->getModule(Ljava/lang/String;)Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/NativeModule;

    return-object v0
.end method

.method static synthetic lambda$new$2(Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;
    .locals 4
    .param p0, "delegate"    # Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;->getLegacyModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    .line 93
    .local v0, "nativeModule":Lcom/facebook/react/bridge/NativeModule;
    if-eqz v0, :cond_0

    .line 95
    instance-of v1, v0, Lcom/facebook/react/turbomodule/core/interfaces/TurboModule;

    xor-int/lit8 v1, v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeModule \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" is a TurboModule"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/infer/annotation/Assertions;->assertCondition(ZLjava/lang/String;)V

    .line 98
    return-object v0

    .line 100
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private shouldEnableLegacyModuleInterop()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mDelegate:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mDelegate:Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;

    invoke-virtual {v0}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManagerDelegate;->unstable_shouldEnableLegacyModuleInterop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getEagerInitModuleNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mEagerInitModuleNames:Ljava/util/List;

    return-object v0
.end method

.method public getModule(Ljava/lang/String;)Lcom/facebook/react/bridge/NativeModule;
    .locals 5
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 216
    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleCleanupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-boolean v1, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleCleanupStarted:Z

    if-eqz v1, :cond_0

    .line 221
    const-string v1, "TurboModuleManager"

    const-string v2, "getModule(): Tried to get module \"%s\", but TurboModuleManager was tearing down (legacy: %b, turbo: %b)"

    .line 226
    invoke-direct {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->isLegacyModule(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 227
    invoke-direct {p0, p1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->isTurboModule(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {p1, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    .line 221
    invoke-static {v1, v2, v3}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleHolders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 236
    iget-object v1, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleHolders:Ljava/util/Map;

    new-instance v2, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;

    invoke-direct {v2}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1
    iget-object v1, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleHolders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;

    .line 240
    .local v1, "moduleHolder":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {v1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModuleId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->moduleCreateStart(Ljava/lang/String;I)V

    .line 243
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->getOrCreateModule(Ljava/lang/String;Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;Z)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    .line 245
    .local v0, "module":Lcom/facebook/react/bridge/NativeModule;
    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {v1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModuleId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->moduleCreateEnd(Ljava/lang/String;I)V

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModuleId()I

    move-result v2

    invoke-static {p1, v2}, Lcom/facebook/react/internal/turbomodule/core/TurboModulePerfLogger;->moduleCreateFail(Ljava/lang/String;I)V

    .line 251
    :goto_0
    return-object v0

    .line 240
    .end local v0    # "module":Lcom/facebook/react/bridge/NativeModule;
    .end local v1    # "moduleHolder":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getModules()Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/react/bridge/NativeModule;",
            ">;"
        }
    .end annotation

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v0, "moduleHolders":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;>;"
    iget-object v1, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleCleanupLock:Ljava/lang/Object;

    monitor-enter v1

    .line 349
    :try_start_0
    iget-object v2, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleHolders:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 350
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v1, "modules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/NativeModule;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;

    .line 354
    .local v3, "moduleHolder":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    monitor-enter v3

    .line 356
    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModule()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 357
    invoke-virtual {v3}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModule()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_0
    monitor-exit v3

    .line 360
    .end local v3    # "moduleHolder":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    goto :goto_0

    .line 359
    .restart local v3    # "moduleHolder":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 362
    .end local v3    # "moduleHolder":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    :cond_1
    return-object v1

    .line 350
    .end local v1    # "modules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/bridge/NativeModule;>;"
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public hasModule(Ljava/lang/String;)Z
    .locals 2
    .param p1, "moduleName"    # Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleCleanupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleHolders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;

    .line 369
    .local v1, "moduleHolder":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 371
    if-eqz v1, :cond_1

    .line 372
    monitor-enter v1

    .line 373
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;->getModule()Lcom/facebook/react/bridge/NativeModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 374
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    .line 376
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 379
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 369
    .end local v1    # "moduleHolder":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public invalidate()V
    .locals 5

    .line 401
    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleCleanupLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleCleanupStarted:Z

    .line 403
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 406
    .local v1, "moduleHolderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 407
    .local v2, "moduleName":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;

    .line 414
    .local v3, "moduleHolder":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->getOrCreateModule(Ljava/lang/String;Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;Z)Lcom/facebook/react/bridge/NativeModule;

    move-result-object v4

    .line 416
    .local v4, "nativeModule":Lcom/facebook/react/bridge/NativeModule;
    if-eqz v4, :cond_0

    .line 417
    invoke-interface {v4}, Lcom/facebook/react/bridge/NativeModule;->invalidate()V

    .line 419
    .end local v1    # "moduleHolderEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;>;"
    .end local v2    # "moduleName":Ljava/lang/String;
    .end local v3    # "moduleHolder":Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager$ModuleHolder;
    .end local v4    # "nativeModule":Lcom/facebook/react/bridge/NativeModule;
    :cond_0
    goto :goto_0

    .line 421
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mModuleHolders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 424
    iget-object v0, p0, Lcom/facebook/react/internal/turbomodule/core/TurboModuleManager;->mHybridData:Lcom/facebook/jni/HybridData;

    invoke-virtual {v0}, Lcom/facebook/jni/HybridData;->resetNative()V

    .line 425
    return-void

    .line 403
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
