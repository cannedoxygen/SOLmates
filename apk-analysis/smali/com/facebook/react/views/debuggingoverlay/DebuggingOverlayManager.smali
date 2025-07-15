.class public final Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager;
.super Lcom/facebook/react/uimanager/SimpleViewManager;
.source "DebuggingOverlayManager.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "DebuggingOverlay"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/uimanager/SimpleViewManager<",
        "Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \u000f2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\"\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u00082\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager;",
        "Lcom/facebook/react/uimanager/SimpleViewManager;",
        "Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;",
        "()V",
        "createViewInstance",
        "context",
        "Lcom/facebook/react/uimanager/ThemedReactContext;",
        "getName",
        "",
        "receiveCommand",
        "",
        "view",
        "commandId",
        "args",
        "Lcom/facebook/react/bridge/ReadableArray;",
        "Companion",
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
.field public static final Companion:Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager$Companion;

.field public static final REACT_CLASS:Ljava/lang/String; = "DebuggingOverlay"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager;->Companion:Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/facebook/react/uimanager/SimpleViewManager;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Landroid/view/View;
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    .line 21
    invoke-virtual {p0, p1}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/uimanager/ThemedReactContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    new-instance v0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 135
    const-string v0, "DebuggingOverlay"

    return-object v0
.end method

.method public bridge synthetic receiveCommand(Landroid/view/View;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;
    .param p2, "commandId"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;

    .line 21
    move-object v0, p1

    check-cast v0, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;

    invoke-virtual {p0, v0, p2, p3}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlayManager;->receiveCommand(Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V

    return-void
.end method

.method public receiveCommand(Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;Ljava/lang/String;Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 23
    .param p1, "view"    # Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;
    .param p2, "commandId"    # Ljava/lang/String;
    .param p3, "args"    # Lcom/facebook/react/bridge/ReadableArray;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v0, "view"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandId"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v4, "height"

    const-string/jumbo v5, "width"

    const-string/jumbo v6, "y"

    const-string/jumbo v7, "x"

    const/4 v8, 0x0

    const-string v10, "DebuggingOverlay"

    sparse-switch v0, :sswitch_data_0

    move-object v7, v10

    goto/16 :goto_b

    :sswitch_0
    const-string v0, "highlightElements"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v7, v10

    goto/16 :goto_b

    .line 80
    :cond_0
    if-nez v3, :cond_1

    .line 81
    return-void

    .line 84
    :cond_1
    invoke-interface {v3, v8}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v8

    .line 85
    .local v8, "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    check-cast v11, Ljava/util/List;

    .line 87
    .local v11, "elementsRectangles":Ljava/util/List;
    const/4 v0, 0x1

    .line 88
    .local v0, "successfullyParsedPayload":Z
    const/4 v12, 0x0

    .local v12, "i":I
    invoke-interface {v8}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v13

    move v14, v12

    move v12, v0

    .end local v0    # "successfullyParsedPayload":Z
    .local v12, "successfullyParsedPayload":Z
    .local v14, "i":I
    :goto_0
    if-ge v14, v13, :cond_4

    .line 89
    invoke-interface {v8, v14}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v15

    .line 91
    .local v15, "element":Lcom/facebook/react/bridge/ReadableMap;
    nop

    .line 92
    move-object/from16 v16, v10

    :try_start_0
    invoke-interface {v15, v7}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v0, v9

    .line 93
    .local v0, "left":F
    invoke-interface {v15, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    double-to-float v9, v9

    .line 94
    .local v9, "top":F
    move-object v10, v6

    move-object/from16 v17, v7

    float-to-double v6, v0

    :try_start_1
    invoke-interface {v15, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-double v6, v6, v18

    double-to-float v6, v6

    .line 95
    .local v6, "right":F
    move-object/from16 v18, v8

    .end local v8    # "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    .local v18, "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    float-to-double v7, v9

    :try_start_2
    invoke-interface {v15, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v19

    add-double v7, v7, v19

    double-to-float v7, v7

    .line 96
    .local v7, "bottom":F
    new-instance v8, Landroid/graphics/RectF;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move/from16 v19, v13

    :try_start_3
    sget-object v13, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v13, v0}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v13

    move/from16 v20, v0

    .end local v0    # "left":F
    .local v20, "left":F
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v0, v9}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v0

    move/from16 v21, v9

    .end local v9    # "top":F
    .local v21, "top":F
    sget-object v9, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v9, v6}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v9

    move/from16 v22, v6

    .end local v6    # "right":F
    .local v22, "right":F
    sget-object v6, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v6, v7}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v6

    invoke-direct {v8, v13, v0, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v8

    .line 98
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v7, v16

    goto :goto_4

    .line 99
    .end local v0    # "rect":Landroid/graphics/RectF;
    .end local v7    # "bottom":F
    .end local v20    # "left":F
    .end local v21    # "top":F
    .end local v22    # "right":F
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move/from16 v19, v13

    goto :goto_2

    .end local v18    # "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    .restart local v8    # "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v10, v6

    move-object/from16 v17, v7

    :goto_1
    move-object/from16 v18, v8

    move/from16 v19, v13

    .line 100
    .end local v8    # "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v18    # "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    :goto_2
    nop

    .line 102
    nop

    .line 101
    instance-of v6, v0, Lcom/facebook/react/bridge/NoSuchKeyException;

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_3

    .line 102
    :cond_2
    instance-of v6, v0, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    :goto_3
    if-eqz v6, :cond_3

    .line 104
    nop

    .line 105
    new-instance v6, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    .line 106
    nop

    .line 105
    const-string v7, "Unexpected payload for highlighting elements: every element should have x, y, width, height fields"

    invoke-direct {v6, v7}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Throwable;

    .line 103
    move-object/from16 v7, v16

    invoke-static {v7, v6}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 108
    const/4 v6, 0x0

    move v12, v6

    .line 88
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v15    # "element":Lcom/facebook/react/bridge/ReadableMap;
    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object v6, v10

    move-object/from16 v8, v18

    move/from16 v13, v19

    move-object v10, v7

    move-object/from16 v7, v17

    goto/16 :goto_0

    .line 110
    .restart local v0    # "ex":Ljava/lang/Exception;
    .restart local v15    # "element":Lcom/facebook/react/bridge/ReadableMap;
    :cond_3
    throw v0

    .line 88
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v15    # "element":Lcom/facebook/react/bridge/ReadableMap;
    .end local v18    # "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    .restart local v8    # "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    :cond_4
    move-object/from16 v18, v8

    .line 115
    .end local v8    # "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    .end local v14    # "i":I
    .restart local v18    # "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    if-eqz v12, :cond_d

    .line 116
    invoke-virtual {v1, v11}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->setHighlightedElementsRectangles(Ljava/util/List;)V

    .end local v11    # "elementsRectangles":Ljava/util/List;
    .end local v12    # "successfullyParsedPayload":Z
    .end local v18    # "providedElements":Lcom/facebook/react/bridge/ReadableArray;
    goto/16 :goto_c

    .line 24
    :sswitch_1
    move-object/from16 v17, v7

    move-object v7, v10

    move-object v10, v6

    const-string v0, "highlightTraceUpdates"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 26
    if-nez v3, :cond_5

    .line 27
    return-void

    .line 30
    :cond_5
    invoke-interface {v3, v8}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v6

    .line 31
    .local v6, "providedTraceUpdates":Lcom/facebook/react/bridge/ReadableArray;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 33
    .local v8, "formattedTraceUpdates":Ljava/util/List;
    const/4 v0, 0x1

    .line 34
    .local v0, "successfullyParsedPayload":Z
    const/4 v9, 0x0

    .local v9, "i":I
    invoke-interface {v6}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v11

    move v12, v9

    move v9, v0

    .end local v0    # "successfullyParsedPayload":Z
    .local v9, "successfullyParsedPayload":Z
    .local v12, "i":I
    :goto_5
    if-ge v12, v11, :cond_9

    .line 35
    invoke-interface {v6, v12}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v13

    .line 36
    .local v13, "traceUpdate":Lcom/facebook/react/bridge/ReadableMap;
    const-string/jumbo v0, "rectangle"

    invoke-interface {v13, v0}, Lcom/facebook/react/bridge/ReadableMap;->getMap(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v14

    .line 37
    .local v14, "serializedRectangle":Lcom/facebook/react/bridge/ReadableMap;
    if-nez v14, :cond_6

    .line 39
    nop

    .line 40
    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    .line 41
    nop

    .line 40
    const-string v4, "Unexpected payload for highlighting trace updates: rectangle field is null"

    invoke-direct {v0, v4}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 38
    invoke-static {v7, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v9, 0x0

    .line 44
    move-object/from16 v16, v6

    goto/16 :goto_a

    .line 47
    :cond_6
    const-string v0, "id"

    invoke-interface {v13, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 48
    .local v15, "id":I
    const-string v0, "color"

    invoke-interface {v13, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 50
    .local v3, "color":I
    nop

    .line 51
    move-object/from16 v16, v6

    move-object/from16 v6, v17

    .end local v6    # "providedTraceUpdates":Lcom/facebook/react/bridge/ReadableArray;
    .local v16, "providedTraceUpdates":Lcom/facebook/react/bridge/ReadableArray;
    :try_start_4
    invoke-interface {v14, v6}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    .line 52
    .local v0, "left":F
    invoke-interface {v14, v10}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    double-to-float v1, v1

    .line 53
    .local v1, "top":F
    move/from16 v17, v9

    move-object v2, v10

    .end local v9    # "successfullyParsedPayload":Z
    .local v17, "successfullyParsedPayload":Z
    float-to-double v9, v0

    :try_start_5
    invoke-interface {v14, v5}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v18
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    add-double v9, v9, v18

    double-to-float v9, v9

    .line 54
    .local v9, "right":F
    move-object v10, v5

    move-object/from16 v18, v6

    float-to-double v5, v1

    :try_start_6
    invoke-interface {v14, v4}, Lcom/facebook/react/bridge/ReadableMap;->getDouble(Ljava/lang/String;)D

    move-result-wide v19

    add-double v5, v5, v19

    double-to-float v5, v5

    .line 56
    .local v5, "bottom":F
    new-instance v6, Landroid/graphics/RectF;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    move-object/from16 v19, v2

    :try_start_7
    sget-object v2, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v2, v0}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v2

    move/from16 v20, v0

    .end local v0    # "left":F
    .restart local v20    # "left":F
    sget-object v0, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v0

    move/from16 v21, v1

    .end local v1    # "top":F
    .restart local v21    # "top":F
    sget-object v1, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v1, v9}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    move-object/from16 v22, v4

    :try_start_8
    sget-object v4, Lcom/facebook/react/uimanager/PixelUtil;->INSTANCE:Lcom/facebook/react/uimanager/PixelUtil;

    invoke-virtual {v4, v5}, Lcom/facebook/react/uimanager/PixelUtil;->dpToPx(F)F

    move-result v4

    invoke-direct {v6, v2, v0, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, v6

    .line 58
    .local v0, "rectangle":Landroid/graphics/RectF;
    new-instance v1, Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;

    invoke-direct {v1, v15, v0, v3}, Lcom/facebook/react/views/debuggingoverlay/TraceUpdate;-><init>(ILandroid/graphics/RectF;I)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    move/from16 v9, v17

    goto :goto_9

    .line 59
    .end local v0    # "rectangle":Landroid/graphics/RectF;
    .end local v5    # "bottom":F
    .end local v9    # "right":F
    .end local v20    # "left":F
    .end local v21    # "top":F
    :catch_4
    move-exception v0

    goto :goto_7

    :catch_5
    move-exception v0

    goto :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v19, v2

    :goto_6
    move-object/from16 v22, v4

    goto :goto_7

    :catch_7
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v22, v4

    move-object v10, v5

    move-object/from16 v18, v6

    goto :goto_7

    .end local v17    # "successfullyParsedPayload":Z
    .local v9, "successfullyParsedPayload":Z
    :catch_8
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v18, v6

    move/from16 v17, v9

    move-object/from16 v19, v10

    move-object v10, v5

    .line 60
    .end local v9    # "successfullyParsedPayload":Z
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v17    # "successfullyParsedPayload":Z
    :goto_7
    nop

    .line 62
    nop

    .line 61
    instance-of v1, v0, Lcom/facebook/react/bridge/NoSuchKeyException;

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_8

    .line 62
    :cond_7
    instance-of v1, v0, Lcom/facebook/react/bridge/UnexpectedNativeTypeException;

    :goto_8
    if-eqz v1, :cond_8

    .line 64
    nop

    .line 65
    new-instance v1, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    .line 66
    nop

    .line 65
    const-string v2, "Unexpected payload for highlighting trace updates: rectangle field should have x, y, width, height fields"

    invoke-direct {v1, v2}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    .line 63
    invoke-static {v7, v1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    const/4 v1, 0x0

    move v9, v1

    .line 34
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "color":I
    .end local v13    # "traceUpdate":Lcom/facebook/react/bridge/ReadableMap;
    .end local v14    # "serializedRectangle":Lcom/facebook/react/bridge/ReadableMap;
    .end local v15    # "id":I
    .end local v17    # "successfullyParsedPayload":Z
    .restart local v9    # "successfullyParsedPayload":Z
    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v5, v10

    move-object/from16 v6, v16

    move-object/from16 v17, v18

    move-object/from16 v10, v19

    move-object/from16 v4, v22

    goto/16 :goto_5

    .line 70
    .end local v9    # "successfullyParsedPayload":Z
    .restart local v0    # "ex":Ljava/lang/Exception;
    .restart local v3    # "color":I
    .restart local v13    # "traceUpdate":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v14    # "serializedRectangle":Lcom/facebook/react/bridge/ReadableMap;
    .restart local v15    # "id":I
    .restart local v17    # "successfullyParsedPayload":Z
    :cond_8
    throw v0

    .line 34
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "color":I
    .end local v13    # "traceUpdate":Lcom/facebook/react/bridge/ReadableMap;
    .end local v14    # "serializedRectangle":Lcom/facebook/react/bridge/ReadableMap;
    .end local v15    # "id":I
    .end local v16    # "providedTraceUpdates":Lcom/facebook/react/bridge/ReadableArray;
    .end local v17    # "successfullyParsedPayload":Z
    .restart local v6    # "providedTraceUpdates":Lcom/facebook/react/bridge/ReadableArray;
    .restart local v9    # "successfullyParsedPayload":Z
    :cond_9
    move-object/from16 v16, v6

    move/from16 v17, v9

    .line 75
    .end local v6    # "providedTraceUpdates":Lcom/facebook/react/bridge/ReadableArray;
    .end local v12    # "i":I
    .restart local v16    # "providedTraceUpdates":Lcom/facebook/react/bridge/ReadableArray;
    :goto_a
    if-eqz v9, :cond_a

    .line 76
    move-object/from16 v1, p1

    invoke-virtual {v1, v8}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->setTraceUpdates(Ljava/util/List;)V

    move-object/from16 v2, p2

    .end local v8    # "formattedTraceUpdates":Ljava/util/List;
    .end local v9    # "successfullyParsedPayload":Z
    .end local v16    # "providedTraceUpdates":Lcom/facebook/react/bridge/ReadableArray;
    goto :goto_c

    .line 75
    .restart local v8    # "formattedTraceUpdates":Ljava/util/List;
    .restart local v9    # "successfullyParsedPayload":Z
    .restart local v16    # "providedTraceUpdates":Lcom/facebook/react/bridge/ReadableArray;
    :cond_a
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_c

    .line 24
    .end local v8    # "formattedTraceUpdates":Ljava/util/List;
    .end local v9    # "successfullyParsedPayload":Z
    .end local v16    # "providedTraceUpdates":Lcom/facebook/react/bridge/ReadableArray;
    :cond_b
    move-object/from16 v2, p2

    goto :goto_b

    :sswitch_2
    move-object v7, v10

    const-string v0, "clearElementsHighlights"

    move-object/from16 v2, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_b

    .line 120
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/react/views/debuggingoverlay/DebuggingOverlay;->clearElementsHighlights()V

    goto :goto_c

    .line 124
    :goto_b
    nop

    .line 125
    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    const-string v3, "Received unexpected command in DebuggingOverlayManager"

    invoke-direct {v0, v3}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    .line 123
    invoke-static {v7, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    :cond_d
    :goto_c
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73c1883d -> :sswitch_2
        0x4f16f299 -> :sswitch_1
        0x5292bdcb -> :sswitch_0
    .end sparse-switch
.end method
