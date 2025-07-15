.class public final Lexpo/modules/kotlin/RuntimeContext;
.super Ljava/lang/Object;
.source "RuntimeContext.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRuntimeContext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuntimeContext.kt\nexpo/modules/kotlin/RuntimeContext\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 KotlinUtilities.kt\nexpo/modules/core/utilities/KotlinUtilitiesKt\n*L\n1#1,112:1\n14#2:113\n25#2:114\n27#3,3:115\n31#3:120\n1#4:118\n12#5:119\n*S KotlinDebug\n*F\n+ 1 RuntimeContext.kt\nexpo/modules/kotlin/RuntimeContext\n*L\n74#1:113\n74#1:114\n74#1:115,3\n74#1:120\n80#1:119\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000j\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u0006\u0010+\u001a\u00020,J\u000e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200J\u0006\u00101\u001a\u00020,J\u0008\u00102\u001a\u000203H\u0002R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u00038F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u00020\u000cX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u0015\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0019X\u0080.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u0004\u0018\u00010\u00068\u00c6\u0002\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010#\u001a\u00020$\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010&R\u0014\u0010\'\u001a\u00020(X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008)\u0010*\u00a8\u00064"
    }
    d2 = {
        "Lexpo/modules/kotlin/RuntimeContext;",
        "",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "reactContextHolder",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V",
        "getAppContext",
        "()Lexpo/modules/kotlin/AppContext;",
        "appContextHolder",
        "classRegistry",
        "Lexpo/modules/kotlin/sharedobjects/ClassRegistry;",
        "getClassRegistry$expo_modules_core_debug",
        "()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;",
        "coreModule",
        "Lexpo/modules/kotlin/ModuleHolder;",
        "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
        "getCoreModule$expo_modules_core_debug",
        "()Lexpo/modules/kotlin/ModuleHolder;",
        "jniDeallocator",
        "Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "getJniDeallocator",
        "()Lexpo/modules/kotlin/jni/JNIDeallocator;",
        "jsiContext",
        "Lexpo/modules/kotlin/jni/JSIContext;",
        "getJsiContext$expo_modules_core_debug",
        "()Lexpo/modules/kotlin/jni/JSIContext;",
        "setJsiContext$expo_modules_core_debug",
        "(Lexpo/modules/kotlin/jni/JSIContext;)V",
        "reactContext",
        "getReactContext",
        "()Lcom/facebook/react/bridge/ReactApplicationContext;",
        "getReactContextHolder",
        "()Ljava/lang/ref/WeakReference;",
        "registry",
        "Lexpo/modules/kotlin/ModuleRegistry;",
        "getRegistry",
        "()Lexpo/modules/kotlin/ModuleRegistry;",
        "sharedObjectRegistry",
        "Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;",
        "getSharedObjectRegistry$expo_modules_core_debug",
        "()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;",
        "deallocate",
        "",
        "eval",
        "Lexpo/modules/kotlin/jni/JavaScriptValue;",
        "source",
        "",
        "installJSIContext",
        "isJSIContextInitialized",
        "",
        "expo-modules-core_debug"
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
.field private final appContextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/kotlin/AppContext;",
            ">;"
        }
    .end annotation
.end field

.field private final classRegistry:Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

.field private final coreModule:Lexpo/modules/kotlin/ModuleHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/ModuleHolder<",
            "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
            ">;"
        }
    .end annotation
.end field

.field private final jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

.field public jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

.field private final reactContextHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation
.end field

.field private final registry:Lexpo/modules/kotlin/ModuleRegistry;

.field private final sharedObjectRegistry:Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/AppContext;Ljava/lang/ref/WeakReference;)V
    .locals 5
    .param p1, "appContext"    # Lexpo/modules/kotlin/AppContext;
    .param p2, "reactContextHolder"    # Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/AppContext;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "appContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContextHolder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lexpo/modules/kotlin/RuntimeContext;->reactContextHolder:Ljava/lang/ref/WeakReference;

    .line 23
    invoke-static {p1}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->appContextHolder:Ljava/lang/ref/WeakReference;

    .line 31
    new-instance v0, Lexpo/modules/kotlin/ModuleRegistry;

    invoke-static {p0}, Lexpo/modules/kotlin/UtilsKt;->weak(Ljava/lang/Object;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-direct {v0, v1}, Lexpo/modules/kotlin/ModuleRegistry;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    .line 51
    move-object v0, p0

    check-cast v0, Lexpo/modules/kotlin/RuntimeContext;

    .local v0, "$this$coreModule_u24lambda_u240":Lexpo/modules/kotlin/RuntimeContext;
    const/4 v1, 0x0

    .line 52
    .local v1, "$i$a$-run-RuntimeContext$coreModule$1":I
    new-instance v2, Lexpo/modules/kotlin/defaultmodules/CoreModule;

    invoke-direct {v2}, Lexpo/modules/kotlin/defaultmodules/CoreModule;-><init>()V

    .line 53
    .local v2, "module":Lexpo/modules/kotlin/defaultmodules/CoreModule;
    invoke-virtual {v2, v0}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->set_runtimeContext$expo_modules_core_debug(Lexpo/modules/kotlin/RuntimeContext;)V

    .line 54
    new-instance v3, Lexpo/modules/kotlin/ModuleHolder;

    move-object v4, v2

    check-cast v4, Lexpo/modules/kotlin/modules/Module;

    invoke-direct {v3, v4}, Lexpo/modules/kotlin/ModuleHolder;-><init>(Lexpo/modules/kotlin/modules/Module;)V

    .line 51
    .end local v0    # "$this$coreModule_u24lambda_u240":Lexpo/modules/kotlin/RuntimeContext;
    .end local v1    # "$i$a$-run-RuntimeContext$coreModule$1":I
    .end local v2    # "module":Lexpo/modules/kotlin/defaultmodules/CoreModule;
    iput-object v3, p0, Lexpo/modules/kotlin/RuntimeContext;->coreModule:Lexpo/modules/kotlin/ModuleHolder;

    .line 57
    new-instance v0, Lexpo/modules/kotlin/jni/JNIDeallocator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/kotlin/jni/JNIDeallocator;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    .line 59
    new-instance v0, Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    invoke-direct {v0, p0}, Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;-><init>(Lexpo/modules/kotlin/RuntimeContext;)V

    iput-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->sharedObjectRegistry:Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    .line 61
    new-instance v0, Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    invoke-direct {v0}, Lexpo/modules/kotlin/sharedobjects/ClassRegistry;-><init>()V

    iput-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->classRegistry:Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    .line 19
    return-void
.end method

.method private final isJSIContextInitialized()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public final deallocate()V
    .locals 2

    .line 108
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->coreModule:Lexpo/modules/kotlin/ModuleHolder;

    invoke-virtual {v0}, Lexpo/modules/kotlin/ModuleHolder;->getModule()Lexpo/modules/kotlin/modules/Module;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/defaultmodules/CoreModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/defaultmodules/CoreModule;->set_runtimeContext$expo_modules_core_debug(Lexpo/modules/kotlin/RuntimeContext;)V

    .line 109
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    invoke-virtual {v0}, Lexpo/modules/kotlin/jni/JNIDeallocator;->deallocate$expo_modules_core_debug()Lkotlin/Unit;

    .line 110
    return-void
.end method

.method public final eval(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lexpo/modules/kotlin/RuntimeContext;->getJsiContext$expo_modules_core_debug()Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/jni/JSIContext;->evaluateScript(Ljava/lang/String;)Lexpo/modules/kotlin/jni/JavaScriptValue;

    move-result-object v0

    return-object v0
.end method

.method public final getAppContext()Lexpo/modules/kotlin/AppContext;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->appContextHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/AppContext;

    return-object v0
.end method

.method public final getClassRegistry$expo_modules_core_debug()Lexpo/modules/kotlin/sharedobjects/ClassRegistry;
    .locals 1

    .line 61
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->classRegistry:Lexpo/modules/kotlin/sharedobjects/ClassRegistry;

    return-object v0
.end method

.method public final getCoreModule$expo_modules_core_debug()Lexpo/modules/kotlin/ModuleHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/ModuleHolder<",
            "Lexpo/modules/kotlin/defaultmodules/CoreModule;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->coreModule:Lexpo/modules/kotlin/ModuleHolder;

    return-object v0
.end method

.method public final getJniDeallocator()Lexpo/modules/kotlin/jni/JNIDeallocator;
    .locals 1

    .line 57
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->jniDeallocator:Lexpo/modules/kotlin/jni/JNIDeallocator;

    return-object v0
.end method

.method public final getJsiContext$expo_modules_core_debug()Lexpo/modules/kotlin/jni/JSIContext;
    .locals 1

    .line 33
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "jsiContext"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getReactContext()Lcom/facebook/react/bridge/ReactApplicationContext;
    .locals 2

    const/4 v0, 0x0

    .line 29
    .local v0, "$i$f$getReactContext":I
    invoke-virtual {p0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactApplicationContext;

    return-object v1
.end method

.method public final getReactContextHolder()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->reactContextHolder:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getRegistry()Lexpo/modules/kotlin/ModuleRegistry;
    .locals 1

    .line 31
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->registry:Lexpo/modules/kotlin/ModuleRegistry;

    return-object v0
.end method

.method public final getSharedObjectRegistry$expo_modules_core_debug()Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;
    .locals 1

    .line 59
    iget-object v0, p0, Lexpo/modules/kotlin/RuntimeContext;->sharedObjectRegistry:Lexpo/modules/kotlin/sharedobjects/SharedObjectRegistry;

    return-object v0
.end method

.method public final installJSIContext()V
    .locals 20

    .line 68
    move-object/from16 v1, p0

    monitor-enter p0

    const/4 v2, 0x0

    .line 69
    .local v2, "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lexpo/modules/kotlin/RuntimeContext;->isJSIContextInitialized()Z

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v5, "\u26a0\ufe0f JSI interop was already installed"

    invoke-static {v0, v5, v4, v3, v4}, Lexpo/modules/core/logging/Logger;->warn$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 71
    nop

    .end local v2    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    monitor-exit p0

    return-void

    .line 74
    .restart local v2    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ".installJSIContext"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .local v5, "blockName$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 113
    .local v6, "$i$f$trace":I
    const-string v0, "ExpoModulesCore"

    move-object v7, v0

    .local v7, "tag$iv$iv":Ljava/lang/String;
    const/4 v8, 0x0

    .line 114
    .local v8, "$i$f$trace":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "] "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .local v9, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v10, 0x0

    .line 115
    .local v10, "$i$f$trace":I
    invoke-static {v9}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 116
    nop

    .line 117
    const/4 v11, 0x0

    .line 75
    .local v11, "$i$a$-trace-RuntimeContext$installJSIContext$1$1":I
    nop

    .line 76
    :try_start_2
    new-instance v0, Lexpo/modules/kotlin/jni/JSIContext;

    invoke-direct {v0}, Lexpo/modules/kotlin/jni/JSIContext;-><init>()V

    invoke-virtual {v1, v0}, Lexpo/modules/kotlin/RuntimeContext;->setJsiContext$expo_modules_core_debug(Lexpo/modules/kotlin/jni/JSIContext;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/RuntimeContext;->getReactContextHolder()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReactApplicationContext;

    if-nez v0, :cond_1

    move/from16 v19, v2

    move-object/from16 v17, v5

    goto/16 :goto_5

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    .local v0, "reactContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v12

    .line 80
    .local v12, "jsContextHolder":J
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object v15, v14

    check-cast v15, Ljava/lang/Number;

    invoke-virtual {v15}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    .line 118
    .local v15, "it":J
    const/16 v17, 0x0

    .line 80
    .local v17, "$i$a$-takeIf-RuntimeContext$installJSIContext$1$1$jsRuntimePointer$1":I
    const-wide/16 v18, 0x0

    cmp-long v18, v15, v18

    if-eqz v18, :cond_2

    const/16 v18, 0x1

    goto :goto_0

    :cond_2
    const/16 v18, 0x0

    .end local v15    # "it":J
    .end local v17    # "$i$a$-takeIf-RuntimeContext$installJSIContext$1$1$jsRuntimePointer$1":I
    :goto_0
    if-eqz v18, :cond_3

    goto :goto_1

    :cond_3
    move-object v14, v4

    .local v14, "$this$ifNull$iv":Ljava/lang/Object;
    :goto_1
    const/4 v15, 0x0

    .line 119
    .local v15, "$i$f$ifNull":I
    if-nez v14, :cond_4

    const/16 v16, 0x0

    .line 81
    .local v16, "$i$a$-ifNull-RuntimeContext$installJSIContext$1$1$jsRuntimePointer$2":I
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v3

    const-string v4, "\u274c Cannot install JSI interop - JS runtime pointer is null"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move/from16 v19, v2

    move-object/from16 v17, v5

    const/4 v2, 0x2

    const/4 v5, 0x0

    .end local v2    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    .end local v5    # "blockName$iv":Ljava/lang/String;
    .local v17, "blockName$iv":Ljava/lang/String;
    .local v19, "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    :try_start_3
    invoke-static {v3, v4, v5, v2, v5}, Lexpo/modules/core/logging/Logger;->error$default(Lexpo/modules/core/logging/Logger;Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    .line 82
    goto/16 :goto_5

    .line 119
    .end local v16    # "$i$a$-ifNull-RuntimeContext$installJSIContext$1$1$jsRuntimePointer$2":I
    .end local v17    # "blockName$iv":Ljava/lang/String;
    .end local v19    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    .restart local v2    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    .restart local v5    # "blockName$iv":Ljava/lang/String;
    :cond_4
    move/from16 v19, v2

    move-object/from16 v17, v5

    .line 80
    .end local v2    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    .end local v5    # "blockName$iv":Ljava/lang/String;
    .end local v14    # "$this$ifNull$iv":Ljava/lang/Object;
    .end local v15    # "$i$f$ifNull":I
    .restart local v17    # "blockName$iv":Ljava/lang/String;
    .restart local v19    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    move-object v2, v14

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    .line 86
    .local v2, "jsRuntimePointer":J
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->isBridgeless()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 87
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/RuntimeContext;->getJsiContext$expo_modules_core_debug()Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object v4

    .line 88
    nop

    .line 89
    nop

    .line 90
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/react/bridge/CatalystInstance;->getRuntimeExecutor()Lcom/facebook/react/bridge/RuntimeExecutor;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v4, v1, v2, v3, v5}, Lexpo/modules/kotlin/jni/JSIContext;->installJSIForBridgeless(Lexpo/modules/kotlin/RuntimeContext;JLcom/facebook/react/bridge/RuntimeExecutor;)V

    goto :goto_2

    .line 93
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lexpo/modules/kotlin/RuntimeContext;->getJsiContext$expo_modules_core_debug()Lexpo/modules/kotlin/jni/JSIContext;

    move-result-object v4

    .line 94
    nop

    .line 95
    nop

    .line 96
    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getCatalystInstance()Lcom/facebook/react/bridge/CatalystInstance;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/react/bridge/CatalystInstance;->getJSCallInvokerHolder()Lcom/facebook/react/turbomodule/core/interfaces/CallInvokerHolder;

    move-result-object v5

    const-string v14, "null cannot be cast to non-null type com.facebook.react.turbomodule.core.CallInvokerHolderImpl"

    invoke-static {v5, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;

    .line 93
    invoke-virtual {v4, v1, v2, v3, v5}, Lexpo/modules/kotlin/jni/JSIContext;->installJSI(Lexpo/modules/kotlin/RuntimeContext;JLcom/facebook/react/turbomodule/core/CallInvokerHolderImpl;)V

    .line 100
    :goto_2
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v4

    const-string v5, "\u2705 JSI interop was installed"

    invoke-virtual {v4, v5}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "reactContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    .end local v2    # "jsRuntimePointer":J
    .end local v12    # "jsContextHolder":J
    goto :goto_4

    .line 101
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 78
    .end local v17    # "blockName$iv":Ljava/lang/String;
    .end local v19    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    .restart local v0    # "reactContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    .local v2, "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    .restart local v5    # "blockName$iv":Ljava/lang/String;
    :cond_6
    move/from16 v19, v2

    move-object/from16 v17, v5

    .end local v2    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    .end local v5    # "blockName$iv":Ljava/lang/String;
    .restart local v17    # "blockName$iv":Ljava/lang/String;
    .restart local v19    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    goto :goto_5

    .line 101
    .end local v0    # "reactContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    .end local v17    # "blockName$iv":Ljava/lang/String;
    .end local v19    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    .restart local v2    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    .restart local v5    # "blockName$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v19, v2

    move-object/from16 v17, v5

    .line 102
    .end local v2    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    .end local v5    # "blockName$iv":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v17    # "blockName$iv":Ljava/lang/String;
    .restart local v19    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    :goto_3
    :try_start_4
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u274c Cannot install JSI interop: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lexpo/modules/core/logging/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4
    nop

    .end local v11    # "$i$a$-trace-RuntimeContext$installJSIContext$1$1":I
    :goto_5
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 117
    nop

    .line 120
    :try_start_5
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 117
    nop

    .line 114
    .end local v9    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trace":I
    nop

    .line 113
    .end local v7    # "tag$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    nop

    .line 105
    .end local v6    # "$i$f$trace":I
    .end local v17    # "blockName$iv":Ljava/lang/String;
    nop

    .end local v19    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 68
    monitor-exit p0

    .line 105
    return-void

    .line 120
    .restart local v6    # "$i$f$trace":I
    .restart local v7    # "tag$iv$iv":Ljava/lang/String;
    .restart local v8    # "$i$f$trace":I
    .restart local v9    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v10    # "$i$f$trace":I
    .restart local v17    # "blockName$iv":Ljava/lang/String;
    .restart local v19    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    :catchall_2
    move-exception v0

    :try_start_6
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 68
    .end local v6    # "$i$f$trace":I
    .end local v7    # "tag$iv$iv":Ljava/lang/String;
    .end local v8    # "$i$f$trace":I
    .end local v9    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v10    # "$i$f$trace":I
    .end local v17    # "blockName$iv":Ljava/lang/String;
    .end local v19    # "$i$a$-synchronized-RuntimeContext$installJSIContext$1":I
    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setJsiContext$expo_modules_core_debug(Lexpo/modules/kotlin/jni/JSIContext;)V
    .locals 1
    .param p1, "<set-?>"    # Lexpo/modules/kotlin/jni/JSIContext;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lexpo/modules/kotlin/RuntimeContext;->jsiContext:Lexpo/modules/kotlin/jni/JSIContext;

    return-void
.end method
