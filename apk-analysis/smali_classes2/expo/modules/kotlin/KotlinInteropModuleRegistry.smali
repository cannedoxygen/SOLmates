.class public final Lexpo/modules/kotlin/KotlinInteropModuleRegistry;
.super Ljava/lang/Object;
.source "KotlinInteropModuleRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/KotlinInteropModuleRegistry$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinInteropModuleRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinInteropModuleRegistry.kt\nexpo/modules/kotlin/KotlinInteropModuleRegistry\n+ 2 ExpoTrace.kt\nexpo/modules/kotlin/tracing/ExpoTraceKt\n+ 3 Trace.kt\nandroidx/tracing/TraceKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,114:1\n14#2:115\n25#2:116\n14#2:131\n25#2:132\n14#2:147\n25#2:148\n14#2:164\n25#2:165\n27#3,3:117\n31#3:130\n27#3,3:133\n31#3:146\n27#3,3:149\n31#3:163\n27#3,3:166\n31#3:175\n1360#4:120\n1446#4,2:121\n1448#4,3:127\n1360#4:136\n1446#4,2:137\n1448#4,3:143\n800#4,11:152\n1549#4:169\n1620#4,3:170\n1855#4,2:173\n125#5:123\n152#5,3:124\n125#5:139\n152#5,3:140\n*S KotlinDebug\n*F\n+ 1 KotlinInteropModuleRegistry.kt\nexpo/modules/kotlin/KotlinInteropModuleRegistry\n*L\n44#1:115\n44#1:116\n58#1:131\n58#1:132\n74#1:147\n74#1:148\n87#1:164\n87#1:165\n44#1:117,3\n44#1:130\n58#1:133,3\n58#1:146\n74#1:149,3\n74#1:163\n87#1:166,3\n87#1:175\n46#1:120\n46#1:121,2\n46#1:127,3\n59#1:136\n59#1:137,2\n59#1:143,3\n75#1:152,11\n89#1:169\n89#1:170,3\n90#1:173,2\n47#1:123\n47#1:124,3\n60#1:139\n60#1:140,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000v\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ&\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u0006\u0010\u001b\u001a\u00020\u0013J\u0014\u0010\u001c\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u001e0\u001dJ\"\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020 0\u001d2\u0014\u0010!\u001a\u0010\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u001e0\u001dJ\u000e\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020\u0015J\u0006\u0010%\u001a\u00020\u0013J\u0006\u0010&\u001a\u00020\u0013J\u000e\u0010\'\u001a\u00020\u00132\u0006\u0010(\u001a\u00020)J\u0014\u0010*\u001a\u00020\u00132\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020 0\u001dJ\u001e\u0010,\u001a\u001a\u0012\u0004\u0012\u00020\u0015\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0015\u0012\u0004\u0012\u00020\u00010-0-R\u0011\u0010\n\u001a\u00020\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006."
    }
    d2 = {
        "Lexpo/modules/kotlin/KotlinInteropModuleRegistry;",
        "",
        "modulesProvider",
        "Lexpo/modules/kotlin/ModulesProvider;",
        "legacyModuleRegistry",
        "Lexpo/modules/core/ModuleRegistry;",
        "reactContext",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
        "getAppContext",
        "()Lexpo/modules/kotlin/AppContext;",
        "registry",
        "Lexpo/modules/kotlin/ModuleRegistry;",
        "getRegistry",
        "()Lexpo/modules/kotlin/ModuleRegistry;",
        "callMethod",
        "",
        "moduleName",
        "",
        "method",
        "arguments",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "promise",
        "Lexpo/modules/kotlin/Promise;",
        "emitOnCreate",
        "exportViewManagers",
        "",
        "Lcom/facebook/react/uimanager/ViewManager;",
        "extractViewManagersDelegateHolders",
        "Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;",
        "viewManagers",
        "hasModule",
        "",
        "name",
        "installJSIInterop",
        "onDestroy",
        "setLegacyModulesProxy",
        "proxyModule",
        "Lexpo/modules/adapters/react/NativeModulesProxy;",
        "updateModuleHoldersInViewManagers",
        "viewWrapperHolders",
        "viewManagersMetadata",
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
.field private final appContext:Lexpo/modules/kotlin/AppContext;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1, "modulesProvider"    # Lexpo/modules/kotlin/ModulesProvider;
    .param p2, "legacyModuleRegistry"    # Lexpo/modules/core/ModuleRegistry;
    .param p3, "reactContext"    # Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/ModulesProvider;",
            "Lexpo/modules/core/ModuleRegistry;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            ">;)V"
        }
    .end annotation

    const-string v0, "modulesProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyModuleRegistry"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lexpo/modules/kotlin/AppContext;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/kotlin/AppContext;-><init>(Lexpo/modules/kotlin/ModulesProvider;Lexpo/modules/core/ModuleRegistry;Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    .line 18
    return-void
.end method

.method public static final synthetic access$getRegistry(Lexpo/modules/kotlin/KotlinInteropModuleRegistry;)Lexpo/modules/kotlin/ModuleRegistry;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/KotlinInteropModuleRegistry;

    .line 18
    invoke-direct {p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    return-object v0
.end method

.method private final getRegistry()Lexpo/modules/kotlin/ModuleRegistry;
    .locals 1

    .line 26
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->getHostingRuntimeContext()Lexpo/modules/kotlin/RuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lexpo/modules/kotlin/RuntimeContext;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final callMethod(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;Lexpo/modules/kotlin/Promise;)V
    .locals 3
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p3, "arguments"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p4, "promise"    # Lexpo/modules/kotlin/Promise;

    const-string v0, "moduleName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promise"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    nop

    .line 33
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Ljava/lang/String;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 35
    invoke-interface {p3}, Lcom/facebook/react/bridge/ReadableArray;->toArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "toArray(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v1, p4}, Lexpo/modules/kotlin/ModuleHolder;->call(Ljava/lang/String;[Ljava/lang/Object;Lexpo/modules/kotlin/Promise;)V

    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 34
    .local v0, "$i$a$-requireNotNull-KotlinInteropModuleRegistry$callMethod$1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to call \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' on the non-existing module \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 32
    .end local v0    # "$i$a$-requireNotNull-KotlinInteropModuleRegistry$callMethod$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "moduleName":Ljava/lang/String;
    .end local p2    # "method":Ljava/lang/String;
    .end local p3    # "arguments":Lcom/facebook/react/bridge/ReadableArray;
    .end local p4    # "promise":Lexpo/modules/kotlin/Promise;
    throw v0
    :try_end_0
    .catch Lexpo/modules/kotlin/exception/CodedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .restart local p1    # "moduleName":Ljava/lang/String;
    .restart local p2    # "method":Ljava/lang/String;
    .restart local p3    # "arguments":Lcom/facebook/react/bridge/ReadableArray;
    .restart local p4    # "promise":Lexpo/modules/kotlin/Promise;
    :catchall_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lexpo/modules/kotlin/exception/UnexpectedException;

    invoke-direct {v1, v0}, Lexpo/modules/kotlin/exception/UnexpectedException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Lexpo/modules/kotlin/exception/CodedException;

    invoke-interface {p4, v1}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    goto :goto_0

    .line 36
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Lexpo/modules/kotlin/exception/CodedException;
    invoke-interface {p4, v0}, Lexpo/modules/kotlin/Promise;->reject(Lexpo/modules/kotlin/exception/CodedException;)V

    .line 41
    .end local v0    # "e":Lexpo/modules/kotlin/exception/CodedException;
    :goto_0
    return-void
.end method

.method public final emitOnCreate()V
    .locals 1

    .line 107
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->onCreate()V

    .line 108
    return-void
.end method

.method public final exportViewManagers()Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/uimanager/ViewManager<",
            "**>;>;"
        }
    .end annotation

    .line 44
    const-string v1, "KotlinInteropModuleRegistry.exportViewManagers"

    .local v1, "blockName$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 115
    .local v2, "$i$f$trace":I
    const-string v3, "ExpoModulesCore"

    .local v3, "tag$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 116
    .local v4, "$i$f$trace":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 117
    .local v6, "$i$f$trace":I
    invoke-static {v5}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 118
    nop

    .line 119
    const/4 v0, 0x0

    .line 45
    .local v0, "$i$a$-trace-KotlinInteropModuleRegistry$exportViewManagers$1":I
    :try_start_0
    invoke-static/range {p0 .. p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->access$getRegistry(Lexpo/modules/kotlin/KotlinInteropModuleRegistry;)Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .line 46
    nop

    .local v7, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 120
    .local v8, "$i$f$flatMap":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .local v10, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 121
    .local v11, "$i$f$flatMapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 122
    .local v13, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lexpo/modules/kotlin/ModuleHolder;

    .local v14, "module":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v15, 0x0

    .line 47
    .local v15, "$i$a$-flatMap-KotlinInteropModuleRegistry$exportViewManagers$1$1":I
    invoke-virtual {v14}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinitions()Ljava/util/Map;

    move-result-object v16

    .local v16, "$this$map$iv":Ljava/util/Map;
    const/16 v17, 0x0

    .line 123
    .local v17, "$i$f$map":I
    move/from16 v18, v0

    .end local v0    # "$i$a$-trace-KotlinInteropModuleRegistry$exportViewManagers$1":I
    .local v18, "$i$a$-trace-KotlinInteropModuleRegistry$exportViewManagers$1":I
    new-instance v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object/from16 v19, v1

    .end local v1    # "blockName$iv":Ljava/lang/String;
    .local v19, "blockName$iv":Ljava/lang/String;
    :try_start_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v1, v16

    .local v1, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/16 v20, 0x0

    .line 124
    .local v20, "$i$f$mapTo":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 125
    .local v22, "item$iv$iv":Ljava/util/Map$Entry;
    const/16 v23, 0x0

    .line 47
    .local v23, "$i$a$-map-KotlinInteropModuleRegistry$exportViewManagers$1$1$1":I
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v25, v24

    .local v25, "name":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    move-object/from16 v26, v24

    .line 48
    .local v26, "definition":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    move-object/from16 v24, v1

    .end local v1    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .local v24, "$this$mapTo$iv$iv":Ljava/util/Map;
    new-instance v1, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v27, v2

    .end local v2    # "$i$f$trace":I
    .local v27, "$i$f$trace":I
    :try_start_2
    const-string v2, "DEFAULT_MODULE_VIEW"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v28, v3

    move-object/from16 v3, v25

    .end local v25    # "name":Ljava/lang/String;
    .local v3, "name":Ljava/lang/String;
    .local v28, "tag$iv$iv":Ljava/lang/String;
    :try_start_3
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v14}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v25, v3

    move-object/from16 v3, v26

    .end local v26    # "definition":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .local v3, "definition":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .restart local v25    # "name":Ljava/lang/String;
    invoke-direct {v1, v14, v3, v2}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;-><init>(Lexpo/modules/kotlin/ModuleHolder;Lexpo/modules/kotlin/views/ViewManagerDefinition;Ljava/lang/String;)V

    .line 49
    .local v1, "wrapperDelegate":Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;
    invoke-virtual {v3}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getViewManagerType()Lexpo/modules/kotlin/views/ViewManagerType;

    move-result-object v2

    sget-object v26, Lexpo/modules/kotlin/KotlinInteropModuleRegistry$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Lexpo/modules/kotlin/views/ViewManagerType;->ordinal()I

    move-result v2

    aget v2, v26, v2

    packed-switch v2, :pswitch_data_0

    .line 51
    new-instance v2, Lkotlin/NoWhenBranchMatchedException;

    goto :goto_4

    :pswitch_0
    new-instance v2, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;

    invoke-direct {v2, v1}, Lexpo/modules/kotlin/views/GroupViewManagerWrapper;-><init>(Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;)V

    goto :goto_3

    .line 50
    :pswitch_1
    new-instance v2, Lexpo/modules/kotlin/views/SimpleViewManagerWrapper;

    invoke-direct {v2, v1}, Lexpo/modules/kotlin/views/SimpleViewManagerWrapper;-><init>(Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;)V

    .line 49
    :goto_3
    nop

    .line 125
    .end local v1    # "wrapperDelegate":Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;
    .end local v3    # "definition":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .end local v23    # "$i$a$-map-KotlinInteropModuleRegistry$exportViewManagers$1$1$1":I
    .end local v25    # "name":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v24

    move/from16 v2, v27

    move-object/from16 v3, v28

    goto :goto_1

    .line 51
    .restart local v1    # "wrapperDelegate":Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;
    .restart local v3    # "definition":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .restart local v23    # "$i$a$-map-KotlinInteropModuleRegistry$exportViewManagers$1$1$1":I
    .restart local v25    # "name":Ljava/lang/String;
    :goto_4
    invoke-direct {v2}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .end local v4    # "$i$f$trace":I
    .end local v5    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    .end local v19    # "blockName$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv":Ljava/lang/String;
    throw v2

    .line 130
    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .end local v1    # "wrapperDelegate":Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;
    .end local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$flatMap":I
    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$flatMapTo":I
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "module":Lexpo/modules/kotlin/ModuleHolder;
    .end local v15    # "$i$a$-flatMap-KotlinInteropModuleRegistry$exportViewManagers$1$1":I
    .end local v16    # "$this$map$iv":Ljava/util/Map;
    .end local v17    # "$i$f$map":I
    .end local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$exportViewManagers$1":I
    .end local v20    # "$i$f$mapTo":I
    .end local v22    # "item$iv$iv":Ljava/util/Map$Entry;
    .end local v23    # "$i$a$-map-KotlinInteropModuleRegistry$exportViewManagers$1$1$1":I
    .end local v24    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v25    # "name":Ljava/lang/String;
    .local v3, "tag$iv$iv":Ljava/lang/String;
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v19    # "blockName$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    :catchall_0
    move-exception v0

    move-object/from16 v28, v3

    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v28    # "tag$iv$iv":Ljava/lang/String;
    goto :goto_5

    .line 126
    .end local v27    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv":Ljava/lang/String;
    .restart local v0    # "destination$iv$iv":Ljava/util/Collection;
    .local v1, "$this$mapTo$iv$iv":Ljava/util/Map;
    .restart local v2    # "$i$f$trace":I
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .restart local v8    # "$i$f$flatMap":I
    .restart local v9    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v11    # "$i$f$flatMapTo":I
    .restart local v13    # "element$iv$iv":Ljava/lang/Object;
    .restart local v14    # "module":Lexpo/modules/kotlin/ModuleHolder;
    .restart local v15    # "$i$a$-flatMap-KotlinInteropModuleRegistry$exportViewManagers$1$1":I
    .restart local v16    # "$this$map$iv":Ljava/util/Map;
    .restart local v17    # "$i$f$map":I
    .restart local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$exportViewManagers$1":I
    .restart local v20    # "$i$f$mapTo":I
    :cond_1
    move-object/from16 v24, v1

    move/from16 v27, v2

    move-object/from16 v28, v3

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .end local v1    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v2    # "$i$f$trace":I
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .end local v20    # "$i$f$mapTo":I
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv":Ljava/lang/String;
    check-cast v0, Ljava/util/List;

    .line 123
    nop

    .line 47
    .end local v16    # "$this$map$iv":Ljava/util/Map;
    .end local v17    # "$i$f$map":I
    nop

    .line 122
    .end local v14    # "module":Lexpo/modules/kotlin/ModuleHolder;
    .end local v15    # "$i$a$-flatMap-KotlinInteropModuleRegistry$exportViewManagers$1$1":I
    check-cast v0, Ljava/lang/Iterable;

    .line 127
    .local v0, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v27

    move-object/from16 v3, v28

    goto/16 :goto_0

    .line 130
    .end local v0    # "list$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$flatMap":I
    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$flatMapTo":I
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$exportViewManagers$1":I
    .end local v27    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$trace":I
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move/from16 v27, v2

    move-object/from16 v28, v3

    .end local v2    # "$i$f$trace":I
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv":Ljava/lang/String;
    goto :goto_5

    .line 129
    .end local v19    # "blockName$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv":Ljava/lang/String;
    .local v0, "$i$a$-trace-KotlinInteropModuleRegistry$exportViewManagers$1":I
    .local v1, "blockName$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$trace":I
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .restart local v8    # "$i$f$flatMap":I
    .restart local v9    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v11    # "$i$f$flatMapTo":I
    :cond_2
    move/from16 v18, v0

    move-object/from16 v19, v1

    move/from16 v27, v2

    move-object/from16 v28, v3

    .end local v0    # "$i$a$-trace-KotlinInteropModuleRegistry$exportViewManagers$1":I
    .end local v1    # "blockName$iv":Ljava/lang/String;
    .end local v2    # "$i$f$trace":I
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$flatMapTo":I
    .restart local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$exportViewManagers$1":I
    .restart local v19    # "blockName$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv":Ljava/lang/String;
    move-object v0, v9

    check-cast v0, Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 120
    nop

    .line 46
    .end local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$flatMap":I
    nop

    .line 119
    .end local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$exportViewManagers$1":I
    nop

    .line 130
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 119
    nop

    .line 116
    .end local v5    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    nop

    .line 115
    .end local v4    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv":Ljava/lang/String;
    nop

    .line 55
    .end local v19    # "blockName$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    return-object v0

    .line 130
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v19    # "blockName$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    goto :goto_5

    .end local v19    # "blockName$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .end local v28    # "tag$iv$iv":Ljava/lang/String;
    .restart local v1    # "blockName$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$trace":I
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    :catchall_3
    move-exception v0

    move-object/from16 v19, v1

    move/from16 v27, v2

    move-object/from16 v28, v3

    .end local v1    # "blockName$iv":Ljava/lang/String;
    .end local v2    # "$i$f$trace":I
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v19    # "blockName$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    .restart local v28    # "tag$iv$iv":Ljava/lang/String;
    :goto_5
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final extractViewManagersDelegateHolders(Ljava/util/List;)Ljava/util/List;
    .locals 16
    .param p1, "viewManagers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/react/uimanager/ViewManager<",
            "**>;>;)",
            "Ljava/util/List<",
            "Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "viewManagers"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const-string v2, "KotlinInteropModuleRegistry.extractViewManagersDelegateHolders"

    .local v2, "blockName$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 147
    .local v3, "$i$f$trace":I
    const-string v4, "ExpoModulesCore"

    .local v4, "tag$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 148
    .local v5, "$i$f$trace":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "] "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 149
    .local v7, "$i$f$trace":I
    invoke-static {v6}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 150
    nop

    .line 151
    const/4 v0, 0x0

    .line 75
    .local v0, "$i$a$-trace-KotlinInteropModuleRegistry$extractViewManagersDelegateHolders$1":I
    :try_start_0
    move-object v8, v1

    check-cast v8, Ljava/lang/Iterable;

    .local v8, "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 152
    .local v9, "$i$f$filterIsInstance":I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v8

    .local v11, "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 161
    .local v12, "$i$f$filterIsInstanceTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .local v14, "element$iv$iv":Ljava/lang/Object;
    instance-of v15, v14, Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;

    if-eqz v15, :cond_0

    invoke-interface {v10, v14}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    .end local v14    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$filterIsInstanceTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$filterIsInstanceTo":I
    check-cast v10, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    nop

    .line 75
    .end local v8    # "$this$filterIsInstance$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$filterIsInstance":I
    nop

    .line 151
    .end local v0    # "$i$a$-trace-KotlinInteropModuleRegistry$extractViewManagersDelegateHolders$1":I
    nop

    .line 163
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 151
    nop

    .line 148
    .end local v6    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    nop

    .line 147
    .end local v4    # "tag$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    nop

    .line 76
    .end local v2    # "blockName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    return-object v10

    .line 163
    .restart local v2    # "blockName$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    .restart local v4    # "tag$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final getAppContext()Lexpo/modules/kotlin/AppContext;
    .locals 1

    .line 23
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    return-object v0
.end method

.method public final hasModule(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->getRegistry()Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lexpo/modules/kotlin/ModuleRegistry;->hasModule(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final installJSIInterop()V
    .locals 1

    .line 103
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->installJSIInterop()V

    .line 104
    return-void
.end method

.method public final onDestroy()V
    .locals 2

    .line 98
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    invoke-virtual {v0}, Lexpo/modules/kotlin/AppContext;->onDestroy$expo_modules_core_debug()V

    .line 99
    invoke-static {}, Lexpo/modules/kotlin/CoreLoggerKt;->getLogger()Lexpo/modules/core/logging/Logger;

    move-result-object v0

    const-string v1, "\u2705 KotlinInteropModuleRegistry was destroyed"

    invoke-virtual {v0, v1}, Lexpo/modules/core/logging/Logger;->info(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public final setLegacyModulesProxy(Lexpo/modules/adapters/react/NativeModulesProxy;)V
    .locals 2
    .param p1, "proxyModule"    # Lexpo/modules/adapters/react/NativeModulesProxy;

    const-string v0, "proxyModule"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->appContext:Lexpo/modules/kotlin/AppContext;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/AppContext;->setLegacyModulesProxyHolder$expo_modules_core_debug(Ljava/lang/ref/WeakReference;)V

    .line 112
    return-void
.end method

.method public final updateModuleHoldersInViewManagers(Ljava/util/List;)V
    .locals 18
    .param p1, "viewWrapperHolders"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    const-string v0, "viewWrapperHolders"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const-string v2, "KotlinInteropModuleRegistry.updateModuleHoldersInViewManagers"

    .local v2, "blockName$iv":Ljava/lang/String;
    const/4 v3, 0x0

    .line 164
    .local v3, "$i$f$trace":I
    const-string v4, "ExpoModulesCore"

    .local v4, "tag$iv$iv":Ljava/lang/String;
    const/4 v5, 0x0

    .line 165
    .local v5, "$i$f$trace":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "] "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v7, 0x0

    .line 166
    .local v7, "$i$f$trace":I
    invoke-static {v6}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 167
    nop

    .line 168
    const/4 v0, 0x0

    .line 88
    .local v0, "$i$a$-trace-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1":I
    :try_start_0
    move-object v8, v1

    check-cast v8, Ljava/lang/Iterable;

    .line 89
    nop

    .local v8, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v9, 0x0

    .line 169
    .local v9, "$i$f$map":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v8, v11}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v10, Ljava/util/Collection;

    .local v10, "destination$iv$iv":Ljava/util/Collection;
    move-object v11, v8

    .local v11, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 170
    .local v12, "$i$f$mapTo":I
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 171
    .local v14, "item$iv$iv":Ljava/lang/Object;
    move-object v15, v14

    check-cast v15, Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;

    .local v15, "it":Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;
    const/16 v16, 0x0

    .line 89
    .local v16, "$i$a$-map-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1$1":I
    move/from16 v17, v0

    .end local v0    # "$i$a$-trace-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1":I
    .local v17, "$i$a$-trace-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1":I
    invoke-interface {v15}, Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;->getViewWrapperDelegate()Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    move-result-object v0

    .line 171
    .end local v15    # "it":Lexpo/modules/kotlin/views/ViewWrapperDelegateHolder;
    .end local v16    # "$i$a$-map-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1$1":I
    invoke-interface {v10, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move/from16 v0, v17

    goto :goto_0

    .line 172
    .end local v14    # "item$iv$iv":Ljava/lang/Object;
    .end local v17    # "$i$a$-trace-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1":I
    .restart local v0    # "$i$a$-trace-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1":I
    :cond_0
    move/from16 v17, v0

    .end local v0    # "$i$a$-trace-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1":I
    .end local v10    # "destination$iv$iv":Ljava/util/Collection;
    .end local v11    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$mapTo":I
    .restart local v17    # "$i$a$-trace-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1":I
    move-object v0, v10

    check-cast v0, Ljava/util/List;

    .line 169
    nop

    .end local v8    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v9    # "$i$f$map":I
    check-cast v0, Ljava/lang/Iterable;

    .line 90
    nop

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 173
    .local v8, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;

    .local v11, "holderWrapper":Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;
    const/4 v12, 0x0

    .line 91
    .local v12, "$i$a$-forEach-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1$2":I
    invoke-static/range {p0 .. p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->access$getRegistry(Lexpo/modules/kotlin/KotlinInteropModuleRegistry;)Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v13

    invoke-virtual {v11}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getModuleHolder$expo_modules_core_debug()Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v14

    invoke-virtual {v14}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lexpo/modules/kotlin/ModuleRegistry;->getModuleHolder(Ljava/lang/String;)Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual {v11, v13}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->setModuleHolder$expo_modules_core_debug(Lexpo/modules/kotlin/ModuleHolder;)V

    .line 94
    nop

    .line 173
    .end local v11    # "holderWrapper":Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;
    .end local v12    # "$i$a$-forEach-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1$2":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 91
    .restart local v10    # "element$iv":Ljava/lang/Object;
    .restart local v11    # "holderWrapper":Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;
    .restart local v12    # "$i$a$-forEach-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1$2":I
    :cond_1
    const/4 v9, 0x0

    .line 92
    .local v9, "$i$a$-requireNotNull-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1$2$1":I
    invoke-virtual {v11}, Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;->getModuleHolder$expo_modules_core_debug()Lexpo/modules/kotlin/ModuleHolder;

    move-result-object v13

    invoke-virtual {v13}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot update the module holder for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 91
    .end local v9    # "$i$a$-requireNotNull-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1$2$1":I
    new-instance v9, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "blockName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    .end local v4    # "tag$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    .end local v6    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    .end local p1    # "viewWrapperHolders":Ljava/util/List;
    throw v9

    .line 174
    .end local v10    # "element$iv":Ljava/lang/Object;
    .end local v11    # "holderWrapper":Lexpo/modules/kotlin/views/ViewManagerWrapperDelegate;
    .end local v12    # "$i$a$-forEach-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1$2":I
    .restart local v2    # "blockName$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    .restart local v4    # "tag$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    .restart local p1    # "viewWrapperHolders":Ljava/util/List;
    :cond_2
    nop

    .line 95
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$forEach":I
    nop

    .end local v17    # "$i$a$-trace-KotlinInteropModuleRegistry$updateModuleHoldersInViewManagers$1":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    nop

    .line 175
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 168
    nop

    .line 165
    .end local v6    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v7    # "$i$f$trace":I
    nop

    .line 164
    .end local v4    # "tag$iv$iv":Ljava/lang/String;
    .end local v5    # "$i$f$trace":I
    nop

    .line 95
    .end local v2    # "blockName$iv":Ljava/lang/String;
    .end local v3    # "$i$f$trace":I
    return-void

    .line 175
    .restart local v2    # "blockName$iv":Ljava/lang/String;
    .restart local v3    # "$i$f$trace":I
    .restart local v4    # "tag$iv$iv":Ljava/lang/String;
    .restart local v5    # "$i$f$trace":I
    .restart local v6    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v7    # "$i$f$trace":I
    :catchall_0
    move-exception v0

    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method

.method public final viewManagersMetadata()Ljava/util/Map;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 58
    const-string v1, "KotlinInteropModuleRegistry.viewManagersMetadata"

    .local v1, "blockName$iv":Ljava/lang/String;
    const/4 v2, 0x0

    .line 131
    .local v2, "$i$f$trace":I
    const-string v3, "ExpoModulesCore"

    .local v3, "tag$iv$iv":Ljava/lang/String;
    const/4 v4, 0x0

    .line 132
    .local v4, "$i$f$trace":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "] "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .local v5, "label$iv$iv$iv":Ljava/lang/String;
    const/4 v6, 0x0

    .line 133
    .local v6, "$i$f$trace":I
    invoke-static {v5}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 134
    nop

    .line 135
    const/4 v0, 0x0

    .line 59
    .local v0, "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    :try_start_0
    invoke-static/range {p0 .. p0}, Lexpo/modules/kotlin/KotlinInteropModuleRegistry;->access$getRegistry(Lexpo/modules/kotlin/KotlinInteropModuleRegistry;)Lexpo/modules/kotlin/ModuleRegistry;

    move-result-object v7

    check-cast v7, Ljava/lang/Iterable;

    .local v7, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v8, 0x0

    .line 136
    .local v8, "$i$f$flatMap":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    check-cast v9, Ljava/util/Collection;

    .local v9, "destination$iv$iv":Ljava/util/Collection;
    move-object v10, v7

    .local v10, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v11, 0x0

    .line 137
    .local v11, "$i$f$flatMapTo":I
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 138
    .local v13, "element$iv$iv":Ljava/lang/Object;
    move-object v14, v13

    check-cast v14, Lexpo/modules/kotlin/ModuleHolder;

    .local v14, "module":Lexpo/modules/kotlin/ModuleHolder;
    const/4 v15, 0x0

    .line 60
    .local v15, "$i$a$-flatMap-KotlinInteropModuleRegistry$viewManagersMetadata$1$result$1":I
    invoke-virtual {v14}, Lexpo/modules/kotlin/ModuleHolder;->getDefinition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lexpo/modules/kotlin/modules/ModuleDefinitionData;->getViewManagerDefinitions()Ljava/util/Map;

    move-result-object v16

    .local v16, "$this$map$iv":Ljava/util/Map;
    const/16 v17, 0x0

    .line 139
    .local v17, "$i$f$map":I
    move/from16 v18, v0

    .end local v0    # "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    .local v18, "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    new-instance v0, Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v19, v1

    .end local v1    # "blockName$iv":Ljava/lang/String;
    .local v19, "blockName$iv":Ljava/lang/String;
    :try_start_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v0, Ljava/util/Collection;

    .local v0, "destination$iv$iv":Ljava/util/Collection;
    move-object/from16 v1, v16

    .local v1, "$this$mapTo$iv$iv":Ljava/util/Map;
    const/16 v20, 0x0

    .line 140
    .local v20, "$i$f$mapTo":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 141
    .local v22, "item$iv$iv":Ljava/util/Map$Entry;
    const/16 v23, 0x0

    .line 60
    .local v23, "$i$a$-map-KotlinInteropModuleRegistry$viewManagersMetadata$1$result$1$1":I
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v25, v24

    .local v25, "name":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lexpo/modules/kotlin/views/ViewManagerDefinition;

    .line 61
    .local v24, "definition":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    move-object/from16 v26, v1

    .end local v1    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .local v26, "$this$mapTo$iv$iv":Ljava/util/Map;
    const-string v1, "DEFAULT_MODULE_VIEW"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move/from16 v27, v2

    move-object/from16 v2, v25

    .end local v25    # "name":Ljava/lang/String;
    .local v2, "name":Ljava/lang/String;
    .local v27, "$i$f$trace":I
    :try_start_2
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 62
    :try_start_3
    invoke-virtual {v14}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v25, v3

    goto :goto_2

    .line 146
    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .end local v2    # "name":Ljava/lang/String;
    .end local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$flatMap":I
    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$flatMapTo":I
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "module":Lexpo/modules/kotlin/ModuleHolder;
    .end local v15    # "$i$a$-flatMap-KotlinInteropModuleRegistry$viewManagersMetadata$1$result$1":I
    .end local v16    # "$this$map$iv":Ljava/util/Map;
    .end local v17    # "$i$f$map":I
    .end local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    .end local v20    # "$i$f$mapTo":I
    .end local v22    # "item$iv$iv":Ljava/util/Map$Entry;
    .end local v23    # "$i$a$-map-KotlinInteropModuleRegistry$viewManagersMetadata$1$result$1$1":I
    .end local v24    # "definition":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .end local v26    # "$this$mapTo$iv$iv":Ljava/util/Map;
    :catchall_0
    move-exception v0

    move-object/from16 v25, v3

    goto/16 :goto_3

    .line 64
    .restart local v0    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v2    # "name":Ljava/lang/String;
    .restart local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .restart local v8    # "$i$f$flatMap":I
    .restart local v9    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v11    # "$i$f$flatMapTo":I
    .restart local v13    # "element$iv$iv":Ljava/lang/Object;
    .restart local v14    # "module":Lexpo/modules/kotlin/ModuleHolder;
    .restart local v15    # "$i$a$-flatMap-KotlinInteropModuleRegistry$viewManagersMetadata$1$result$1":I
    .restart local v16    # "$this$map$iv":Ljava/util/Map;
    .restart local v17    # "$i$f$map":I
    .restart local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    .restart local v20    # "$i$f$mapTo":I
    .restart local v22    # "item$iv$iv":Ljava/util/Map$Entry;
    .restart local v23    # "$i$a$-map-KotlinInteropModuleRegistry$viewManagersMetadata$1$result$1$1":I
    .restart local v24    # "definition":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .restart local v26    # "$this$mapTo$iv$iv":Ljava/util/Map;
    :cond_0
    :try_start_4
    invoke-virtual {v14}, Lexpo/modules/kotlin/ModuleHolder;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v25, v3

    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .local v25, "tag$iv$iv":Ljava/lang/String;
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    :goto_2
    nop

    .line 67
    .local v1, "viewName":Ljava/lang/String;
    const-string v3, "propsNames"

    move-object/from16 v28, v2

    .end local v2    # "name":Ljava/lang/String;
    .local v28, "name":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lexpo/modules/kotlin/views/ViewManagerDefinition;->getPropsNames()Ljava/util/List;

    move-result-object v2

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 141
    .end local v1    # "viewName":Ljava/lang/String;
    .end local v23    # "$i$a$-map-KotlinInteropModuleRegistry$viewManagersMetadata$1$result$1$1":I
    .end local v24    # "definition":Lexpo/modules/kotlin/views/ViewManagerDefinition;
    .end local v28    # "name":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    goto :goto_1

    .line 146
    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .end local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$flatMap":I
    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$flatMapTo":I
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v14    # "module":Lexpo/modules/kotlin/ModuleHolder;
    .end local v15    # "$i$a$-flatMap-KotlinInteropModuleRegistry$viewManagersMetadata$1$result$1":I
    .end local v16    # "$this$map$iv":Ljava/util/Map;
    .end local v17    # "$i$f$map":I
    .end local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    .end local v20    # "$i$f$mapTo":I
    .end local v22    # "item$iv$iv":Ljava/util/Map$Entry;
    .end local v25    # "tag$iv$iv":Ljava/lang/String;
    .end local v26    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    :catchall_1
    move-exception v0

    move-object/from16 v25, v3

    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv":Ljava/lang/String;
    goto :goto_3

    .line 142
    .end local v25    # "tag$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .restart local v0    # "destination$iv$iv":Ljava/util/Collection;
    .local v1, "$this$mapTo$iv$iv":Ljava/util/Map;
    .local v2, "$i$f$trace":I
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .restart local v8    # "$i$f$flatMap":I
    .restart local v9    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v11    # "$i$f$flatMapTo":I
    .restart local v13    # "element$iv$iv":Ljava/lang/Object;
    .restart local v14    # "module":Lexpo/modules/kotlin/ModuleHolder;
    .restart local v15    # "$i$a$-flatMap-KotlinInteropModuleRegistry$viewManagersMetadata$1$result$1":I
    .restart local v16    # "$this$map$iv":Ljava/util/Map;
    .restart local v17    # "$i$f$map":I
    .restart local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    .restart local v20    # "$i$f$mapTo":I
    :cond_1
    move-object/from16 v26, v1

    move/from16 v27, v2

    move-object/from16 v25, v3

    .end local v0    # "destination$iv$iv":Ljava/util/Collection;
    .end local v1    # "$this$mapTo$iv$iv":Ljava/util/Map;
    .end local v2    # "$i$f$trace":I
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .end local v20    # "$i$f$mapTo":I
    .restart local v25    # "tag$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    check-cast v0, Ljava/util/List;

    .line 139
    nop

    .line 60
    .end local v16    # "$this$map$iv":Ljava/util/Map;
    .end local v17    # "$i$f$map":I
    nop

    .line 138
    .end local v14    # "module":Lexpo/modules/kotlin/ModuleHolder;
    .end local v15    # "$i$a$-flatMap-KotlinInteropModuleRegistry$viewManagersMetadata$1$result$1":I
    check-cast v0, Ljava/lang/Iterable;

    .line 143
    .local v0, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v9, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v3, v25

    move/from16 v2, v27

    goto/16 :goto_0

    .line 146
    .end local v0    # "list$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$flatMap":I
    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$flatMapTo":I
    .end local v13    # "element$iv$iv":Ljava/lang/Object;
    .end local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    .end local v25    # "tag$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .restart local v2    # "$i$f$trace":I
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move/from16 v27, v2

    move-object/from16 v25, v3

    .end local v2    # "$i$f$trace":I
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    goto :goto_3

    .line 145
    .end local v19    # "blockName$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .local v0, "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    .local v1, "blockName$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$trace":I
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .restart local v8    # "$i$f$flatMap":I
    .restart local v9    # "destination$iv$iv":Ljava/util/Collection;
    .restart local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .restart local v11    # "$i$f$flatMapTo":I
    :cond_2
    move/from16 v18, v0

    move-object/from16 v19, v1

    move/from16 v27, v2

    move-object/from16 v25, v3

    .end local v0    # "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    .end local v1    # "blockName$iv":Ljava/lang/String;
    .end local v2    # "$i$f$trace":I
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .end local v9    # "destination$iv$iv":Ljava/util/Collection;
    .end local v10    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v11    # "$i$f$flatMapTo":I
    .restart local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    .restart local v19    # "blockName$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    move-object v0, v9

    check-cast v0, Ljava/util/List;

    .line 136
    nop

    .end local v7    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v8    # "$i$f$flatMap":I
    check-cast v0, Ljava/lang/Iterable;

    .line 69
    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 59
    nop

    .line 70
    .local v0, "result":Ljava/util/Map;
    nop

    .line 135
    .end local v0    # "result":Ljava/util/Map;
    .end local v18    # "$i$a$-trace-KotlinInteropModuleRegistry$viewManagersMetadata$1":I
    nop

    .line 146
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 135
    nop

    .line 132
    .end local v5    # "label$iv$iv$iv":Ljava/lang/String;
    .end local v6    # "$i$f$trace":I
    nop

    .line 131
    .end local v4    # "$i$f$trace":I
    .end local v25    # "tag$iv$iv":Ljava/lang/String;
    nop

    .line 71
    .end local v19    # "blockName$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    return-object v0

    .line 146
    .restart local v4    # "$i$f$trace":I
    .restart local v5    # "label$iv$iv$iv":Ljava/lang/String;
    .restart local v6    # "$i$f$trace":I
    .restart local v19    # "blockName$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    :catchall_3
    move-exception v0

    goto :goto_3

    .end local v19    # "blockName$iv":Ljava/lang/String;
    .end local v25    # "tag$iv$iv":Ljava/lang/String;
    .end local v27    # "$i$f$trace":I
    .restart local v1    # "blockName$iv":Ljava/lang/String;
    .restart local v2    # "$i$f$trace":I
    .restart local v3    # "tag$iv$iv":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v19, v1

    move/from16 v27, v2

    move-object/from16 v25, v3

    .end local v1    # "blockName$iv":Ljava/lang/String;
    .end local v2    # "$i$f$trace":I
    .end local v3    # "tag$iv$iv":Ljava/lang/String;
    .restart local v19    # "blockName$iv":Ljava/lang/String;
    .restart local v25    # "tag$iv$iv":Ljava/lang/String;
    .restart local v27    # "$i$f$trace":I
    :goto_3
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    throw v0
.end method
