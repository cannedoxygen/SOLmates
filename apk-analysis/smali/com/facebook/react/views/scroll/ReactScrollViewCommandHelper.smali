.class public Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper;
.super Ljava/lang/Object;
.source "ReactScrollViewCommandHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;,
        Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;,
        Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;
    }
.end annotation


# static fields
.field public static final COMMAND_FLASH_SCROLL_INDICATORS:I = 0x3

.field public static final COMMAND_SCROLL_TO:I = 0x1

.field public static final COMMAND_SCROLL_TO_END:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCommandsMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 59
    nop

    .line 61
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 63
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 65
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 59
    const-string/jumbo v1, "scrollTo"

    const-string/jumbo v3, "scrollToEnd"

    const-string v5, "flashScrollIndicators"

    invoke-static/range {v1 .. v6}, Lcom/facebook/react/common/MapBuilder;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static receiveCommand(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;ILcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p2, "commandType"    # I
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<",
            "TT;>;TT;I",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 73
    .local p0, "viewManager":Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;, "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<TT;>;"
    .local p1, "scrollView":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    packed-switch p2, :pswitch_data_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 94
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 92
    const-string v2, "Unsupported command %d received by %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :pswitch_0
    invoke-interface {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;->flashScrollIndicators(Ljava/lang/Object;)V

    .line 88
    return-void

    .line 83
    :pswitch_1
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper;->scrollToEnd(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 84
    return-void

    .line 78
    :pswitch_2
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper;->scrollTo(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 79
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static receiveCommand(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 3
    .param p2, "commandType"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<",
            "TT;>;TT;",
            "Ljava/lang/String;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 103
    .local p0, "viewManager":Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;, "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<TT;>;"
    .local p1, "scrollView":Ljava/lang/Object;, "TT;"
    invoke-static {p0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {p1}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "scrollToEnd"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "flashScrollIndicators"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string/jumbo v0, "scrollTo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 121
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 124
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p2, v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 122
    const-string v2, "Unsupported command %s received by %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :pswitch_0
    invoke-interface {p0, p1}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;->flashScrollIndicators(Ljava/lang/Object;)V

    .line 118
    return-void

    .line 113
    :pswitch_1
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper;->scrollToEnd(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 114
    return-void

    .line 108
    :pswitch_2
    invoke-static {p3}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/bridge/ReadableArray;

    invoke-static {p0, p1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper;->scrollTo(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;Lcom/facebook/react/bridge/ReadableArray;)V

    .line 109
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x17f88dd8 -> :sswitch_2
        0x1b1bf01 -> :sswitch_1
        0x7a7e8d93 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static scrollTo(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 4
    .param p2, "args"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<",
            "TT;>;TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 130
    .local p0, "viewManager":Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;, "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<TT;>;"
    .local p1, "scrollView":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 131
    .local v0, "destX":I
    const/4 v1, 0x1

    invoke-interface {p2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getDouble(I)D

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(D)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 132
    .local v1, "destY":I
    const/4 v2, 0x2

    invoke-interface {p2, v2}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v2

    .line 133
    .local v2, "animated":Z
    new-instance v3, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;

    invoke-direct {v3, v0, v1, v2}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;-><init>(IIZ)V

    invoke-interface {p0, p1, v3}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;->scrollTo(Ljava/lang/Object;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToCommandData;)V

    .line 134
    return-void
.end method

.method private static scrollToEnd(Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;Ljava/lang/Object;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 2
    .param p2, "args"    # Lcom/facebook/react/bridge/ReadableArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<",
            "TT;>;TT;",
            "Lcom/facebook/react/bridge/ReadableArray;",
            ")V"
        }
    .end annotation

    .line 138
    .local p0, "viewManager":Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;, "Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler<TT;>;"
    .local p1, "scrollView":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableArray;->getBoolean(I)Z

    move-result v0

    .line 139
    .local v0, "animated":Z
    new-instance v1, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;

    invoke-direct {v1, v0}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;-><init>(Z)V

    invoke-interface {p0, p1, v1}, Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollCommandHandler;->scrollToEnd(Ljava/lang/Object;Lcom/facebook/react/views/scroll/ReactScrollViewCommandHelper$ScrollToEndCommandData;)V

    .line 140
    return-void
.end method
