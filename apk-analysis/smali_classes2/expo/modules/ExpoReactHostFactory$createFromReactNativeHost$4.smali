.class public final Lexpo/modules/ExpoReactHostFactory$createFromReactNativeHost$4;
.super Ljava/lang/Object;
.source "ExpoReactHostFactory.kt"

# interfaces
.implements Lcom/facebook/react/ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ExpoReactHostFactory;->createFromReactNativeHost(Landroid/content/Context;Lcom/facebook/react/ReactNativeHost;)Lcom/facebook/react/ReactHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExpoReactHostFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory$createFromReactNativeHost$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,127:1\n1855#2,2:128\n*S KotlinDebug\n*F\n+ 1 ExpoReactHostFactory.kt\nexpo/modules/ExpoReactHostFactory$createFromReactNativeHost$4\n*L\n116#1:128,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/ExpoReactHostFactory$createFromReactNativeHost$4",
        "Lcom/facebook/react/ReactInstanceEventListener;",
        "onReactContextInitialized",
        "",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
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


# instance fields
.field final synthetic $reactNativeHost:Lcom/facebook/react/ReactNativeHost;

.field final synthetic $useDeveloperSupport:Z


# direct methods
.method constructor <init>(Lcom/facebook/react/ReactNativeHost;Z)V
    .locals 0
    .param p1, "$reactNativeHost"    # Lcom/facebook/react/ReactNativeHost;
    .param p2, "$useDeveloperSupport"    # Z

    iput-object p1, p0, Lexpo/modules/ExpoReactHostFactory$createFromReactNativeHost$4;->$reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    iput-boolean p2, p0, Lexpo/modules/ExpoReactHostFactory$createFromReactNativeHost$4;->$useDeveloperSupport:Z

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 7
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lexpo/modules/ExpoReactHostFactory$createFromReactNativeHost$4;->$reactNativeHost:Lcom/facebook/react/ReactNativeHost;

    check-cast v0, Lexpo/modules/ReactNativeHostWrapper;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapper;->getReactNativeHostHandlers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-boolean v1, p0, Lexpo/modules/ExpoReactHostFactory$createFromReactNativeHost$4;->$useDeveloperSupport:Z

    const/4 v2, 0x0

    .line 128
    .local v2, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lexpo/modules/core/interfaces/ReactNativeHostHandler;

    .local v5, "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    const/4 v6, 0x0

    .line 117
    .local v6, "$i$a$-forEach-ExpoReactHostFactory$createFromReactNativeHost$4$onReactContextInitialized$1":I
    invoke-interface {v5, v1, p1}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onDidCreateReactInstance(ZLcom/facebook/react/bridge/ReactContext;)V

    .line 118
    nop

    .line 128
    .end local v5    # "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    .end local v6    # "$i$a$-forEach-ExpoReactHostFactory$createFromReactNativeHost$4$onReactContextInitialized$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 129
    :cond_0
    nop

    .line 119
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method
