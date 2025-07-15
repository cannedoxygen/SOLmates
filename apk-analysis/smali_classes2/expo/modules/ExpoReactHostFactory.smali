.class public final Lexpo/modules/ExpoReactHostFactory;
.super Ljava/lang/Object;
.source "ExpoReactHostFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoReactHostFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1855#2,2:128\n1855#2,2:130\n*S KotlinDebug\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory\n*L\n97#1:128,2\n110#1:130,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\nB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0007R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lexpo/modules/ExpoReactHostFactory;",
        "",
        "()V",
        "reactHost",
        "Lcom/facebook/react/ReactHost;",
        "createFromReactNativeHost",
        "context",
        "Landroid/content/Context;",
        "reactNativeHost",
        "Lcom/facebook/react/ReactNativeHost;",
        "ExpoReactHostDelegate",
        "expo_debug"
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
.field public static final INSTANCE:Lexpo/modules/ExpoReactHostFactory;

.field private static reactHost:Lcom/facebook/react/ReactHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/ExpoReactHostFactory;

    invoke-direct {v0}, Lexpo/modules/ExpoReactHostFactory;-><init>()V

    sput-object v0, Lexpo/modules/ExpoReactHostFactory;->INSTANCE:Lexpo/modules/ExpoReactHostFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final createFromReactNativeHost(Landroid/content/Context;Lcom/facebook/react/ReactNativeHost;)Lcom/facebook/react/ReactHost;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reactNativeHost"    # Lcom/facebook/react/ReactNativeHost;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reactNativeHost"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    instance-of v0, p1, Lexpo/modules/ReactNativeHostWrapper;

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lexpo/modules/ExpoReactHostFactory;->reactHost:Lcom/facebook/react/ReactHost;

    if-nez v0, :cond_2

    .line 92
    move-object v0, p1

    check-cast v0, Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getUseDeveloperSupport()Z

    move-result v0

    .line 93
    .local v0, "useDeveloperSupport":Z
    new-instance v9, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v3, p1

    check-cast v3, Lexpo/modules/ReactNativeHostWrapper;

    const/16 v7, 0x1c

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;-><init>(Ljava/lang/ref/WeakReference;Lexpo/modules/ReactNativeHostWrapper;Lcom/facebook/react/runtime/BindingsInstaller;Lcom/facebook/react/fabric/ReactNativeConfig;Lcom/facebook/react/ReactPackageTurboModuleManagerDelegate$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v7, v9

    .line 94
    .local v7, "reactHostDelegate":Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;
    new-instance v4, Lcom/facebook/react/fabric/ComponentFactory;

    invoke-direct {v4}, Lcom/facebook/react/fabric/ComponentFactory;-><init>()V

    .line 95
    .local v4, "componentFactory":Lcom/facebook/react/fabric/ComponentFactory;
    invoke-static {v4}, Lcom/facebook/react/defaults/DefaultComponentsRegistry;->register(Lcom/facebook/react/fabric/ComponentFactory;)V

    .line 97
    move-object v1, p1

    check-cast v1, Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v1}, Lexpo/modules/ReactNativeHostWrapper;->getReactNativeHostHandlers()Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 128
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    check-cast v6, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .local v6, "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    const/4 v8, 0x0

    .line 98
    .local v8, "$i$a$-forEach-ExpoReactHostFactory$createFromReactNativeHost$2":I
    invoke-interface {v6, v0}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onWillCreateReactInstance(Z)V

    .line 99
    nop

    .line 128
    .end local v6    # "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    .end local v8    # "$i$a$-forEach-ExpoReactHostFactory$createFromReactNativeHost$2":I
    nop

    .end local v5    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 129
    :cond_0
    nop

    .line 102
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    new-instance v8, Lcom/facebook/react/runtime/ReactHostImpl;

    .line 103
    nop

    .line 104
    move-object v3, v7

    check-cast v3, Lcom/facebook/react/runtime/ReactHostDelegate;

    .line 105
    nop

    .line 106
    nop

    .line 107
    nop

    .line 102
    const/4 v5, 0x1

    move-object v1, v8

    move-object v2, p0

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/runtime/ReactHostImpl;-><init>(Landroid/content/Context;Lcom/facebook/react/runtime/ReactHostDelegate;Lcom/facebook/react/fabric/ComponentFactory;ZZ)V

    .line 101
    nop

    .line 110
    .local v1, "reactHostImpl":Lcom/facebook/react/runtime/ReactHostImpl;
    move-object v2, p1

    check-cast v2, Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v2}, Lexpo/modules/ReactNativeHostWrapper;->getReactNativeHostHandlers()Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    .local v2, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 130
    .local v3, "$i$f$forEach":I
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v8, v6

    check-cast v8, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .local v8, "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    const/4 v9, 0x0

    .line 111
    .local v9, "$i$a$-forEach-ExpoReactHostFactory$createFromReactNativeHost$3":I
    invoke-virtual {v1}, Lcom/facebook/react/runtime/ReactHostImpl;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v10

    invoke-interface {v8, v10}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onDidCreateDevSupportManager(Lcom/facebook/react/devsupport/interfaces/DevSupportManager;)V

    .line 112
    nop

    .line 130
    .end local v8    # "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    .end local v9    # "$i$a$-forEach-ExpoReactHostFactory$createFromReactNativeHost$3":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 131
    :cond_1
    nop

    .line 114
    .end local v2    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$forEach":I
    new-instance v2, Lexpo/modules/ExpoReactHostFactory$createFromReactNativeHost$4;

    invoke-direct {v2, p1, v0}, Lexpo/modules/ExpoReactHostFactory$createFromReactNativeHost$4;-><init>(Lcom/facebook/react/ReactNativeHost;Z)V

    check-cast v2, Lcom/facebook/react/ReactInstanceEventListener;

    invoke-virtual {v1, v2}, Lcom/facebook/react/runtime/ReactHostImpl;->addReactInstanceEventListener(Lcom/facebook/react/ReactInstanceEventListener;)V

    .line 122
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/ReactHost;

    sput-object v2, Lexpo/modules/ExpoReactHostFactory;->reactHost:Lcom/facebook/react/ReactHost;

    .line 124
    .end local v0    # "useDeveloperSupport":Z
    .end local v1    # "reactHostImpl":Lcom/facebook/react/runtime/ReactHostImpl;
    .end local v4    # "componentFactory":Lcom/facebook/react/fabric/ComponentFactory;
    .end local v7    # "reactHostDelegate":Lexpo/modules/ExpoReactHostFactory$ExpoReactHostDelegate;
    :cond_2
    sget-object v0, Lexpo/modules/ExpoReactHostFactory;->reactHost:Lcom/facebook/react/ReactHost;

    const-string v1, "null cannot be cast to non-null type com.facebook.react.ReactHost"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 88
    :cond_3
    const/4 v0, 0x0

    .line 89
    .local v0, "$i$a$-require-ExpoReactHostFactory$createFromReactNativeHost$1":I
    nop

    .line 88
    .end local v0    # "$i$a$-require-ExpoReactHostFactory$createFromReactNativeHost$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can call createFromReactNativeHost only with instances of ReactNativeHostWrapper"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
