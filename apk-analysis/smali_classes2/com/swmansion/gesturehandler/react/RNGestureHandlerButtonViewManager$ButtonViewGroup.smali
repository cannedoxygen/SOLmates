.class public final Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
.super Landroid/view/ViewGroup;
.source "RNGestureHandlerButtonViewManager.kt"

# interfaces
.implements Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ButtonViewGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRNGestureHandlerButtonViewManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RNGestureHandlerButtonViewManager.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,537:1\n212#1,3:538\n212#1,3:541\n212#1,3:544\n212#1,3:547\n212#1,3:550\n212#1,3:553\n212#1,3:556\n212#1,3:559\n212#1,3:562\n212#1,3:565\n212#1,3:568\n212#1,3:575\n11115#2:571\n11450#2,3:572\n*S KotlinDebug\n*F\n+ 1 RNGestureHandlerButtonViewManager.kt\ncom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup\n*L\n139#1:538,3\n144#1:541,3\n148#1:544,3\n153#1:547,3\n157#1:550,3\n161#1:553,3\n165#1:556,3\n169#1:559,3\n173#1:562,3\n177#1:565,3\n181#1:568,3\n240#1:575,3\n228#1:571\n228#1:572,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0013\n\u0002\u0010\u000e\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 y2\u00020\u00012\u00020\u0002:\u0001yB\u000f\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010I\u001a\u00020J2\u0006\u0010K\u001a\u00020LH\u0016J\u0008\u0010M\u001a\u00020NH\u0002J\n\u0010O\u001a\u0004\u0018\u00010PH\u0002J\u0010\u0010Q\u001a\u00020.2\u0006\u0010K\u001a\u00020LH\u0016J\u0008\u0010R\u001a\u00020SH\u0002J\n\u0010T\u001a\u0004\u0018\u00010SH\u0002J\u0018\u0010U\u001a\u00020J2\u0006\u0010V\u001a\u00020\t2\u0006\u0010W\u001a\u00020\tH\u0016J\u0018\u0010X\u001a\u00020J2\u0006\u0010V\u001a\u00020\t2\u0006\u0010W\u001a\u00020\tH\u0016J\n\u0010Y\u001a\u0004\u0018\u00010ZH\u0002J\u0018\u0010[\u001a\u00020.2\u000e\u0008\u0002\u0010\\\u001a\u0008\u0012\u0004\u0012\u00020^0]H\u0002J\u0010\u0010_\u001a\u00020.2\u0006\u0010`\u001a\u00020LH\u0016J\u001a\u0010a\u001a\u00020.2\u0006\u0010b\u001a\u00020\u00072\u0008\u0010K\u001a\u0004\u0018\u00010cH\u0016J0\u0010d\u001a\u00020J2\u0006\u0010e\u001a\u00020.2\u0006\u0010f\u001a\u00020\u00072\u0006\u0010g\u001a\u00020\u00072\u0006\u0010h\u001a\u00020\u00072\u0006\u0010i\u001a\u00020\u0007H\u0014J\u0010\u0010j\u001a\u00020.2\u0006\u0010K\u001a\u00020LH\u0017J\u0008\u0010k\u001a\u00020.H\u0016J\u0010\u0010l\u001a\u00020J2\u0006\u0010\u0012\u001a\u00020\u0007H\u0016J\u0010\u0010m\u001a\u00020J2\u0006\u0010n\u001a\u00020.H\u0016J\u0008\u0010o\u001a\u00020JH\u0002J\u0008\u0010p\u001a\u00020.H\u0002J\u0006\u0010q\u001a\u00020JJ\"\u0010r\u001a\u00020J2\u0006\u0010s\u001a\u00020\u00072\u0006\u0010t\u001a\u00020S2\u0008\u0010u\u001a\u0004\u0018\u00010SH\u0002J\u0017\u0010v\u001a\u00020J2\u000c\u0010w\u001a\u0008\u0012\u0004\u0012\u00020J0xH\u0082\u0008R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R$\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR*\u0010\u0013\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R$\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u000c\"\u0004\u0008\u001b\u0010\u000eR(\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001d@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R$\u0010#\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u000c\"\u0004\u0008%\u0010\u000eR$\u0010&\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u000c\"\u0004\u0008(\u0010\u000eR$\u0010*\u001a\u00020\t2\u0006\u0010)\u001a\u00020\t@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\u000c\"\u0004\u0008,\u0010\u000eR\u001a\u0010-\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102R\u0014\u00103\u001a\u00020.8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00084\u00100R\u001a\u00105\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u00100\"\u0004\u00086\u00102R\u000e\u00107\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u00108\u001a\u000209X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010:\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010;\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010<\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0007@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\u0008=\u0010\u0015\"\u0004\u0008>\u0010\u0017R*\u0010?\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0018\u001a\u0004\u0008@\u0010\u0015\"\u0004\u0008A\u0010\u0017R\u001a\u0010B\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008C\u00100\"\u0004\u0008D\u00102R$\u0010F\u001a\u00020.2\u0006\u0010E\u001a\u00020.@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008G\u00100\"\u0004\u0008H\u00102\u00a8\u0006z"
    }
    d2 = {
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;",
        "Landroid/view/ViewGroup;",
        "Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "_backgroundColor",
        "",
        "radius",
        "",
        "borderBottomLeftRadius",
        "getBorderBottomLeftRadius",
        "()F",
        "setBorderBottomLeftRadius",
        "(F)V",
        "borderBottomRightRadius",
        "getBorderBottomRightRadius",
        "setBorderBottomRightRadius",
        "color",
        "borderColor",
        "getBorderColor",
        "()Ljava/lang/Integer;",
        "setBorderColor",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "borderRadius",
        "getBorderRadius",
        "setBorderRadius",
        "style",
        "",
        "borderStyle",
        "getBorderStyle",
        "()Ljava/lang/String;",
        "setBorderStyle",
        "(Ljava/lang/String;)V",
        "borderTopLeftRadius",
        "getBorderTopLeftRadius",
        "setBorderTopLeftRadius",
        "borderTopRightRadius",
        "getBorderTopRightRadius",
        "setBorderTopRightRadius",
        "width",
        "borderWidth",
        "getBorderWidth",
        "setBorderWidth",
        "exclusive",
        "",
        "getExclusive",
        "()Z",
        "setExclusive",
        "(Z)V",
        "hasBorderRadii",
        "getHasBorderRadii",
        "isTouched",
        "setTouched",
        "lastAction",
        "lastEventTime",
        "",
        "needBackgroundUpdate",
        "receivedKeyEvent",
        "rippleColor",
        "getRippleColor",
        "setRippleColor",
        "rippleRadius",
        "getRippleRadius",
        "setRippleRadius",
        "useBorderlessDrawable",
        "getUseBorderlessDrawable",
        "setUseBorderlessDrawable",
        "useForeground",
        "useDrawableOnForeground",
        "getUseDrawableOnForeground",
        "setUseDrawableOnForeground",
        "afterGestureEnd",
        "",
        "event",
        "Landroid/view/MotionEvent;",
        "buildBorderRadii",
        "",
        "buildBorderStyle",
        "Landroid/graphics/PathEffect;",
        "canBegin",
        "createBorderDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "createSelectableDrawable",
        "dispatchDrawableHotspotChanged",
        "x",
        "y",
        "drawableHotspotChanged",
        "findGestureHandlerRootView",
        "Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;",
        "isChildTouched",
        "children",
        "Lkotlin/sequences/Sequence;",
        "Landroid/view/View;",
        "onInterceptTouchEvent",
        "ev",
        "onKeyUp",
        "keyCode",
        "Landroid/view/KeyEvent;",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onTouchEvent",
        "performClick",
        "setBackgroundColor",
        "setPressed",
        "pressed",
        "tryFreeingResponder",
        "tryGrabbingResponder",
        "updateBackground",
        "updateBackgroundColor",
        "backgroundColor",
        "borderDrawable",
        "selectable",
        "withBackgroundUpdate",
        "block",
        "Lkotlin/Function0;",
        "Companion",
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
.field public static final Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;

.field private static dummyClickListener:Landroid/view/View$OnClickListener;

.field private static resolveOutValue:Landroid/util/TypedValue;

.field private static soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

.field private static touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;


# instance fields
.field private _backgroundColor:I

.field private borderBottomLeftRadius:F

.field private borderBottomRightRadius:F

.field private borderColor:Ljava/lang/Integer;

.field private borderRadius:F

.field private borderStyle:Ljava/lang/String;

.field private borderTopLeftRadius:F

.field private borderTopRightRadius:F

.field private borderWidth:F

.field private exclusive:Z

.field private isTouched:Z

.field private lastAction:I

.field private lastEventTime:J

.field private needBackgroundUpdate:Z

.field private receivedKeyEvent:Z

.field private rippleColor:Ljava/lang/Integer;

.field private rippleRadius:Ljava/lang/Integer;

.field private useBorderlessDrawable:Z

.field private useDrawableOnForeground:Z


# direct methods
.method public static synthetic $r8$lambda$1r2X1TrXYvS1Dkh-vrdW5Q515A8(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener$lambda$14(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->Companion:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$Companion;

    .line 526
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    .line 529
    new-instance v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 135
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 180
    const-string v0, "solid"

    iput-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderStyle:Ljava/lang/String;

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    .line 196
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastEventTime:J

    .line 197
    const/4 v1, -0x1

    iput v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastAction:I

    .line 202
    nop

    .line 204
    sget-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setClickable(Z)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setFocusable(Z)V

    .line 207
    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 208
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setClipChildren(Z)V

    .line 209
    nop

    .line 134
    return-void
.end method

.method public static final synthetic access$getDummyClickListener$cp()Landroid/view/View$OnClickListener;
    .locals 1

    .line 134
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public static final synthetic access$getResolveOutValue$cp()Landroid/util/TypedValue;
    .locals 1

    .line 134
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    return-object v0
.end method

.method public static final synthetic access$getSoundResponder$cp()Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .locals 1

    .line 134
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return-object v0
.end method

.method public static final synthetic access$getTouchResponder$cp()Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .locals 1

    .line 134
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return-object v0
.end method

.method public static final synthetic access$setDummyClickListener$cp(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p0, "<set-?>"    # Landroid/view/View$OnClickListener;

    .line 134
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->dummyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static final synthetic access$setResolveOutValue$cp(Landroid/util/TypedValue;)V
    .locals 0
    .param p0, "<set-?>"    # Landroid/util/TypedValue;

    .line 134
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    return-void
.end method

.method public static final synthetic access$setSoundResponder$cp(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    .line 134
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return-void
.end method

.method public static final synthetic access$setTouchResponder$cp(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    .line 134
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    return-void
.end method

.method private final buildBorderRadii()[F
    .locals 13

    .line 219
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopLeftRadius:F

    .line 220
    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopLeftRadius:F

    .line 219
    nop

    .line 221
    iget v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopRightRadius:F

    .line 219
    nop

    .line 222
    iget v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopRightRadius:F

    .line 219
    nop

    .line 223
    iget v4, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomRightRadius:F

    .line 219
    nop

    .line 224
    iget v5, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomRightRadius:F

    .line 219
    nop

    .line 225
    iget v6, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomLeftRadius:F

    .line 219
    nop

    .line 226
    iget v7, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomLeftRadius:F

    const/16 v8, 0x8

    new-array v8, v8, [F

    const/4 v9, 0x0

    aput v0, v8, v9

    const/4 v0, 0x1

    aput v1, v8, v0

    const/4 v1, 0x2

    aput v2, v8, v1

    const/4 v1, 0x3

    aput v3, v8, v1

    const/4 v1, 0x4

    aput v4, v8, v1

    const/4 v1, 0x5

    aput v5, v8, v1

    const/4 v1, 0x6

    aput v6, v8, v1

    const/4 v1, 0x7

    aput v7, v8, v1

    .line 219
    nop

    .line 228
    move-object v1, v8

    .local v1, "$this$map$iv":[F
    const/4 v2, 0x0

    .line 571
    .local v2, "$i$f$map":I
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$mapTo$iv$iv":[F
    const/4 v5, 0x0

    .line 572
    .local v5, "$i$f$mapTo":I
    array-length v6, v4

    move v7, v9

    :goto_0
    if-ge v7, v6, :cond_2

    aget v8, v4, v7

    .line 573
    .local v8, "item$iv$iv":F
    move v10, v8

    .local v10, "it":F
    const/4 v11, 0x0

    .line 228
    .local v11, "$i$a$-map-RNGestureHandlerButtonViewManager$ButtonViewGroup$buildBorderRadii$1":I
    const/4 v12, 0x0

    cmpg-float v12, v10, v12

    if-nez v12, :cond_0

    move v12, v0

    goto :goto_1

    :cond_0
    move v12, v9

    :goto_1
    if-nez v12, :cond_1

    goto :goto_2

    :cond_1
    iget v12, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    move v10, v12

    .end local v10    # "it":F
    .end local v11    # "$i$a$-map-RNGestureHandlerButtonViewManager$ButtonViewGroup$buildBorderRadii$1":I
    :goto_2
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    .line 573
    invoke-interface {v3, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 572
    .end local v8    # "item$iv$iv":F
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 574
    :cond_2
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$mapTo$iv$iv":[F
    .end local v5    # "$i$f$mapTo":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 571
    nop

    .end local v1    # "$this$map$iv":[F
    .end local v2    # "$i$f$map":I
    check-cast v0, Ljava/util/Collection;

    .line 229
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toFloatArray(Ljava/util/Collection;)[F

    move-result-object v0

    .line 218
    return-object v0
.end method

.method private final buildBorderStyle()Landroid/graphics/PathEffect;
    .locals 12

    .line 233
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderStyle:Ljava/lang/String;

    .line 234
    const-string v1, "dotted"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/DashPathEffect;

    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    iget v8, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    iget v9, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    iget v10, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    new-array v6, v6, [F

    aput v1, v6, v5

    aput v8, v6, v4

    aput v9, v6, v3

    aput v10, v6, v7

    invoke-direct {v0, v6, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    check-cast v0, Landroid/graphics/PathEffect;

    goto :goto_0

    .line 235
    :cond_0
    const-string v1, "dashed"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/DashPathEffect;

    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    int-to-float v8, v7

    mul-float/2addr v1, v8

    iget v9, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    mul-float/2addr v9, v8

    iget v10, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    mul-float/2addr v10, v8

    iget v11, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    mul-float/2addr v11, v8

    new-array v6, v6, [F

    aput v1, v6, v5

    aput v9, v6, v4

    aput v10, v6, v3

    aput v11, v6, v7

    invoke-direct {v0, v6, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    check-cast v0, Landroid/graphics/PathEffect;

    goto :goto_0

    .line 236
    :cond_1
    const/4 v0, 0x0

    .line 233
    :goto_0
    return-object v0
.end method

.method private final createBorderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 337
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 339
    .local v0, "borderDrawable":Landroid/graphics/drawable/PaintDrawable;
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getHasBorderRadii()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->buildBorderRadii()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 343
    :cond_0
    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 344
    invoke-virtual {v0}, Landroid/graphics/drawable/PaintDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .local v1, "$this$createBorderDrawable_u24lambda_u2413":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 345
    .local v2, "$i$a$-apply-RNGestureHandlerButtonViewManager$ButtonViewGroup$createBorderDrawable$1":I
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 346
    iget v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 347
    iget-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderColor:Ljava/lang/Integer;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    const/high16 v3, -0x1000000

    :goto_0
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->buildBorderStyle()Landroid/graphics/PathEffect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 349
    nop

    .line 344
    .end local v1    # "$this$createBorderDrawable_u24lambda_u2413":Landroid/graphics/Paint;
    .end local v2    # "$i$a$-apply-RNGestureHandlerButtonViewManager$ButtonViewGroup$createBorderDrawable$1":I
    nop

    .line 352
    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private final createSelectableDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 357
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 358
    return-object v1

    .line 361
    :cond_1
    :goto_0
    const v0, 0x101009e

    filled-new-array {v0}, [I

    move-result-object v0

    filled-new-array {v0}, [[I

    move-result-object v0

    .line 362
    .local v0, "states":[[I
    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleRadius:Ljava/lang/Integer;

    .line 363
    .local v2, "rippleRadius":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 364
    iget-object v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    filled-new-array {v3}, [I

    move-result-object v3

    .line 365
    .local v3, "colors":[I
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .end local v3    # "colors":[I
    goto :goto_1

    .line 368
    :cond_2
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    const/4 v5, 0x1

    const v6, 0x101042c

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 369
    sget-object v3, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->resolveOutValue:Landroid/util/TypedValue;

    iget v3, v3, Landroid/util/TypedValue;->data:I

    filled-new-array {v3}, [I

    move-result-object v3

    .line 370
    .restart local v3    # "colors":[I
    new-instance v4, Landroid/content/res/ColorStateList;

    invoke-direct {v4, v0, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 363
    .end local v3    # "colors":[I
    :goto_1
    move-object v3, v4

    .line 373
    .local v3, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    .line 374
    nop

    .line 375
    nop

    .line 376
    iget-boolean v5, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useBorderlessDrawable:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    goto :goto_2

    :cond_3
    new-instance v5, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v6, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v6}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    check-cast v6, Landroid/graphics/drawable/shapes/Shape;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    :goto_2
    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 373
    invoke-direct {v4, v3, v1, v5}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v4

    .line 379
    .local v1, "drawable":Landroid/graphics/drawable/RippleDrawable;
    if-eqz v2, :cond_4

    .line 380
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-static {v4}, Lcom/facebook/react/uimanager/PixelUtil;->toPixelFromDIP(F)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    .line 383
    :cond_4
    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/Drawable;

    return-object v4
.end method

.method private static final dummyClickListener$lambda$14(Landroid/view/View;)V
    .locals 0
    .param p0, "it"    # Landroid/view/View;

    .line 529
    return-void
.end method

.method private final findGestureHandlerRootView()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;
    .locals 3

    .line 512
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 513
    .local v0, "parent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    .line 515
    .local v1, "gestureHandlerRootView":Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;
    :goto_0
    if-eqz v0, :cond_1

    .line 516
    instance-of v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;

    if-eqz v2, :cond_0

    .line 517
    move-object v1, v0

    check-cast v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;

    .line 519
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 522
    :cond_1
    return-object v1
.end method

.method private final getHasBorderRadii()Z
    .locals 4

    .line 186
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    if-eqz v0, :cond_6

    .line 187
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopLeftRadius:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-eqz v0, :cond_6

    .line 188
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopRightRadius:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_2

    :cond_2
    move v0, v3

    :goto_2
    if-eqz v0, :cond_6

    .line 189
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomLeftRadius:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    if-eqz v0, :cond_6

    .line 190
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomRightRadius:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v3

    :goto_4
    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move v2, v3

    goto :goto_6

    :cond_6
    :goto_5
    nop

    :goto_6
    return v2
.end method

.method private final isChildTouched(Lkotlin/sequences/Sequence;)Z
    .locals 4
    .param p1, "children"    # Lkotlin/sequences/Sequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/sequences/Sequence<",
            "+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 437
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 438
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    iget-boolean v2, v2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    if-nez v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    invoke-virtual {v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 439
    :cond_1
    return v3

    .line 440
    :cond_2
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 441
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched(Lkotlin/sequences/Sequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    return v3

    .line 447
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z
    .locals 0

    .line 436
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    move-object p1, p0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched(Lkotlin/sequences/Sequence;)Z

    move-result p0

    return p0
.end method

.method private final tryFreeingResponder()V
    .locals 1

    .line 414
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-ne v0, p0, :cond_0

    .line 415
    const/4 v0, 0x0

    sput-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    .line 416
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    .line 418
    :cond_0
    return-void
.end method

.method private final tryGrabbingResponder()Z
    .locals 3

    .line 421
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 422
    return v2

    .line 425
    :cond_0
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-nez v0, :cond_1

    .line 426
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    .line 427
    return v1

    .line 429
    :cond_1
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    if-eqz v0, :cond_3

    .line 430
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_1

    .line 432
    :cond_3
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    .line 429
    :goto_1
    return v1
.end method

.method private final updateBackgroundColor(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "backgroundColor"    # I
    .param p2, "borderDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "selectable"    # Landroid/graphics/drawable/Drawable;

    .line 290
    new-instance v0, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 292
    .local v0, "colorDrawable":Landroid/graphics/drawable/PaintDrawable;
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getHasBorderRadii()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->buildBorderRadii()[F

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 296
    :cond_0
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz p3, :cond_1

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v3

    aput-object p3, v5, v2

    aput-object p2, v5, v4

    goto :goto_0

    :cond_1
    new-array v5, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v5, v3

    aput-object p2, v5, v2

    :goto_0
    invoke-direct {v1, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 297
    .local v1, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 298
    return-void
.end method

.method private final withBackgroundUpdate(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 212
    .local v0, "$i$f$withBackgroundUpdate":I
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 213
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 214
    return-void
.end method


# virtual methods
.method public afterGestureEnd(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 409
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryFreeingResponder()V

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    .line 411
    return-void
.end method

.method public canBegin(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryGrabbingResponder()Z

    move-result v0

    .line 402
    .local v0, "isResponder":Z
    if-eqz v0, :cond_1

    .line 403
    iput-boolean v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    .line 405
    :cond_1
    return v0

    .line 398
    .end local v0    # "isResponder":Z
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchDrawableHotspotChanged(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 509
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 391
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-ne v0, p0, :cond_1

    .line 392
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->drawableHotspotChanged(FF)V

    .line 394
    :cond_1
    return-void
.end method

.method public final getBorderBottomLeftRadius()F
    .locals 1

    .line 164
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomLeftRadius:F

    return v0
.end method

.method public final getBorderBottomRightRadius()F
    .locals 1

    .line 168
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomRightRadius:F

    return v0
.end method

.method public final getBorderColor()Ljava/lang/Integer;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getBorderRadius()F
    .locals 1

    .line 152
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    return v0
.end method

.method public final getBorderStyle()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderStyle:Ljava/lang/String;

    return-object v0
.end method

.method public final getBorderTopLeftRadius()F
    .locals 1

    .line 156
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopLeftRadius:F

    return v0
.end method

.method public final getBorderTopRightRadius()F
    .locals 1

    .line 160
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopRightRadius:F

    return v0
.end method

.method public final getBorderWidth()F
    .locals 1

    .line 172
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    return v0
.end method

.method public final getExclusive()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    return v0
.end method

.method public final getRippleColor()Ljava/lang/Integer;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRippleRadius()Ljava/lang/Integer;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleRadius:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUseBorderlessDrawable()Z
    .locals 1

    .line 151
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useBorderlessDrawable:Z

    return v0
.end method

.method public final getUseDrawableOnForeground()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useDrawableOnForeground:Z

    return v0
.end method

.method public handleEventBeforeActivation(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 134
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->handleEventBeforeActivation(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final isTouched()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const/4 v0, 0x1

    return v0

    .line 250
    :cond_0
    invoke-virtual {p0, p1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 251
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isPressed()Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 451
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->receivedKeyEvent:Z

    .line 452
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 388
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 274
    .local v0, "eventTime":J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 276
    .local v2, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryFreeingResponder()V

    .line 281
    :cond_0
    iget-wide v5, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastEventTime:J

    cmp-long v3, v5, v0

    if-nez v3, :cond_2

    iget v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastAction:I

    if-ne v3, v2, :cond_2

    if-ne v2, v4, :cond_1

    goto :goto_0

    .line 286
    :cond_1
    const/4 v3, 0x0

    return v3

    .line 282
    :cond_2
    :goto_0
    iput-wide v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastEventTime:J

    .line 283
    iput v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->lastAction:I

    .line 284
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public performClick()Z
    .locals 4

    .line 458
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 460
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "getContext(...)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/swmansion/gesturehandler/react/ExtensionsKt;->isScreenReaderOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->findGestureHandlerRootView()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v3, p0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;->activateNativeHandlers(Landroid/view/View;)V

    goto :goto_0

    .line 462
    :cond_0
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->receivedKeyEvent:Z

    if-eqz v0, :cond_2

    .line 463
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->findGestureHandlerRootView()Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v3, p0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerRootView;->activateNativeHandlers(Landroid/view/View;)V

    .line 464
    :cond_1
    iput-boolean v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->receivedKeyEvent:Z

    .line 467
    :cond_2
    :goto_0
    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-ne v0, p0, :cond_3

    .line 468
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryFreeingResponder()V

    .line 469
    sput-object v1, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    .line 470
    invoke-super {p0}, Landroid/view/ViewGroup;->performClick()Z

    move-result v2

    goto :goto_1

    .line 472
    :cond_3
    goto :goto_1

    .line 475
    :cond_4
    nop

    .line 458
    :goto_1
    return v2
.end method

.method public setBackgroundColor(I)V
    .locals 3
    .param p1, "color"    # I

    .line 240
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 575
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 241
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$setBackgroundColor$1":I
    iput p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    .line 242
    nop

    .line 575
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$setBackgroundColor$1":I
    nop

    .line 576
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 577
    nop

    .line 242
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public final setBorderBottomLeftRadius(F)V
    .locals 4
    .param p1, "radius"    # F

    .line 165
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 556
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 166
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderBottomLeftRadius$1":I
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p1

    iput v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomLeftRadius:F

    .line 167
    nop

    .line 556
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderBottomLeftRadius$1":I
    nop

    .line 557
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 558
    nop

    .line 167
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public final setBorderBottomRightRadius(F)V
    .locals 4
    .param p1, "radius"    # F

    .line 169
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 559
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 170
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderBottomRightRadius$1":I
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p1

    iput v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderBottomRightRadius:F

    .line 171
    nop

    .line 559
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderBottomRightRadius$1":I
    nop

    .line 560
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 561
    nop

    .line 171
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public final setBorderColor(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/Integer;

    .line 177
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 565
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 178
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderColor$1":I
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderColor:Ljava/lang/Integer;

    .line 179
    nop

    .line 565
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderColor$1":I
    nop

    .line 566
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 567
    nop

    .line 179
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public final setBorderRadius(F)V
    .locals 4
    .param p1, "radius"    # F

    .line 153
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 547
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 154
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderRadius$1":I
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p1

    iput v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderRadius:F

    .line 155
    nop

    .line 547
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderRadius$1":I
    nop

    .line 548
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 549
    nop

    .line 155
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public final setBorderStyle(Ljava/lang/String;)V
    .locals 3
    .param p1, "style"    # Ljava/lang/String;

    .line 181
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 568
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 182
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderStyle$1":I
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderStyle:Ljava/lang/String;

    .line 183
    nop

    .line 568
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderStyle$1":I
    nop

    .line 569
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 570
    nop

    .line 183
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public final setBorderTopLeftRadius(F)V
    .locals 4
    .param p1, "radius"    # F

    .line 157
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 550
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 158
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderTopLeftRadius$1":I
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p1

    iput v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopLeftRadius:F

    .line 159
    nop

    .line 550
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderTopLeftRadius$1":I
    nop

    .line 551
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 552
    nop

    .line 159
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public final setBorderTopRightRadius(F)V
    .locals 4
    .param p1, "radius"    # F

    .line 161
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 553
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 162
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderTopRightRadius$1":I
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p1

    iput v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderTopRightRadius:F

    .line 163
    nop

    .line 553
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderTopRightRadius$1":I
    nop

    .line 554
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 555
    nop

    .line 163
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public final setBorderWidth(F)V
    .locals 4
    .param p1, "width"    # F

    .line 173
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 562
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 174
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderWidth$1":I
    invoke-virtual {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, p1

    iput v3, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->borderWidth:F

    .line 175
    nop

    .line 562
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$borderWidth$1":I
    nop

    .line 563
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 564
    nop

    .line 175
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public final setExclusive(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 192
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    return-void
.end method

.method public setPressed(Z)V
    .locals 3
    .param p1, "pressed"    # Z

    .line 485
    if-eqz p1, :cond_0

    .line 486
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->tryGrabbingResponder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 487
    sput-object p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->soundResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    .line 492
    :cond_0
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->exclusive:Z

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-static {p0, v0, v2, v0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isChildTouched$default(Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;Lkotlin/sequences/Sequence;ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    move v0, v2

    .line 494
    .local v0, "canBePressedAlongsideOther":Z
    if-eqz p1, :cond_3

    sget-object v2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-eq v2, p0, :cond_3

    if-eqz v0, :cond_4

    .line 497
    :cond_3
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    .line 498
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 500
    :cond_4
    if-nez p1, :cond_5

    sget-object v2, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->touchResponder:Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;

    if-ne v2, p0, :cond_5

    .line 502
    iput-boolean v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    .line 504
    :cond_5
    return-void
.end method

.method public final setRippleColor(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "color"    # Ljava/lang/Integer;

    .line 139
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 538
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 140
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$rippleColor$1":I
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    .line 141
    nop

    .line 538
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$rippleColor$1":I
    nop

    .line 539
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 540
    nop

    .line 141
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public final setRippleRadius(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "radius"    # Ljava/lang/Integer;

    .line 144
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 541
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 145
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$rippleRadius$1":I
    iput-object p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleRadius:Ljava/lang/Integer;

    .line 146
    nop

    .line 541
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$rippleRadius$1":I
    nop

    .line 542
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 543
    nop

    .line 146
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public final setTouched(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 200
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->isTouched:Z

    return-void
.end method

.method public final setUseBorderlessDrawable(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 151
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useBorderlessDrawable:Z

    return-void
.end method

.method public final setUseDrawableOnForeground(Z)V
    .locals 3
    .param p1, "useForeground"    # Z

    .line 148
    move-object v0, p0

    .local v0, "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    const/4 v1, 0x0

    .line 544
    .local v1, "$i$f$withBackgroundUpdate":I
    const/4 v2, 0x0

    .line 149
    .local v2, "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$useDrawableOnForeground$1":I
    iput-boolean p1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useDrawableOnForeground:Z

    .line 150
    nop

    .line 544
    .end local v2    # "$i$a$-withBackgroundUpdate-RNGestureHandlerButtonViewManager$ButtonViewGroup$useDrawableOnForeground$1":I
    nop

    .line 545
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 546
    nop

    .line 150
    .end local v0    # "this_$iv":Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;
    .end local v1    # "$i$f$withBackgroundUpdate":I
    return-void
.end method

.method public shouldCancelRootViewGestureHandlerIfNecessary()Z
    .locals 1

    .line 134
    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->shouldCancelRootViewGestureHandlerIfNecessary(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;)Z

    move-result v0

    return v0
.end method

.method public shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/GestureHandler;)Z
    .locals 1
    .param p1, "handler"    # Lcom/swmansion/gesturehandler/core/GestureHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/swmansion/gesturehandler/core/GestureHandler<",
            "*>;)Z"
        }
    .end annotation

    .line 134
    invoke-static {p0, p1}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->shouldRecognizeSimultaneously(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;Lcom/swmansion/gesturehandler/core/GestureHandler;)Z

    move-result v0

    return v0
.end method

.method public final updateBackground()V
    .locals 8

    .line 301
    iget-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->needBackgroundUpdate:Z

    .line 306
    iget v1, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 308
    invoke-virtual {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 310
    :cond_1
    nop

    .line 312
    invoke-virtual {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 315
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->createSelectableDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 316
    .local v1, "selectable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->createBorderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 318
    .local v3, "borderDrawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->getHasBorderRadii()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v4, :cond_2

    .line 319
    new-instance v4, Landroid/graphics/drawable/PaintDrawable;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    .line 320
    .local v4, "mask":Landroid/graphics/drawable/PaintDrawable;
    invoke-direct {p0}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->buildBorderRadii()[F

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadii([F)V

    .line 321
    move-object v5, v1

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    const v6, 0x102002e

    move-object v7, v4

    check-cast v7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    .line 324
    .end local v4    # "mask":Landroid/graphics/drawable/PaintDrawable;
    :cond_2
    iget-boolean v4, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->useDrawableOnForeground:Z

    if-eqz v4, :cond_3

    .line 325
    invoke-virtual {p0, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 326
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    if-eqz v0, :cond_5

    .line 327
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    invoke-direct {p0, v0, v3, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->updateBackgroundColor(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 329
    :cond_3
    iget v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->rippleColor:Ljava/lang/Integer;

    if-nez v2, :cond_4

    .line 330
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object v3, v4, v0

    invoke-direct {v2, v4}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 332
    :cond_4
    iget v0, p0, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->_backgroundColor:I

    invoke-direct {p0, v0, v3, v1}, Lcom/swmansion/gesturehandler/react/RNGestureHandlerButtonViewManager$ButtonViewGroup;->updateBackgroundColor(ILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 334
    :cond_5
    :goto_0
    return-void
.end method

.method public wantsToHandleEventBeforeActivation()Z
    .locals 1

    .line 134
    invoke-static {p0}, Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook$DefaultImpls;->wantsToHandleEventBeforeActivation(Lcom/swmansion/gesturehandler/core/NativeViewGestureHandler$NativeViewGestureHandlerHook;)Z

    move-result v0

    return v0
.end method
