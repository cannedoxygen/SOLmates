.class public final Lcom/facebook/react/defaults/DefaultReactHost;
.super Ljava/lang/Object;
.source "DefaultReactHost.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultReactHost.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultReactHost.kt\ncom/facebook/react/defaults/DefaultReactHost\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,124:1\n1855#2,2:125\n*S KotlinDebug\n*F\n+ 1 DefaultReactHost.kt\ncom/facebook/react/defaults/DefaultReactHost\n*L\n76#1:125,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007Jn\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u000e2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u000e2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00122\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00122\u001a\u0008\u0002\u0010\u0014\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00170\u00150\u000bH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/facebook/react/defaults/DefaultReactHost;",
        "",
        "()V",
        "reactHost",
        "Lcom/facebook/react/ReactHost;",
        "getDefaultReactHost",
        "context",
        "Landroid/content/Context;",
        "reactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
        "packageList",
        "",
        "Lcom/facebook/react/ReactPackage;",
        "jsMainModulePath",
        "",
        "jsBundleAssetPath",
        "jsBundleFilePath",
        "isHermesEnabled",
        "",
        "useDevSupport",
        "cxxReactPackageProviders",
        "Lkotlin/Function1;",
        "Lcom/facebook/react/bridge/ReactContext;",
        "Lcom/facebook/react/runtime/cxxreactpackage/CxxReactPackage;",
        "ReactAndroid_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/react/defaults/DefaultReactHost;

.field private static reactHost:Lcom/facebook/react/ReactHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/defaults/DefaultReactHost;

    invoke-direct {v0}, Lcom/facebook/react/defaults/DefaultReactHost;-><init>()V

    sput-object v0, Lcom/facebook/react/defaults/DefaultReactHost;->INSTANCE:Lcom/facebook/react/defaults/DefaultReactHost;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultReactHost(Landroid/content/Context;Lcom/facebook/react/ReactNativeHost;)Lcom/facebook/react/ReactHost;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reactNativeHost"    # Lcom/facebook/react/ReactNativeHost;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reactNativeHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    instance-of v0, p1, Lcom/facebook/react/defaults/DefaultReactNativeHost;

    if-eqz v0, :cond_0

    .line 121
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/defaults/DefaultReactNativeHost;

    invoke-virtual {v0, p0}, Lcom/facebook/react/defaults/DefaultReactNativeHost;->toReactHost$ReactAndroid_debug(Landroid/content/Context;)Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 119
    .local v0, "$i$a$-require-DefaultReactHost$getDefaultReactHost$2":I
    nop

    .line 118
    .end local v0    # "$i$a$-require-DefaultReactHost$getDefaultReactHost$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can call getDefaultReactHost only with instances of DefaultReactNativeHost"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final getDefaultReactHost(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;)Lcom/facebook/react/ReactHost;
    .locals 21
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageList"    # Ljava/util/List;
    .param p2, "jsMainModulePath"    # Ljava/lang/String;
    .param p3, "jsBundleAssetPath"    # Ljava/lang/String;
    .param p4, "jsBundleFilePath"    # Ljava/lang/String;
    .param p5, "isHermesEnabled"    # Z
    .param p6, "useDevSupport"    # Z
    .param p7, "cxxReactPackageProviders"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/react/ReactPackage;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/facebook/react/bridge/ReactContext;",
            "+",
            "Lcom/facebook/react/runtime/cxxreactpackage/CxxReactPackage;",
            ">;>;)",
            "Lcom/facebook/react/ReactHost;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p7

    const-string v0, "context"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "packageList"

    move-object/from16 v5, p1

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsMainModulePath"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jsBundleAssetPath"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cxxReactPackageProviders"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    sget-object v0, Lcom/facebook/react/defaults/DefaultReactHost;->reactHost:Lcom/facebook/react/ReactHost;

    if-nez v0, :cond_4

    .line 65
    const/4 v0, 0x1

    const-string v1, "assets://"

    if-eqz v8, :cond_1

    .line 66
    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v1, v10, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-static {v6, v8, v0}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 69
    :cond_0
    invoke-static/range {p4 .. p4}, Lcom/facebook/react/bridge/JSBundleLoader;->createFileLoader(Ljava/lang/String;)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 72
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v0}, Lcom/facebook/react/bridge/JSBundleLoader;->createAssetLoader(Landroid/content/Context;Ljava/lang/String;Z)Lcom/facebook/react/bridge/JSBundleLoader;

    move-result-object v0

    move-object v12, v0

    .line 65
    :goto_0
    nop

    .line 64
    nop

    .line 74
    .local v12, "jsBundleLoader":Lcom/facebook/react/bridge/JSBundleLoader;
    if-eqz p5, :cond_2

    new-instance v0, Lcom/facebook/react/runtime/hermes/HermesInstance;

    invoke-direct {v0}, Lcom/facebook/react/runtime/hermes/HermesInstance;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/facebook/react/runtime/JSCInstance;

    invoke-direct {v0}, Lcom/facebook/react/runtime/JSCInstance;-><init>()V

    :goto_1
    check-cast v0, Lcom/facebook/react/runtime/JSRuntimeFactory;

    move-object v14, v0

    .line 75
    .local v14, "jsRuntimeFactory":Lcom/facebook/react/runtime/JSRuntimeFactory;
    new-instance v0, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;

    invoke-direct {v0}, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;-><init>()V

    move-object v2, v0

    .line 76
    .local v2, "defaultTmmDelegateBuilder":Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;
    move-object v0, v9

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 125
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .local v10, "element$iv":Ljava/lang/Object;
    move-object v11, v10

    check-cast v11, Lkotlin/jvm/functions/Function1;

    .local v11, "it":Lkotlin/jvm/functions/Function1;
    const/4 v13, 0x0

    .line 76
    .local v13, "$i$a$-forEach-DefaultReactHost$getDefaultReactHost$1":I
    invoke-virtual {v2, v11}, Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;->addCxxReactPackage(Lkotlin/jvm/functions/Function1;)Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;

    .line 125
    .end local v11    # "it":Lkotlin/jvm/functions/Function1;
    .end local v13    # "$i$a$-forEach-DefaultReactHost$getDefaultReactHost$1":I
    nop

    .end local v10    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 126
    :cond_3
    nop

    .line 78
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    new-instance v0, Lcom/facebook/react/defaults/DefaultReactHostDelegate;

    .line 79
    nop

    .line 80
    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    nop

    .line 82
    nop

    .line 78
    nop

    .line 83
    move-object/from16 v18, v2

    check-cast v18, Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;

    .line 78
    const/16 v19, 0x70

    const/16 v20, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v0

    move-object/from16 v11, p2

    move-object/from16 v13, p1

    invoke-direct/range {v10 .. v20}, Lcom/facebook/react/defaults/DefaultReactHostDelegate;-><init>(Ljava/lang/String;Lcom/facebook/react/bridge/JSBundleLoader;Ljava/util/List;Lcom/facebook/react/runtime/JSRuntimeFactory;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/fabric/ReactNativeConfig;Lkotlin/jvm/functions/Function1;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 77
    nop

    .line 84
    .local v10, "defaultReactHostDelegate":Lcom/facebook/react/defaults/DefaultReactHostDelegate;
    new-instance v3, Lcom/facebook/react/fabric/ComponentFactory;

    invoke-direct {v3}, Lcom/facebook/react/fabric/ComponentFactory;-><init>()V

    .line 85
    .local v3, "componentFactory":Lcom/facebook/react/fabric/ComponentFactory;
    invoke-static {v3}, Lcom/facebook/react/defaults/DefaultComponentsRegistry;->register(Lcom/facebook/react/fabric/ComponentFactory;)V

    .line 87
    nop

    .line 88
    new-instance v11, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 89
    nop

    .line 90
    move-object v13, v10

    check-cast v13, Lcom/facebook/react/runtime/ReactHostDelegate;

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 88
    const/4 v15, 0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v16, v2

    .end local v2    # "defaultTmmDelegateBuilder":Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;
    .local v16, "defaultTmmDelegateBuilder":Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;
    move-object v2, v13

    move v4, v15

    move/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/react/runtime/ReactHostImpl;-><init>(Landroid/content/Context;Lcom/facebook/react/runtime/ReactHostDelegate;Lcom/facebook/react/fabric/ComponentFactory;ZZ)V

    check-cast v11, Lcom/facebook/react/ReactHost;

    .line 87
    sput-object v11, Lcom/facebook/react/defaults/DefaultReactHost;->reactHost:Lcom/facebook/react/ReactHost;

    .line 96
    .end local v3    # "componentFactory":Lcom/facebook/react/fabric/ComponentFactory;
    .end local v10    # "defaultReactHostDelegate":Lcom/facebook/react/defaults/DefaultReactHostDelegate;
    .end local v12    # "jsBundleLoader":Lcom/facebook/react/bridge/JSBundleLoader;
    .end local v14    # "jsRuntimeFactory":Lcom/facebook/react/runtime/JSRuntimeFactory;
    .end local v16    # "defaultTmmDelegateBuilder":Lcom/facebook/react/defaults/DefaultTurboModuleManagerDelegate$Builder;
    :cond_4
    sget-object v0, Lcom/facebook/react/defaults/DefaultReactHost;->reactHost:Lcom/facebook/react/ReactHost;

    const-string/jumbo v1, "null cannot be cast to non-null type com.facebook.react.ReactHost"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic getDefaultReactHost$default(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;ILjava/lang/Object;)Lcom/facebook/react/ReactHost;
    .locals 6

    .line 53
    and-int/lit8 v1, p8, 0x4

    const-string v2, "index"

    if-eqz v1, :cond_0

    .line 56
    move-object v1, v2

    goto :goto_0

    .line 53
    :cond_0
    move-object v1, p2

    :goto_0
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_1

    .line 57
    goto :goto_1

    .line 53
    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p8, 0x10

    if-eqz v3, :cond_2

    .line 58
    const/4 v3, 0x0

    goto :goto_2

    .line 53
    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x20

    if-eqz v4, :cond_3

    .line 59
    const/4 v4, 0x1

    goto :goto_3

    .line 53
    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v5, p8, 0x40

    if-eqz v5, :cond_4

    .line 60
    sget-boolean v5, Lcom/facebook/react/common/build/ReactBuildConfig;->DEBUG:Z

    goto :goto_4

    .line 53
    :cond_4
    move v5, p6

    :goto_4
    and-int/lit16 v0, p8, 0x80

    if-eqz v0, :cond_5

    .line 61
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 53
    :cond_5
    move-object v0, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v1

    move-object p5, v2

    move-object p6, v3

    move p7, v4

    move p8, v5

    move-object p9, v0

    invoke-static/range {p2 .. p9}, Lcom/facebook/react/defaults/DefaultReactHost;->getDefaultReactHost(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;)Lcom/facebook/react/ReactHost;

    move-result-object v0

    return-object v0
.end method
