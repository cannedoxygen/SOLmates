.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
.super Lcom/swmansion/gesturehandler/NativeRNGestureHandlerModuleSpec;
.source "RNGestureHandlerModule.kt"

# interfaces
.implements Lcom/swmansion/common/GestureHandlerStateManager;


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "RNGestureHandlerModule"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$Companion;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$FlingGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HoverGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$LongPressGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$NativeViewGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PanGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$RotationGestureHandlerFactory;,
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$TapGestureHandlerFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNGestureHandlerModule.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNGestureHandlerModule.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerModule\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,743:1\n1#2:744\n288#3,2:745\n1282#4,2:747\n*S KotlinDebug\n*F\n+ 1 RNGestureHandlerModule.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerModule\n*L\n522#1:745,2\n530#1:747,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a3\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011*\u0001\u0007\u0008\u0007\u0018\u0000 S2\u00020\u00012\u00020\u0002:\u000bSTUVWXYZ[\\]B\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J \u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001bH\u0017J \u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"H\u0017J0\u0010#\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010$*\u0008\u0012\u0004\u0012\u0002H$0%2\u0006\u0010\u001f\u001a\u00020 2\u0006\u0010&\u001a\u00020\'2\u0006\u0010!\u001a\u00020\"H\u0002J\u0011\u0010(\u001a\u00020\u00192\u0006\u0010)\u001a\u00020*H\u0082 J\u0010\u0010+\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0017J.\u0010,\u001a\n\u0012\u0004\u0012\u0002H$\u0018\u00010\u000b\"\u000e\u0008\u0000\u0010$*\u0008\u0012\u0004\u0012\u0002H$0%2\u000c\u0010-\u001a\u0008\u0012\u0004\u0012\u0002H$0%H\u0002J\u0012\u0010.\u001a\u0004\u0018\u00010\u00172\u0006\u0010/\u001a\u00020\'H\u0002J\u0008\u00100\u001a\u00020\u0019H\u0017J\u0014\u00101\u001a\u000e\u0012\u0004\u0012\u00020 \u0012\u0004\u0012\u00020302H\u0016J\u0008\u00104\u001a\u00020 H\u0016J\u0008\u00105\u001a\u00020\u0019H\u0017J\u0018\u00106\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u001b2\u0006\u00107\u001a\u000208H\u0017J\u0008\u00109\u001a\u000208H\u0017J\u0008\u0010:\u001a\u00020\u0019H\u0016J%\u0010;\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010$*\u0008\u0012\u0004\u0012\u0002H$0%2\u0006\u0010-\u001a\u0002H$H\u0002\u00a2\u0006\u0002\u0010<J5\u0010=\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010$*\u0008\u0012\u0004\u0012\u0002H$0%2\u0006\u0010-\u001a\u0002H$2\u0006\u0010>\u001a\u00020\'2\u0006\u0010?\u001a\u00020\'H\u0002\u00a2\u0006\u0002\u0010@J%\u0010A\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010$*\u0008\u0012\u0004\u0012\u0002H$0%2\u0006\u0010-\u001a\u0002H$H\u0002\u00a2\u0006\u0002\u0010<J\u000e\u0010B\u001a\u00020\u00192\u0006\u0010C\u001a\u00020\u0017J\u0018\u0010D\u001a\u00020\u00192\u0006\u0010E\u001a\u00020 2\u0006\u0010F\u001a\u00020GH\u0002J%\u0010H\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010$*\u0008\u0012\u0004\u0012\u0002H$0I2\u0006\u0010J\u001a\u0002H$H\u0002\u00a2\u0006\u0002\u0010KJ\u0010\u0010L\u001a\u00020\u00192\u0006\u0010J\u001a\u00020MH\u0002J%\u0010N\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010$*\u0008\u0012\u0004\u0012\u0002H$0I2\u0006\u0010J\u001a\u0002H$H\u0002\u00a2\u0006\u0002\u0010KJ\u0018\u0010O\u001a\u00020\u00192\u0006\u0010&\u001a\u00020\'2\u0006\u0010>\u001a\u00020\'H\u0016J\u000e\u0010P\u001a\u00020\u00192\u0006\u0010C\u001a\u00020\u0017J\u0018\u0010Q\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010!\u001a\u00020\"H\u0017J(\u0010R\u001a\u00020\u0019\"\u000e\u0008\u0000\u0010$*\u0008\u0012\u0004\u0012\u0002H$0%2\u0006\u0010&\u001a\u00020\'2\u0006\u0010!\u001a\u00020\"H\u0002R\u0010\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0008R\u001a\u0010\t\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u000b0\nX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000cR\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006^"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;",
        "Lcom/swmansion/gesturehandler/NativeRNGestureHandlerModuleSpec;",
        "Lcom/swmansion/common/GestureHandlerStateManager;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "eventListener",
        "com/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;",
        "handlerFactories",
        "",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;",
        "[Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;",
        "interactionManager",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;",
        "reanimatedEventDispatcher",
        "Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;",
        "registry",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;",
        "getRegistry",
        "()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;",
        "roots",
        "",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;",
        "attachGestureHandler",
        "",
        "handlerTagDouble",
        "",
        "viewTagDouble",
        "actionTypeDouble",
        "createGestureHandler",
        "handlerName",
        "",
        "config",
        "Lcom/facebook/react/bridge/ReadableMap;",
        "createGestureHandlerHelper",
        "T",
        "Lcom/swmansion/gesturehandler/core/GestureHandler;",
        "handlerTag",
        "",
        "decorateRuntime",
        "jsiPtr",
        "",
        "dropGestureHandler",
        "findFactoryForHandler",
        "handler",
        "findRootHelperForViewAncestor",
        "viewTag",
        "flushOperations",
        "getConstants",
        "",
        "",
        "getName",
        "handleClearJSResponder",
        "handleSetJSResponder",
        "blockNativeResponder",
        "",
        "install",
        "invalidate",
        "onHandlerUpdate",
        "(Lcom/swmansion/gesturehandler/core/GestureHandler;)V",
        "onStateChange",
        "newState",
        "oldState",
        "(Lcom/swmansion/gesturehandler/core/GestureHandler;II)V",
        "onTouchEvent",
        "registerRootHelper",
        "root",
        "sendEventForDeviceEvent",
        "eventName",
        "data",
        "Lcom/facebook/react/bridge/WritableMap;",
        "sendEventForDirectEvent",
        "Lcom/facebook/react/uimanager/events/Event;",
        "event",
        "(Lcom/facebook/react/uimanager/events/Event;)V",
        "sendEventForNativeAnimatedEvent",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;",
        "sendEventForReanimated",
        "setGestureHandlerState",
        "unregisterRootHelper",
        "updateGestureHandler",
        "updateGestureHandlerHelper",
        "Companion",
        "FlingGestureHandlerFactory",
        "HandlerFactory",
        "HoverGestureHandlerFactory",
        "LongPressGestureHandlerFactory",
        "ManualGestureHandlerFactory",
        "NativeViewGestureHandlerFactory",
        "PanGestureHandlerFactory",
        "PinchGestureHandlerFactory",
        "RotationGestureHandlerFactory",
        "TapGestureHandlerFactory",
        "react-native-gesture-handler_debug"
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
.field public static final Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$Companion;

.field private static final KEY_DIRECTION:Ljava/lang/String; = "direction"

.field private static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field private static final KEY_HIT_SLOP:Ljava/lang/String; = "hitSlop"

.field private static final KEY_HIT_SLOP_BOTTOM:Ljava/lang/String; = "bottom"

.field private static final KEY_HIT_SLOP_HEIGHT:Ljava/lang/String; = "height"

.field private static final KEY_HIT_SLOP_HORIZONTAL:Ljava/lang/String; = "horizontal"

.field private static final KEY_HIT_SLOP_LEFT:Ljava/lang/String; = "left"

.field private static final KEY_HIT_SLOP_RIGHT:Ljava/lang/String; = "right"

.field private static final KEY_HIT_SLOP_TOP:Ljava/lang/String; = "top"

.field private static final KEY_HIT_SLOP_VERTICAL:Ljava/lang/String; = "vertical"

.field private static final KEY_HIT_SLOP_WIDTH:Ljava/lang/String; = "width"

.field private static final KEY_LONG_PRESS_MAX_DIST:Ljava/lang/String; = "maxDist"

.field private static final KEY_LONG_PRESS_MIN_DURATION_MS:Ljava/lang/String; = "minDurationMs"

.field private static final KEY_MANUAL_ACTIVATION:Ljava/lang/String; = "manualActivation"

.field private static final KEY_NATIVE_VIEW_DISALLOW_INTERRUPTION:Ljava/lang/String; = "disallowInterruption"

.field private static final KEY_NATIVE_VIEW_SHOULD_ACTIVATE_ON_START:Ljava/lang/String; = "shouldActivateOnStart"

.field private static final KEY_NEEDS_POINTER_DATA:Ljava/lang/String; = "needsPointerData"

.field private static final KEY_NUMBER_OF_POINTERS:Ljava/lang/String; = "numberOfPointers"

.field private static final KEY_PAN_ACTIVATE_AFTER_LONG_PRESS:Ljava/lang/String; = "activateAfterLongPress"

.field private static final KEY_PAN_ACTIVE_OFFSET_X_END:Ljava/lang/String; = "activeOffsetXEnd"

.field private static final KEY_PAN_ACTIVE_OFFSET_X_START:Ljava/lang/String; = "activeOffsetXStart"

.field private static final KEY_PAN_ACTIVE_OFFSET_Y_END:Ljava/lang/String; = "activeOffsetYEnd"

.field private static final KEY_PAN_ACTIVE_OFFSET_Y_START:Ljava/lang/String; = "activeOffsetYStart"

.field private static final KEY_PAN_AVG_TOUCHES:Ljava/lang/String; = "avgTouches"

.field private static final KEY_PAN_FAIL_OFFSET_RANGE_X_END:Ljava/lang/String; = "failOffsetXEnd"

.field private static final KEY_PAN_FAIL_OFFSET_RANGE_X_START:Ljava/lang/String; = "failOffsetXStart"

.field private static final KEY_PAN_FAIL_OFFSET_RANGE_Y_END:Ljava/lang/String; = "failOffsetYEnd"

.field private static final KEY_PAN_FAIL_OFFSET_RANGE_Y_START:Ljava/lang/String; = "failOffsetYStart"

.field private static final KEY_PAN_MAX_POINTERS:Ljava/lang/String; = "maxPointers"

.field private static final KEY_PAN_MIN_DIST:Ljava/lang/String; = "minDist"

.field private static final KEY_PAN_MIN_POINTERS:Ljava/lang/String; = "minPointers"

.field private static final KEY_PAN_MIN_VELOCITY:Ljava/lang/String; = "minVelocity"

.field private static final KEY_PAN_MIN_VELOCITY_X:Ljava/lang/String; = "minVelocityX"

.field private static final KEY_PAN_MIN_VELOCITY_Y:Ljava/lang/String; = "minVelocityY"

.field private static final KEY_SHOULD_CANCEL_WHEN_OUTSIDE:Ljava/lang/String; = "shouldCancelWhenOutside"

.field private static final KEY_TAP_MAX_DELAY_MS:Ljava/lang/String; = "maxDelayMs"

.field private static final KEY_TAP_MAX_DELTA_X:Ljava/lang/String; = "maxDeltaX"

.field private static final KEY_TAP_MAX_DELTA_Y:Ljava/lang/String; = "maxDeltaY"

.field private static final KEY_TAP_MAX_DIST:Ljava/lang/String; = "maxDist"

.field private static final KEY_TAP_MAX_DURATION_MS:Ljava/lang/String; = "maxDurationMs"

.field private static final KEY_TAP_MIN_POINTERS:Ljava/lang/String; = "minPointers"

.field private static final KEY_TAP_NUMBER_OF_TAPS:Ljava/lang/String; = "numberOfTaps"

.field public static final NAME:Ljava/lang/String; = "RNGestureHandlerModule"


# instance fields
.field private final eventListener:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;

.field private final handlerFactories:[Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory<",
            "*>;"
        }
    .end annotation
.end field

.field private final interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

.field private final reanimatedEventDispatcher:Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;

.field private final registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

.field private final roots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$f7Xz9Y5eIjPZ1E__kihTPrMy1Lw(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->install$lambda$2(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 3
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 52
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/NativeRNGestureHandlerModuleSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 312
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;

    invoke-direct {v0, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;)V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->eventListener:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;

    .line 325
    nop

    .line 326
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    new-instance v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$NativeViewGestureHandlerFactory;

    invoke-direct {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$NativeViewGestureHandlerFactory;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 327
    new-instance v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$TapGestureHandlerFactory;

    invoke-direct {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$TapGestureHandlerFactory;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 326
    nop

    .line 328
    new-instance v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$LongPressGestureHandlerFactory;

    invoke-direct {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$LongPressGestureHandlerFactory;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 326
    nop

    .line 329
    new-instance v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PanGestureHandlerFactory;

    invoke-direct {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PanGestureHandlerFactory;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 326
    nop

    .line 330
    new-instance v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;

    invoke-direct {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$PinchGestureHandlerFactory;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 326
    nop

    .line 331
    new-instance v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$RotationGestureHandlerFactory;

    invoke-direct {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$RotationGestureHandlerFactory;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 326
    nop

    .line 332
    new-instance v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$FlingGestureHandlerFactory;

    invoke-direct {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$FlingGestureHandlerFactory;-><init>()V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 326
    nop

    .line 333
    new-instance v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;

    invoke-direct {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$ManualGestureHandlerFactory;-><init>()V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 326
    nop

    .line 334
    new-instance v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HoverGestureHandlerFactory;

    invoke-direct {v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HoverGestureHandlerFactory;-><init>()V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 326
    nop

    .line 325
    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->handlerFactories:[Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    .line 336
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    .line 337
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    .line 339
    new-instance v0, Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->reanimatedEventDispatcher:Lcom/swmansion/gesturehandler/ReanimatedEventDispatcher;

    .line 51
    return-void
.end method

.method public static final synthetic access$onHandlerUpdate(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;Lcom/swmansion/gesturehandler/core/GestureHandler;)V
    .locals 0
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 49
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->onHandlerUpdate(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    return-void
.end method

.method public static final synthetic access$onStateChange(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;Lcom/swmansion/gesturehandler/core/GestureHandler;II)V
    .locals 0
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "newState"    # I
    .param p3, "oldState"    # I

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->onStateChange(Lcom/swmansion/gesturehandler/core/GestureHandler;II)V

    return-void
.end method

.method public static final synthetic access$onTouchEvent(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;Lcom/swmansion/gesturehandler/core/GestureHandler;)V
    .locals 0
    .param p0, "$this"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 49
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->onTouchEvent(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    return-void
.end method

.method private final createGestureHandlerHelper(Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 5
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "handlerTag"    # I
    .param p3, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "TT;>;>(",
            "Ljava/lang/String;",
            "I",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v0, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->getHandler(I)Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 355
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->handlerFactories:[Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 356
    .local v3, "handlerFactory":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    invoke-virtual {v3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->create(Landroid/content/Context;)Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v0

    move-object v1, v0

    .local v1, "$this$createGestureHandlerHelper_u24lambda_u240":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v2, 0x0

    .line 358
    .local v2, "$i$a$-apply-RNGestureHandlerModule$createGestureHandlerHelper$handler$1":I
    invoke-virtual {v1, p2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setTag(I)V

    .line 359
    iget-object v4, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->eventListener:Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$eventListener$1;

    check-cast v4, Lcom/swmansion/gesturehandler/core/OnTouchEventListener;

    invoke-virtual {v1, v4}, Lcom/swmansion/gesturehandler/core/GestureHandler;->setOnTouchEventListener(Lcom/swmansion/gesturehandler/core/OnTouchEventListener;)Lcom/swmansion/gesturehandler/core/GestureHandler;

    .line 360
    nop

    .line 357
    .end local v1    # "$this$createGestureHandlerHelper_u24lambda_u240":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v2    # "$i$a$-apply-RNGestureHandlerModule$createGestureHandlerHelper$handler$1":I
    nop

    .line 361
    .local v0, "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->registerHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;)V

    .line 362
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-virtual {v1, v0, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->configureInteractions(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 363
    invoke-virtual {v3, v0, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->configure(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 364
    return-void

    .line 355
    .end local v0    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v3    # "handlerFactory":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    :cond_1
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid handler name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists. Please ensure that no Gesture instance is used across multiple GestureDetectors."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final native decorateRuntime(J)V
.end method

.method private final findFactoryForHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    .locals 9
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "TT;>;>(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "TT;>;)",
            "Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory<",
            "TT;>;"
        }
    .end annotation

    .line 530
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->handlerFactories:[Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    .local v0, "$this$firstOrNull$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 747
    .local v1, "$i$f$firstOrNull":I
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    .local v5, "it":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    const/4 v6, 0x0

    .line 530
    .local v6, "$i$a$-firstOrNull-RNGestureHandlerModule$findFactoryForHandler$1":I
    invoke-virtual {v5}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    .line 747
    .end local v5    # "it":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    .end local v6    # "$i$a$-firstOrNull-RNGestureHandlerModule$findFactoryForHandler$1":I
    if-eqz v5, :cond_0

    goto :goto_1

    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 748
    :cond_1
    const/4 v4, 0x0

    .line 530
    .end local v0    # "$this$firstOrNull$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_1
    return-object v4
.end method

.method private final findRootHelperForViewAncestor(I)Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    .locals 13
    .param p1, "viewTag"    # I

    .line 516
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "getReactApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0}, Lcom/swmansion/gesturehandler/react/ExtensionsKt;->getUIManager(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/uimanager/UIManagerModule;

    move-result-object v0

    .line 517
    .local v0, "uiManager":Lcom/facebook/react/uimanager/UIManagerModule;
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/UIManagerModule;->resolveRootTagFromReactTag(I)I

    move-result v1

    .line 518
    .local v1, "rootViewTag":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v3, :cond_0

    .line 519
    return-object v2

    .line 521
    :cond_0
    iget-object v4, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    monitor-enter v4

    const/4 v5, 0x0

    .line 522
    .local v5, "$i$a$-synchronized-RNGestureHandlerModule$findRootHelperForViewAncestor$1":I
    :try_start_0
    iget-object v6, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 745
    .local v7, "$i$f$firstOrNull":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    .local v10, "it":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    const/4 v11, 0x0

    .line 523
    .local v11, "$i$a$-firstOrNull-RNGestureHandlerModule$findRootHelperForViewAncestor$1$1":I
    invoke-virtual {v10}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v12

    instance-of v12, v12, Lcom/facebook/react/ReactRootView;

    if-eqz v12, :cond_2

    invoke-virtual {v10}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->getRootView()Landroid/view/ViewGroup;

    move-result-object v12

    check-cast v12, Lcom/facebook/react/ReactRootView;

    invoke-virtual {v12}, Lcom/facebook/react/ReactRootView;->getRootViewTag()I

    move-result v12

    if-ne v12, v1, :cond_2

    move v12, v3

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    .line 745
    .end local v10    # "it":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    .end local v11    # "$i$a$-firstOrNull-RNGestureHandlerModule$findRootHelperForViewAncestor$1$1":I
    :goto_0
    if-eqz v12, :cond_1

    move-object v2, v9

    goto :goto_1

    .line 746
    .end local v9    # "element$iv":Ljava/lang/Object;
    :cond_3
    nop

    .end local v6    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    .end local v5    # "$i$a$-synchronized-RNGestureHandlerModule$findRootHelperForViewAncestor$1":I
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v4

    throw v2
.end method

.method private static final install$lambda$2(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;)V
    .locals 3
    .param p0, "this$0"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 452
    nop

    .line 453
    :try_start_0
    const-string v0, "gesturehandler"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 454
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJavaScriptContextHolder()Lcom/facebook/react/bridge/JavaScriptContextHolder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 455
    .local v0, "jsContext":Lcom/facebook/react/bridge/JavaScriptContextHolder;
    invoke-virtual {v0}, Lcom/facebook/react/bridge/JavaScriptContextHolder;->get()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->decorateRuntime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "jsContext":Lcom/facebook/react/bridge/JavaScriptContextHolder;
    goto :goto_0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    .local v0, "exception":Ljava/lang/Exception;
    const-string v1, "[RNGestureHandler]"

    const-string v2, "Could not install JSI bindings."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .end local v0    # "exception":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private final onHandlerUpdate(Lcom/swmansion/gesturehandler/core/GestureHandler;)V
    .locals 10
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "TT;>;>(TT;)V"
        }
    .end annotation

    .line 535
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v0

    if-gez v0, :cond_0

    .line 537
    return-void

    .line 539
    :cond_0
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 540
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->findFactoryForHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 542
    .local v0, "handlerFactory":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    :cond_1
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActionType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 544
    sget-object v4, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->createEventBuilder(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;->obtain$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;ZILjava/lang/Object;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;

    move-result-object v1

    .line 545
    .local v1, "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForReanimated(Lcom/facebook/react/uimanager/events/Event;)V

    .end local v1    # "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;
    goto :goto_0

    .line 546
    :cond_2
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActionType()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 548
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;

    .line 549
    nop

    .line 550
    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->createEventBuilder(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;

    move-result-object v2

    .line 551
    nop

    .line 548
    invoke-virtual {v1, p1, v2, v3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;->obtain(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;Z)Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;

    move-result-object v1

    .line 553
    .restart local v1    # "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;
    invoke-direct {p0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForNativeAnimatedEvent(Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;)V

    .end local v1    # "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;
    goto :goto_0

    .line 554
    :cond_3
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActionType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 556
    nop

    .line 560
    sget-object v4, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->createEventBuilder(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-static/range {v4 .. v9}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;->obtain$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;ZILjava/lang/Object;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;

    move-result-object v1

    .line 561
    .restart local v1    # "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDirectEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .end local v1    # "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;
    goto :goto_0

    .line 563
    :cond_4
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActionType()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 565
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->createEventBuilder(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent$Companion;->createEventData(Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 566
    .local v1, "data":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "onGestureHandlerEvent"

    invoke-direct {p0, v2, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDeviceEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 569
    .end local v0    # "handlerFactory":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    .end local v1    # "data":Lcom/facebook/react/bridge/WritableMap;
    :cond_5
    :goto_0
    return-void
.end method

.method private final onStateChange(Lcom/swmansion/gesturehandler/core/GestureHandler;II)V
    .locals 3
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .param p2, "newState"    # I
    .param p3, "oldState"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "TT;>;>(TT;II)V"
        }
    .end annotation

    .line 574
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v0

    if-gez v0, :cond_0

    .line 576
    return-void

    .line 578
    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->findFactoryForHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 580
    .local v0, "handlerFactory":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    :cond_1
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActionType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 582
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->createEventBuilder(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;->obtain(Lcom/swmansion/gesturehandler/core/GestureHandler;IILcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;

    move-result-object v1

    .line 583
    .local v1, "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForReanimated(Lcom/facebook/react/uimanager/events/Event;)V

    .end local v1    # "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;
    goto :goto_1

    .line 584
    :cond_2
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActionType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 585
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActionType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    goto :goto_0

    .line 595
    :cond_3
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActionType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    .line 597
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->createEventBuilder(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;->createEventData(Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;II)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 598
    .local v1, "data":Lcom/facebook/react/bridge/WritableMap;
    const-string v2, "onGestureHandlerStateChange"

    invoke-direct {p0, v2, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDeviceEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    goto :goto_1

    .line 588
    .end local v1    # "data":Lcom/facebook/react/bridge/WritableMap;
    :cond_4
    :goto_0
    nop

    .line 592
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->createEventBuilder(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;

    move-result-object v2

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent$Companion;->obtain(Lcom/swmansion/gesturehandler/core/GestureHandler;IILcom/swmansion/gesturehandler/react/eventbuilders/GestureHandlerEventDataBuilder;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;

    move-result-object v1

    .line 593
    .local v1, "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;
    move-object v2, v1

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDirectEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 600
    .end local v1    # "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerStateChangeEvent;
    :cond_5
    :goto_1
    return-void
.end method

.method private final onTouchEvent(Lcom/swmansion/gesturehandler/core/GestureHandler;)V
    .locals 3
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "TT;>;>(TT;)V"
        }
    .end annotation

    .line 605
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getTag()I

    move-result v0

    if-gez v0, :cond_0

    .line 607
    return-void

    .line 609
    :cond_0
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 610
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 612
    :cond_1
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActionType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 614
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent$Companion;->obtain(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent;

    move-result-object v0

    .line 615
    .local v0, "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent;
    move-object v1, v0

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    invoke-direct {p0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForReanimated(Lcom/facebook/react/uimanager/events/Event;)V

    .end local v0    # "event":Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent;
    goto :goto_0

    .line 616
    :cond_2
    invoke-virtual {p1}, Lcom/swmansion/gesturehandler/core/GestureHandler;->getActionType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 618
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent$Companion;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerTouchEvent$Companion;->createEventData(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 619
    .local v0, "data":Lcom/facebook/react/bridge/WritableMap;
    const-string v1, "onGestureHandlerEvent"

    invoke-direct {p0, v1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDeviceEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V

    .line 622
    .end local v0    # "data":Lcom/facebook/react/bridge/WritableMap;
    :cond_3
    :goto_0
    return-void
.end method

.method private final sendEventForDeviceEvent(Ljava/lang/String;Lcom/facebook/react/bridge/WritableMap;)V
    .locals 2
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/facebook/react/bridge/WritableMap;

    .line 650
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "getReactApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0}, Lcom/swmansion/gesturehandler/react/ExtensionsKt;->getDeviceEventEmitter(Lcom/facebook/react/bridge/ReactContext;)Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    .line 651
    return-void
.end method

.method private final sendEventForDirectEvent(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 2
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/react/uimanager/events/Event<",
            "TT;>;>(TT;)V"
        }
    .end annotation

    .line 645
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "getReactApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    invoke-static {v0, p1}, Lcom/swmansion/gesturehandler/ReactContextExtensionsKt;->dispatchEvent(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/uimanager/events/Event;)V

    .line 646
    return-void
.end method

.method private final sendEventForNativeAnimatedEvent(Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;)V
    .locals 2
    .param p1, "event"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerEvent;

    .line 640
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-string v1, "getReactApplicationContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    move-object v1, p1

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    invoke-static {v0, v1}, Lcom/swmansion/gesturehandler/ReactContextExtensionsKt;->dispatchEvent(Lcom/facebook/react/bridge/ReactContext;Lcom/facebook/react/uimanager/events/Event;)V

    .line 641
    return-void
.end method

.method private final sendEventForReanimated(Lcom/facebook/react/uimanager/events/Event;)V
    .locals 0
    .param p1, "event"    # Lcom/facebook/react/uimanager/events/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/facebook/react/uimanager/events/Event<",
            "TT;>;>(TT;)V"
        }
    .end annotation

    .line 626
    nop

    .line 631
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->sendEventForDirectEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 633
    return-void
.end method

.method private final updateGestureHandlerHelper(ILcom/facebook/react/bridge/ReadableMap;)V
    .locals 3
    .param p1, "handlerTag"    # I
    .param p2, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "TT;>;>(I",
            "Lcom/facebook/react/bridge/ReadableMap;",
            ")V"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->getHandler(I)Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v0

    .line 398
    .local v0, "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    if-eqz v0, :cond_0

    .line 399
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->findFactoryForHandler(Lcom/swmansion/gesturehandler/core/GestureHandler;)Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;

    move-result-object v1

    .line 400
    .local v1, "factory":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    if-eqz v1, :cond_0

    .line 401
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-virtual {v2, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->dropRelationsForHandlerWithTag(I)V

    .line 402
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-virtual {v2, v0, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->configureInteractions(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 403
    invoke-virtual {v1, v0, p2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;->configure(Lcom/swmansion/gesturehandler/core/GestureHandler;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 406
    .end local v1    # "factory":Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$HandlerFactory;
    :cond_0
    return-void
.end method


# virtual methods
.method public attachGestureHandler(DDD)V
    .locals 6
    .param p1, "handlerTagDouble"    # D
    .param p3, "viewTagDouble"    # D
    .param p5, "actionTypeDouble"    # D
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 383
    double-to-int v0, p1

    .line 384
    .local v0, "handlerTag":I
    double-to-int v1, p3

    .line 385
    .local v1, "viewTag":I
    double-to-int v2, p5

    .line 390
    .local v2, "actionType":I
    iget-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v3, v0, v1, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->attachHandlerToView(III)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    return-void

    .line 391
    :cond_0
    new-instance v3, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Handler with tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public createGestureHandler(Ljava/lang/String;DLcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "handlerName"    # Ljava/lang/String;
    .param p2, "handlerTagDouble"    # D
    .param p4, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "handlerName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    double-to-int v0, p2

    .line 378
    .local v0, "handlerTag":I
    invoke-direct {p0, p1, v0, p4}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->createGestureHandlerHelper(Ljava/lang/String;ILcom/facebook/react/bridge/ReadableMap;)V

    .line 379
    return-void
.end method

.method public dropGestureHandler(D)V
    .locals 2
    .param p1, "handlerTagDouble"    # D
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 417
    double-to-int v0, p1

    .line 418
    .local v0, "handlerTag":I
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-virtual {v1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->dropRelationsForHandlerWithTag(I)V

    .line 419
    iget-object v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->dropHandler(I)V

    .line 420
    return-void
.end method

.method public flushOperations()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 435
    return-void
.end method

.method public getConstants()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 468
    const/4 v0, 0x2

    .line 470
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 468
    new-array v2, v0, [Lkotlin/Pair;

    .line 469
    const/4 v3, 0x6

    new-array v3, v3, [Lkotlin/Pair;

    const-string v4, "UNDETERMINED"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, v5

    .line 470
    const-string v4, "BEGAN"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    const/4 v6, 0x1

    .line 473
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 470
    aput-object v4, v3, v6

    .line 469
    nop

    .line 471
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "ACTIVE"

    invoke-static {v9, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v0

    .line 469
    nop

    .line 472
    const-string v9, "CANCELLED"

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v9, v11}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v10

    .line 469
    nop

    .line 473
    const-string v9, "FAILED"

    invoke-static {v9, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v4

    .line 469
    nop

    .line 474
    const-string v9, "END"

    const/4 v11, 0x5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v9, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v9

    aput-object v9, v3, v11

    .line 469
    nop

    .line 468
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v3

    const-string v9, "State"

    invoke-static {v9, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    aput-object v3, v2, v5

    .line 476
    nop

    .line 477
    new-array v3, v4, [Lkotlin/Pair;

    const-string v4, "RIGHT"

    invoke-static {v4, v7}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    aput-object v4, v3, v5

    .line 478
    const-string v4, "LEFT"

    invoke-static {v4, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v6

    .line 477
    nop

    .line 479
    const-string v1, "UP"

    invoke-static {v1, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v3, v0

    .line 477
    nop

    .line 480
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DOWN"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v3, v10

    .line 477
    nop

    .line 476
    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "Direction"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v2, v6

    .line 468
    nop

    .line 467
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 340
    const-string v0, "RNGestureHandlerModule"

    return-object v0
.end method

.method public final getRegistry()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    return-object v0
.end method

.method public handleClearJSResponder()V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 431
    return-void
.end method

.method public handleSetJSResponder(DZ)V
    .locals 2
    .param p1, "viewTagDouble"    # D
    .param p3, "blockNativeResponder"    # Z
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 424
    double-to-int v0, p1

    .line 425
    .local v0, "viewTag":I
    invoke-direct {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->findRootHelperForViewAncestor(I)Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    move-result-object v1

    .line 426
    .local v1, "rootView":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->handleSetJSResponder(IZ)V

    .line 427
    :cond_0
    return-void
.end method

.method public install()Z
    .locals 2
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
        isBlockingSynchronousMethod = true
    .end annotation

    .line 451
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    new-instance v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule$$ExternalSyntheticLambda0;-><init>(Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;)V

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->runOnJSQueueThread(Ljava/lang/Runnable;)Z

    .line 461
    const/4 v0, 0x1

    return v0
.end method

.method public invalidate()V
    .locals 6

    .line 486
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->dropAllHandlers()V

    .line 487
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->interactionManager:Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;

    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerInteractionManager;->reset()V

    .line 488
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 489
    .local v1, "$i$a$-synchronized-RNGestureHandlerModule$invalidate$1":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 490
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 491
    .local v2, "sizeBefore":I
    iget-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    .line 492
    .local v3, "root":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    invoke-virtual {v3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;->tearDown()V

    .line 493
    iget-object v4, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v2, :cond_0

    goto :goto_0

    .line 494
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Expected root helper to get unregistered while tearing down"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 497
    .end local v2    # "sizeBefore":I
    .end local v3    # "root":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    :cond_1
    nop

    .end local v1    # "$i$a$-synchronized-RNGestureHandlerModule$invalidate$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    monitor-exit v0

    .line 498
    invoke-super {p0}, Lcom/swmansion/gesturehandler/NativeRNGestureHandlerModuleSpec;->invalidate()V

    .line 499
    return-void

    .line 488
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final registerRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 5
    .param p1, "root"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 503
    .local v1, "$i$a$-synchronized-RNGestureHandlerModule$registerRootHelper$1":I
    :try_start_0
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    .end local v1    # "$i$a$-synchronized-RNGestureHandlerModule$registerRootHelper$1":I
    monitor-exit v0

    .line 508
    return-void

    .line 504
    .restart local v1    # "$i$a$-synchronized-RNGestureHandlerModule$registerRootHelper$1":I
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Root helper"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "root":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 502
    .end local v1    # "$i$a$-synchronized-RNGestureHandlerModule$registerRootHelper$1":I
    .restart local p1    # "root":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setGestureHandlerState(II)V
    .locals 3
    .param p1, "handlerTag"    # I
    .param p2, "newState"    # I

    .line 438
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->registry:Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;

    invoke-virtual {v0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRegistry;->getHandler(I)Lcom/swmansion/gesturehandler/core/GestureHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .local v0, "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    const/4 v1, 0x0

    .line 439
    .local v1, "$i$a$-let-RNGestureHandlerModule$setGestureHandlerState$1":I
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 442
    :pswitch_0
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->end()V

    goto :goto_0

    .line 440
    :pswitch_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/swmansion/gesturehandler/core/GestureHandler;->activate(Z)V

    goto :goto_0

    .line 444
    :pswitch_2
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->cancel()V

    goto :goto_0

    .line 441
    :pswitch_3
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->begin()V

    goto :goto_0

    .line 443
    :pswitch_4
    invoke-virtual {v0}, Lcom/swmansion/gesturehandler/core/GestureHandler;->fail()V

    .line 446
    :goto_0
    nop

    .line 438
    .end local v0    # "handler":Lcom/swmansion/gesturehandler/core/GestureHandler;
    .end local v1    # "$i$a$-let-RNGestureHandlerModule$setGestureHandlerState$1":I
    nop

    .line 447
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final unregisterRootHelper(Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;)V
    .locals 3
    .param p1, "root"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootHelper;

    const-string v0, "root"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    monitor-enter v0

    .line 744
    const/4 v1, 0x0

    .line 511
    .local v1, "$i$a$-synchronized-RNGestureHandlerModule$unregisterRootHelper$1":I
    :try_start_0
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->roots:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-synchronized-RNGestureHandlerModule$unregisterRootHelper$1":I
    monitor-exit v0

    .line 512
    return-void

    .line 511
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public updateGestureHandler(DLcom/facebook/react/bridge/ReadableMap;)V
    .locals 1
    .param p1, "handlerTagDouble"    # D
    .param p3, "config"    # Lcom/facebook/react/bridge/ReadableMap;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    const-string v0, "config"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    double-to-int v0, p1

    .line 412
    .local v0, "handlerTag":I
    invoke-direct {p0, v0, p3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerModule;->updateGestureHandlerHelper(ILcom/facebook/react/bridge/ReadableMap;)V

    .line 413
    return-void
.end method
