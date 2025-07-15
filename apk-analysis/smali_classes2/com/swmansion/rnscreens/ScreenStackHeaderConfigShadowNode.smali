.class public final Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;
.super Lcom/facebook/react/uimanager/LayoutShadowNode;
.source "ScreenStackHeaderConfigShadowNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0012\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\u0008\"\u0004\u0008\r\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;",
        "Lcom/facebook/react/uimanager/LayoutShadowNode;",
        "context",
        "Lcom/facebook/react/bridge/ReactContext;",
        "(Lcom/facebook/react/bridge/ReactContext;)V",
        "paddingEnd",
        "",
        "getPaddingEnd",
        "()F",
        "setPaddingEnd",
        "(F)V",
        "paddingStart",
        "getPaddingStart",
        "setPaddingStart",
        "setLocalData",
        "",
        "data",
        "",
        "react-native-screens_debug"
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
.field private context:Lcom/facebook/react/bridge/ReactContext;

.field private paddingEnd:F

.field private paddingStart:F


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/facebook/react/uimanager/LayoutShadowNode;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;->context:Lcom/facebook/react/bridge/ReactContext;

    .line 8
    return-void
.end method


# virtual methods
.method public final getPaddingEnd()F
    .locals 1

    .line 12
    iget v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;->paddingEnd:F

    return v0
.end method

.method public final getPaddingStart()F
    .locals 1

    .line 11
    iget v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;->paddingStart:F

    return v0
.end method

.method public setLocalData(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .line 15
    instance-of v0, p1, Lcom/swmansion/rnscreens/utils/PaddingBundle;

    if-eqz v0, :cond_0

    .line 16
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/utils/PaddingBundle;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/utils/PaddingBundle;->getPaddingStart()F

    move-result v0

    iput v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;->paddingStart:F

    .line 17
    move-object v0, p1

    check-cast v0, Lcom/swmansion/rnscreens/utils/PaddingBundle;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/utils/PaddingBundle;->getPaddingEnd()F

    move-result v0

    iput v0, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;->paddingEnd:F

    .line 19
    const/4 v0, 0x4

    iget v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;->paddingStart:F

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;->setPadding(IF)V

    .line 20
    const/4 v0, 0x5

    iget v1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;->paddingEnd:F

    invoke-virtual {p0, v0, v1}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;->setPadding(IF)V

    goto :goto_0

    .line 22
    :cond_0
    invoke-super {p0, p1}, Lcom/facebook/react/uimanager/LayoutShadowNode;->setLocalData(Ljava/lang/Object;)V

    .line 24
    :goto_0
    return-void
.end method

.method public final setPaddingEnd(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 12
    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;->paddingEnd:F

    return-void
.end method

.method public final setPaddingStart(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 11
    iput p1, p0, Lcom/swmansion/rnscreens/ScreenStackHeaderConfigShadowNode;->paddingStart:F

    return-void
.end method
