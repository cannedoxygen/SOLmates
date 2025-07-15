.class public final Lcom/swmansion/rnscreens/ScreenContainer$layoutCallback$1;
.super Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;
.source "ScreenContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/swmansion/rnscreens/ScreenContainer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "com/swmansion/rnscreens/ScreenContainer$layoutCallback$1",
        "Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;",
        "doFrame",
        "",
        "frameTimeNanos",
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
.field final synthetic this$0:Lcom/swmansion/rnscreens/ScreenContainer;


# direct methods
.method constructor <init>(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 0
    .param p1, "$receiver"    # Lcom/swmansion/rnscreens/ScreenContainer;

    iput-object p1, p0, Lcom/swmansion/rnscreens/ScreenContainer$layoutCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    .line 34
    invoke-direct {p0}, Lcom/facebook/react/modules/core/ChoreographerCompat$FrameCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 5
    .param p1, "frameTimeNanos"    # J

    .line 36
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer$layoutCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/swmansion/rnscreens/ScreenContainer;->access$setLayoutEnqueued$p(Lcom/swmansion/rnscreens/ScreenContainer;Z)V

    .line 37
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer$layoutCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    .line 38
    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenContainer$layoutCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenContainer;->getWidth()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 39
    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenContainer$layoutCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenContainer;->getHeight()I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 37
    invoke-virtual {v0, v1, v2}, Lcom/swmansion/rnscreens/ScreenContainer;->measure(II)V

    .line 41
    iget-object v0, p0, Lcom/swmansion/rnscreens/ScreenContainer$layoutCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    iget-object v1, p0, Lcom/swmansion/rnscreens/ScreenContainer$layoutCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-virtual {v1}, Lcom/swmansion/rnscreens/ScreenContainer;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/swmansion/rnscreens/ScreenContainer$layoutCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-virtual {v2}, Lcom/swmansion/rnscreens/ScreenContainer;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/swmansion/rnscreens/ScreenContainer$layoutCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenContainer;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/swmansion/rnscreens/ScreenContainer$layoutCallback$1;->this$0:Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-virtual {v4}, Lcom/swmansion/rnscreens/ScreenContainer;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/swmansion/rnscreens/ScreenContainer;->layout(IIII)V

    .line 42
    return-void
.end method
