.class public final Lexpo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3;
.super Ljava/lang/Object;
.source "ReactNativeHostWrapperBase.kt"

# interfaces
.implements Lcom/facebook/react/ReactInstanceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/ReactNativeHostWrapperBase;->createReactInstanceManager()Lcom/facebook/react/ReactInstanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReactNativeHostWrapperBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReactNativeHostWrapperBase.kt\nexpo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,108:1\n1855#2,2:109\n*S KotlinDebug\n*F\n+ 1 ReactNativeHostWrapperBase.kt\nexpo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3\n*L\n37#1:109,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3",
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
.field final synthetic $developerSupport:Z

.field final synthetic this$0:Lexpo/modules/ReactNativeHostWrapperBase;


# direct methods
.method constructor <init>(Lexpo/modules/ReactNativeHostWrapperBase;Z)V
    .locals 0
    .param p1, "$receiver"    # Lexpo/modules/ReactNativeHostWrapperBase;
    .param p2, "$developerSupport"    # Z

    iput-object p1, p0, Lexpo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3;->this$0:Lexpo/modules/ReactNativeHostWrapperBase;

    iput-boolean p2, p0, Lexpo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3;->$developerSupport:Z

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReactContextInitialized(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 7
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lexpo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3;->this$0:Lexpo/modules/ReactNativeHostWrapperBase;

    invoke-virtual {v0}, Lexpo/modules/ReactNativeHostWrapperBase;->getReactNativeHostHandlers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    iget-boolean v1, p0, Lexpo/modules/ReactNativeHostWrapperBase$createReactInstanceManager$3;->$developerSupport:Z

    const/4 v2, 0x0

    .line 109
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

    .line 38
    .local v6, "$i$a$-forEach-ReactNativeHostWrapperBase$createReactInstanceManager$3$onReactContextInitialized$1":I
    invoke-interface {v5, v1, p1}, Lexpo/modules/core/interfaces/ReactNativeHostHandler;->onDidCreateReactInstance(ZLcom/facebook/react/bridge/ReactContext;)V

    .line 39
    nop

    .line 109
    .end local v5    # "handler":Lexpo/modules/core/interfaces/ReactNativeHostHandler;
    .end local v6    # "$i$a$-forEach-ReactNativeHostWrapperBase$createReactInstanceManager$3$onReactContextInitialized$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 110
    :cond_0
    nop

    .line 40
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-void
.end method
