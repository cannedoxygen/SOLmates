.class public final Lexpo/modules/kotlin/views/ShadowNodeProxy;
.super Ljava/lang/Object;
.source "ShadowNodeProxy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/kotlin/views/ShadowNodeProxy;",
        "",
        "expoView",
        "Lexpo/modules/kotlin/views/ExpoView;",
        "(Lexpo/modules/kotlin/views/ExpoView;)V",
        "getExpoView",
        "()Lexpo/modules/kotlin/views/ExpoView;",
        "setViewSize",
        "",
        "width",
        "",
        "height",
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
.field private final expoView:Lexpo/modules/kotlin/views/ExpoView;


# direct methods
.method public constructor <init>(Lexpo/modules/kotlin/views/ExpoView;)V
    .locals 1
    .param p1, "expoView"    # Lexpo/modules/kotlin/views/ExpoView;

    const-string v0, "expoView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/views/ShadowNodeProxy;->expoView:Lexpo/modules/kotlin/views/ExpoView;

    return-void
.end method


# virtual methods
.method public final getExpoView()Lexpo/modules/kotlin/views/ExpoView;
    .locals 1

    .line 5
    iget-object v0, p0, Lexpo/modules/kotlin/views/ShadowNodeProxy;->expoView:Lexpo/modules/kotlin/views/ExpoView;

    return-object v0
.end method

.method public final setViewSize(DD)V
    .locals 4
    .param p1, "width"    # D
    .param p3, "height"    # D

    .line 7
    iget-object v0, p0, Lexpo/modules/kotlin/views/ShadowNodeProxy;->expoView:Lexpo/modules/kotlin/views/ExpoView;

    invoke-virtual {v0}, Lexpo/modules/kotlin/views/ExpoView;->getStateWrapper()Lcom/facebook/react/uimanager/StateWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/Pair;

    const-string v2, "width"

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "height"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/react/bridge/Arguments;->makeNativeMap(Ljava/util/Map;)Lcom/facebook/react/bridge/WritableNativeMap;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/WritableMap;

    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/StateWrapper;->updateState(Lcom/facebook/react/bridge/WritableMap;)V

    .line 8
    :cond_0
    return-void
.end method
