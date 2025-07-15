.class public final Lcom/swmansion/rnscreens/Screen;
.super Lcom/swmansion/rnscreens/FabricEnabledViewGroup;
.source "Screen.kt"

# interfaces
.implements Lcom/swmansion/rnscreens/ScreenContentWrapper$OnLayoutCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/swmansion/rnscreens/Screen$ActivityState;,
        Lcom/swmansion/rnscreens/Screen$Companion;,
        Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;,
        Lcom/swmansion/rnscreens/Screen$StackAnimation;,
        Lcom/swmansion/rnscreens/Screen$StackPresentation;,
        Lcom/swmansion/rnscreens/Screen$WhenMappings;,
        Lcom/swmansion/rnscreens/Screen$WindowTraits;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nScreen.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Screen.kt\ncom/swmansion/rnscreens/Screen\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,533:1\n1#2:534\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00ca\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001d\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010!\n\u0002\u0010\u0006\n\u0002\u0008\u0014\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0007\u0018\u0000 \u00c9\u00012\u00020\u00012\u00020\u0002:\u000c\u00c8\u0001\u00c9\u0001\u00ca\u0001\u00cb\u0001\u00cc\u0001\u00cd\u0001B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0011\u0010\u0098\u0001\u001a\u00030\u0099\u00012\u0007\u0010\u009a\u0001\u001a\u00020LJ\u001a\u0010\u009b\u0001\u001a\u00030\u0099\u00012\u000e\u0010\u000b\u001a\n\u0012\u0005\u0012\u00030\u009d\u00010\u009c\u0001H\u0014J\u001a\u0010\u009e\u0001\u001a\u00030\u0099\u00012\u000e\u0010\u000b\u001a\n\u0012\u0005\u0012\u00030\u009d\u00010\u009c\u0001H\u0014J\u0013\u0010\u009f\u0001\u001a\u00020.2\u0008\u0010\u00a0\u0001\u001a\u00030\u00a1\u0001H\u0002J\u0007\u0010\u00a2\u0001\u001a\u00020.J\u0013\u0010\u00a3\u0001\u001a\u00030\u0099\u00012\u0007\u0010\u00a4\u0001\u001a\u00020LH\u0002J\"\u0010\u00a5\u0001\u001a\u00030\u0099\u00012\u0007\u0010\u00a6\u0001\u001a\u00020L2\u0007\u0010\u00a7\u0001\u001a\u00020.H\u0000\u00a2\u0006\u0003\u0008\u00a8\u0001J\u0010\u0010\u00a9\u0001\u001a\u00030\u0099\u0001H\u0000\u00a2\u0006\u0003\u0008\u00aa\u0001J7\u0010\u00ab\u0001\u001a\u00030\u0099\u00012\u0007\u0010\u00ac\u0001\u001a\u00020.2\u0007\u0010\u00ad\u0001\u001a\u00020L2\u0007\u0010\u00ae\u0001\u001a\u00020L2\u0007\u0010\u00af\u0001\u001a\u00020L2\u0007\u0010\u00b0\u0001\u001a\u00020LH\u0014J7\u0010\u00b1\u0001\u001a\u00030\u0099\u00012\u0007\u0010\u00ac\u0001\u001a\u00020.2\u0007\u0010\u00b2\u0001\u001a\u00020L2\u0007\u0010\u00b3\u0001\u001a\u00020L2\u0007\u0010\u00b4\u0001\u001a\u00020L2\u0007\u0010\u00b5\u0001\u001a\u00020LH\u0016J\u0010\u0010\u00b6\u0001\u001a\u00030\u0099\u0001H\u0000\u00a2\u0006\u0003\u0008\u00b7\u0001J\u0011\u0010\u00b8\u0001\u001a\u00030\u0099\u00012\u0007\u0010\u00b9\u0001\u001a\u00020\u0013J\u0010\u0010\u00ba\u0001\u001a\u00030\u0099\u00012\u0006\u0010\u0008\u001a\u00020\u0007J\u001f\u0010\u00bb\u0001\u001a\u00030\u0099\u00012\u0007\u0010\u00bc\u0001\u001a\u00020L2\n\u0010\u00bd\u0001\u001a\u0005\u0018\u00010\u00be\u0001H\u0016J\u0013\u0010\u00bf\u0001\u001a\u00030\u0099\u00012\t\u0010^\u001a\u0005\u0018\u00010\u0093\u0001J\u0011\u0010\u00c0\u0001\u001a\u00030\u0099\u00012\u0007\u0010\u00c1\u0001\u001a\u00020.J\u0008\u0010\u00c2\u0001\u001a\u00030\u0099\u0001J\u0016\u0010\u00c3\u0001\u001a\u00030\u0099\u00012\n\u0010\u00c4\u0001\u001a\u0005\u0018\u00010\u00a1\u0001H\u0002J\u001c\u0010\u00c5\u0001\u001a\u00030\u0099\u00012\u0007\u0010\u00c6\u0001\u001a\u00020L2\u0007\u0010\u00c7\u0001\u001a\u00020LH\u0002R\"\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R \u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R(\u0010\u001a\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\u001f\u001a\u0004\u0018\u00010 8F\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\"R\u001c\u0010#\u001a\u0004\u0018\u00010$X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008%\u0010&\"\u0004\u0008\'\u0010(R\u0013\u0010)\u001a\u0004\u0018\u00010*8F\u00a2\u0006\u0006\u001a\u0004\u0008+\u0010,R\u001a\u0010-\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008-\u0010/\"\u0004\u00080\u00101R\u001a\u00102\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010/\"\u0004\u00083\u00101R*\u00105\u001a\u0004\u0018\u00010.2\u0008\u00104\u001a\u0004\u0018\u00010.@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u00085\u00106\"\u0004\u00087\u00108R*\u0010;\u001a\u0004\u0018\u00010.2\u0008\u0010:\u001a\u0004\u0018\u00010.@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008;\u00106\"\u0004\u0008<\u00108R\u001a\u0010=\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008=\u0010/\"\u0004\u0008>\u00101R\u001e\u0010?\u001a\u0004\u0018\u00010.X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008?\u00106\"\u0004\u0008@\u00108R*\u0010B\u001a\u0004\u0018\u00010.2\u0008\u0010A\u001a\u0004\u0018\u00010.@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008B\u00106\"\u0004\u0008C\u00108R*\u0010E\u001a\u0004\u0018\u00010.2\u0008\u0010D\u001a\u0004\u0018\u00010.@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u00109\u001a\u0004\u0008E\u00106\"\u0004\u0008F\u00108R\u000e\u0010G\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010H\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008I\u0010/\"\u0004\u0008J\u00101R*\u0010K\u001a\u0004\u0018\u00010L2\u0008\u0010K\u001a\u0004\u0018\u00010L@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010Q\u001a\u0004\u0008M\u0010N\"\u0004\u0008O\u0010PR\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008R\u0010SR\u0013\u0010T\u001a\u0004\u0018\u00010U8F\u00a2\u0006\u0006\u001a\u0004\u0008V\u0010WR\u001a\u0010X\u001a\u00020YX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010[\"\u0004\u0008\\\u0010]R$\u0010^\u001a\u0004\u0018\u00010L2\u0008\u0010\u0006\u001a\u0004\u0018\u00010L@BX\u0086\u000e\u00a2\u0006\n\n\u0002\u0010Q\u001a\u0004\u0008_\u0010NR\u0019\u0010`\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010a8F\u00a2\u0006\u0006\u001a\u0004\u0008b\u0010cR\u001a\u0010d\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008e\u0010/\"\u0004\u0008f\u00101R$\u0010h\u001a\u00020g2\u0006\u0010\u0018\u001a\u00020g@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008i\u0010j\"\u0004\u0008k\u0010lR \u0010m\u001a\u0008\u0012\u0004\u0012\u00020o0nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008p\u0010q\"\u0004\u0008r\u0010sR\u001a\u0010t\u001a\u00020gX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008u\u0010j\"\u0004\u0008v\u0010lR\u001a\u0010w\u001a\u00020.X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008x\u0010/\"\u0004\u0008y\u00101R\u001a\u0010z\u001a\u00020LX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008{\u0010|\"\u0004\u0008}\u0010~R\u001c\u0010\u007f\u001a\u00020LX\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0080\u0001\u0010|\"\u0005\u0008\u0081\u0001\u0010~R\u000f\u0010\u0082\u0001\u001a\u00020.X\u0082\u000e\u00a2\u0006\u0002\n\u0000R \u0010\u0083\u0001\u001a\u00030\u0084\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R \u0010\u0089\u0001\u001a\u00030\u008a\u0001X\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u008b\u0001\u0010\u008c\u0001\"\u0006\u0008\u008d\u0001\u0010\u008e\u0001R.\u0010\u008f\u0001\u001a\u0004\u0018\u00010L2\t\u0010\u008f\u0001\u001a\u0004\u0018\u00010L@FX\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010Q\u001a\u0005\u0008\u0090\u0001\u0010N\"\u0005\u0008\u0091\u0001\u0010PR0\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u00012\n\u0010\u0092\u0001\u001a\u0005\u0018\u00010\u0093\u0001@FX\u0086\u000e\u00a2\u0006\u0012\n\u0000\u001a\u0006\u0008\u0094\u0001\u0010\u0095\u0001\"\u0006\u0008\u0096\u0001\u0010\u0097\u0001\u00a8\u0006\u00ce\u0001"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/Screen;",
        "Lcom/swmansion/rnscreens/FabricEnabledViewGroup;",
        "Lcom/swmansion/rnscreens/ScreenContentWrapper$OnLayoutCallback;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactContext;",
        "(Lcom/facebook/react/bridge/ReactContext;)V",
        "<set-?>",
        "Lcom/swmansion/rnscreens/Screen$ActivityState;",
        "activityState",
        "getActivityState",
        "()Lcom/swmansion/rnscreens/Screen$ActivityState;",
        "container",
        "Lcom/swmansion/rnscreens/ScreenContainer;",
        "getContainer",
        "()Lcom/swmansion/rnscreens/ScreenContainer;",
        "setContainer",
        "(Lcom/swmansion/rnscreens/ScreenContainer;)V",
        "contentWrapper",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/swmansion/rnscreens/ScreenContentWrapper;",
        "getContentWrapper",
        "()Ljava/lang/ref/WeakReference;",
        "setContentWrapper",
        "(Ljava/lang/ref/WeakReference;)V",
        "value",
        "Lcom/swmansion/rnscreens/ScreenFooter;",
        "footer",
        "getFooter",
        "()Lcom/swmansion/rnscreens/ScreenFooter;",
        "setFooter",
        "(Lcom/swmansion/rnscreens/ScreenFooter;)V",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "getFragment",
        "()Landroidx/fragment/app/Fragment;",
        "fragmentWrapper",
        "Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
        "getFragmentWrapper",
        "()Lcom/swmansion/rnscreens/ScreenFragmentWrapper;",
        "setFragmentWrapper",
        "(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V",
        "headerConfig",
        "Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;",
        "getHeaderConfig",
        "()Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;",
        "isBeingRemoved",
        "",
        "()Z",
        "setBeingRemoved",
        "(Z)V",
        "isGestureEnabled",
        "setGestureEnabled",
        "navigationBarHidden",
        "isNavigationBarHidden",
        "()Ljava/lang/Boolean;",
        "setNavigationBarHidden",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "navigationBarTranslucent",
        "isNavigationBarTranslucent",
        "setNavigationBarTranslucent",
        "isSheetGrabberVisible",
        "setSheetGrabberVisible",
        "isStatusBarAnimated",
        "setStatusBarAnimated",
        "statusBarHidden",
        "isStatusBarHidden",
        "setStatusBarHidden",
        "statusBarTranslucent",
        "isStatusBarTranslucent",
        "setStatusBarTranslucent",
        "isTransitioning",
        "nativeBackButtonDismissalEnabled",
        "getNativeBackButtonDismissalEnabled",
        "setNativeBackButtonDismissalEnabled",
        "navigationBarColor",
        "",
        "getNavigationBarColor",
        "()Ljava/lang/Integer;",
        "setNavigationBarColor",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getReactContext",
        "()Lcom/facebook/react/bridge/ReactContext;",
        "reactEventDispatcher",
        "Lcom/facebook/react/uimanager/events/EventDispatcher;",
        "getReactEventDispatcher",
        "()Lcom/facebook/react/uimanager/events/EventDispatcher;",
        "replaceAnimation",
        "Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;",
        "getReplaceAnimation",
        "()Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;",
        "setReplaceAnimation",
        "(Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;)V",
        "screenOrientation",
        "getScreenOrientation",
        "sheetBehavior",
        "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "getSheetBehavior",
        "()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;",
        "sheetClosesOnTouchOutside",
        "getSheetClosesOnTouchOutside",
        "setSheetClosesOnTouchOutside",
        "",
        "sheetCornerRadius",
        "getSheetCornerRadius",
        "()F",
        "setSheetCornerRadius",
        "(F)V",
        "sheetDetents",
        "",
        "",
        "getSheetDetents",
        "()Ljava/util/List;",
        "setSheetDetents",
        "(Ljava/util/List;)V",
        "sheetElevation",
        "getSheetElevation",
        "setSheetElevation",
        "sheetExpandsWhenScrolledToEdge",
        "getSheetExpandsWhenScrolledToEdge",
        "setSheetExpandsWhenScrolledToEdge",
        "sheetInitialDetentIndex",
        "getSheetInitialDetentIndex",
        "()I",
        "setSheetInitialDetentIndex",
        "(I)V",
        "sheetLargestUndimmedDetentIndex",
        "getSheetLargestUndimmedDetentIndex",
        "setSheetLargestUndimmedDetentIndex",
        "shouldUpdateSheetCornerRadius",
        "stackAnimation",
        "Lcom/swmansion/rnscreens/Screen$StackAnimation;",
        "getStackAnimation",
        "()Lcom/swmansion/rnscreens/Screen$StackAnimation;",
        "setStackAnimation",
        "(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V",
        "stackPresentation",
        "Lcom/swmansion/rnscreens/Screen$StackPresentation;",
        "getStackPresentation",
        "()Lcom/swmansion/rnscreens/Screen$StackPresentation;",
        "setStackPresentation",
        "(Lcom/swmansion/rnscreens/Screen$StackPresentation;)V",
        "statusBarColor",
        "getStatusBarColor",
        "setStatusBarColor",
        "statusBarStyle",
        "",
        "getStatusBarStyle",
        "()Ljava/lang/String;",
        "setStatusBarStyle",
        "(Ljava/lang/String;)V",
        "changeAccessibilityMode",
        "",
        "mode",
        "dispatchRestoreInstanceState",
        "Landroid/util/SparseArray;",
        "Landroid/os/Parcelable;",
        "dispatchSaveInstanceState",
        "hasWebView",
        "viewGroup",
        "Landroid/view/ViewGroup;",
        "isTransparent",
        "notifyHeaderHeightChange",
        "headerHeight",
        "notifySheetDetentChange",
        "detentIndex",
        "isStable",
        "notifySheetDetentChange$react_native_screens_debug",
        "onFinalizePropsUpdate",
        "onFinalizePropsUpdate$react_native_screens_debug",
        "onLayout",
        "changed",
        "l",
        "t",
        "r",
        "b",
        "onLayoutCallback",
        "left",
        "top",
        "right",
        "bottom",
        "onSheetCornerRadiusChange",
        "onSheetCornerRadiusChange$react_native_screens_debug",
        "registerLayoutCallbackForWrapper",
        "wrapper",
        "setActivityState",
        "setLayerType",
        "layerType",
        "paint",
        "Landroid/graphics/Paint;",
        "setScreenOrientation",
        "setTransitioning",
        "transitioning",
        "startRemovalTransition",
        "startTransitionRecursive",
        "parent",
        "updateScreenSizePaper",
        "width",
        "height",
        "ActivityState",
        "Companion",
        "ReplaceAnimation",
        "StackAnimation",
        "StackPresentation",
        "WindowTraits",
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


# static fields
.field public static final Companion:Lcom/swmansion/rnscreens/Screen$Companion;

.field public static final SHEET_FIT_TO_CONTENTS:D = -1.0

.field public static final TAG:Ljava/lang/String; = "Screen"


# instance fields
.field private activityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

.field private container:Lcom/swmansion/rnscreens/ScreenContainer;

.field private contentWrapper:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/swmansion/rnscreens/ScreenContentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private footer:Lcom/swmansion/rnscreens/ScreenFooter;

.field private fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

.field private isBeingRemoved:Z

.field private isGestureEnabled:Z

.field private isNavigationBarHidden:Ljava/lang/Boolean;

.field private isNavigationBarTranslucent:Ljava/lang/Boolean;

.field private isSheetGrabberVisible:Z

.field private isStatusBarAnimated:Ljava/lang/Boolean;

.field private isStatusBarHidden:Ljava/lang/Boolean;

.field private isStatusBarTranslucent:Ljava/lang/Boolean;

.field private isTransitioning:Z

.field private nativeBackButtonDismissalEnabled:Z

.field private navigationBarColor:Ljava/lang/Integer;

.field private final reactContext:Lcom/facebook/react/bridge/ReactContext;

.field private replaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

.field private screenOrientation:Ljava/lang/Integer;

.field private sheetClosesOnTouchOutside:Z

.field private sheetCornerRadius:F

.field private sheetDetents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private sheetElevation:F

.field private sheetExpandsWhenScrolledToEdge:Z

.field private sheetInitialDetentIndex:I

.field private sheetLargestUndimmedDetentIndex:I

.field private shouldUpdateSheetCornerRadius:Z

.field private stackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

.field private stackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

.field private statusBarColor:Ljava/lang/Integer;

.field private statusBarStyle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/Screen$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/swmansion/rnscreens/Screen$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/swmansion/rnscreens/Screen;->Companion:Lcom/swmansion/rnscreens/Screen$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    const-string v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/swmansion/rnscreens/FabricEnabledViewGroup;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 36
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swmansion/rnscreens/Screen;->contentWrapper:Ljava/lang/ref/WeakReference;

    .line 55
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackPresentation;->PUSH:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    iput-object v0, p0, Lcom/swmansion/rnscreens/Screen;->stackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    .line 56
    sget-object v0, Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;->POP:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    iput-object v0, p0, Lcom/swmansion/rnscreens/Screen;->replaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    .line 57
    sget-object v0, Lcom/swmansion/rnscreens/Screen$StackAnimation;->DEFAULT:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    iput-object v0, p0, Lcom/swmansion/rnscreens/Screen;->stackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->isGestureEnabled:Z

    .line 77
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->sheetExpandsWhenScrolledToEdge:Z

    .line 81
    new-array v1, v0, [Ljava/lang/Double;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/swmansion/rnscreens/Screen;->sheetDetents:Ljava/util/List;

    .line 82
    const/4 v1, -0x1

    iput v1, p0, Lcom/swmansion/rnscreens/Screen;->sheetLargestUndimmedDetentIndex:I

    .line 84
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->sheetClosesOnTouchOutside:Z

    .line 85
    const/high16 v1, 0x41c00000    # 24.0f

    iput v1, p0, Lcom/swmansion/rnscreens/Screen;->sheetElevation:F

    .line 97
    nop

    .line 108
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/swmansion/rnscreens/Screen;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    nop

    .line 374
    iput-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->nativeBackButtonDismissalEnabled:Z

    .line 35
    return-void
.end method

.method private final hasWebView(Landroid/view/ViewGroup;)Z
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .line 219
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 221
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroid/webkit/WebView;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 222
    return v4

    .line 223
    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    .line 224
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3}, Lcom/swmansion/rnscreens/Screen;->hasWebView(Landroid/view/ViewGroup;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    return v4

    .line 219
    .end local v2    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 229
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final notifyHeaderHeightChange(I)V
    .locals 5
    .param p1, "headerHeight"    # I

    .line 437
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.facebook.react.bridge.ReactContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/facebook/react/bridge/ReactContext;

    .line 438
    .local v0, "screenContext":Lcom/facebook/react/bridge/ReactContext;
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v1

    .line 441
    .local v1, "surfaceId":I
    nop

    .line 440
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v2

    .line 441
    if-eqz v2, :cond_0

    .line 440
    nop

    .line 441
    new-instance v3, Lcom/swmansion/rnscreens/events/HeaderHeightChangeEvent;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v4

    invoke-direct {v3, v1, v4, p1}, Lcom/swmansion/rnscreens/events/HeaderHeightChangeEvent;-><init>(III)V

    check-cast v3, Lcom/facebook/react/uimanager/events/Event;

    invoke-interface {v2, v3}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 442
    :cond_0
    return-void
.end method

.method private final startTransitionRecursive(Landroid/view/ViewGroup;)V
    .locals 10
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 384
    if-eqz p1, :cond_6

    move-object v0, p1

    .local v0, "it":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .line 385
    .local v1, "$i$a$-let-Screen$startTransitionRecursive$1":I
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_5

    .line 386
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 388
    .local v4, "child":Landroid/view/View;
    instance-of v5, p1, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v5, :cond_0

    instance-of v5, v4, Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    .line 395
    new-instance v5, Landroid/view/View;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    .line 397
    :cond_0
    if-eqz v4, :cond_1

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v5, v4

    .line 534
    .local v5, "view":Landroid/view/View;
    const/4 v6, 0x0

    .line 397
    .local v6, "$i$a$-let-Screen$startTransitionRecursive$1$1":I
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 400
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "$i$a$-let-Screen$startTransitionRecursive$1$1":I
    :cond_1
    :goto_1
    instance-of v5, v4, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    if-eqz v5, :cond_2

    .line 403
    move-object v5, v4

    check-cast v5, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    invoke-virtual {v5}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getToolbar()Lcom/swmansion/rnscreens/CustomToolbar;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/swmansion/rnscreens/Screen;->startTransitionRecursive(Landroid/view/ViewGroup;)V

    .line 406
    :cond_2
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    .line 413
    instance-of v5, v4, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    if-eqz v5, :cond_3

    .line 414
    move-object v5, v4

    check-cast v5, Lcom/facebook/react/uimanager/ReactClippingViewGroup;

    invoke-interface {v5}, Lcom/facebook/react/uimanager/ReactClippingViewGroup;->getRemoveClippedSubviews()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 415
    instance-of v5, v4, Lcom/facebook/react/views/scroll/ReactScrollView;

    if-nez v5, :cond_3

    .line 416
    instance-of v5, v4, Lcom/facebook/react/views/scroll/ReactHorizontalScrollView;

    if-nez v5, :cond_3

    .line 423
    nop

    .line 424
    const/4 v5, 0x0

    .local v5, "j":I
    :try_start_0
    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    :goto_2
    if-ge v5, v6, :cond_3

    .line 425
    move-object v7, v4

    check-cast v7, Landroid/view/ViewGroup;

    new-instance v8, Landroid/view/View;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 427
    .end local v5    # "j":I
    :catch_0
    move-exception v5

    .line 430
    :cond_3
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v5}, Lcom/swmansion/rnscreens/Screen;->startTransitionRecursive(Landroid/view/ViewGroup;)V

    .line 385
    .end local v4    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 433
    .end local v2    # "i":I
    :cond_5
    nop

    .line 384
    .end local v0    # "it":Landroid/view/ViewGroup;
    .end local v1    # "$i$a$-let-Screen$startTransitionRecursive$1":I
    nop

    .line 434
    :cond_6
    return-void
.end method

.method private final updateScreenSizePaper(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 175
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    .line 176
    iget-object v1, p0, Lcom/swmansion/rnscreens/Screen;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {v1}, Lcom/facebook/react/bridge/ReactContext;->getExceptionHandler()Lcom/facebook/react/bridge/JSExceptionHandler;

    move-result-object v1

    new-instance v2, Lcom/swmansion/rnscreens/Screen$updateScreenSizePaper$1;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/swmansion/rnscreens/Screen$updateScreenSizePaper$1;-><init>(Lcom/swmansion/rnscreens/Screen;IILcom/facebook/react/bridge/JSExceptionHandler;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 175
    invoke-virtual {v0, v2}, Lcom/facebook/react/bridge/ReactContext;->runOnNativeModulesQueueThread(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method


# virtual methods
.method public final changeAccessibilityMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .line 274
    invoke-virtual {p0, p1}, Lcom/swmansion/rnscreens/Screen;->setImportantForAccessibility(I)V

    .line 275
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getHeaderConfig()Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;->getToolbar()Lcom/swmansion/rnscreens/CustomToolbar;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/swmansion/rnscreens/CustomToolbar;->setImportantForAccessibility(I)V

    .line 276
    :goto_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "container"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .param p1, "container"    # Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public final getActivityState()Lcom/swmansion/rnscreens/Screen$ActivityState;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->activityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

    return-object v0
.end method

.method public final getContainer()Lcom/swmansion/rnscreens/ScreenContainer;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->container:Lcom/swmansion/rnscreens/ScreenContainer;

    return-object v0
.end method

.method public final getContentWrapper()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/swmansion/rnscreens/ScreenContentWrapper;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->contentWrapper:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public final getFooter()Lcom/swmansion/rnscreens/ScreenFooter;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->footer:Lcom/swmansion/rnscreens/ScreenFooter;

    return-object v0
.end method

.method public final getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getFragmentWrapper()Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    return-object v0
.end method

.method public final getHeaderConfig()Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;
    .locals 5

    .line 187
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    .line 534
    .local v3, "it":Landroid/view/View;
    const/4 v4, 0x0

    .line 187
    .local v4, "$i$a$-find-Screen$headerConfig$1":I
    instance-of v3, v3, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    .end local v3    # "it":Landroid/view/View;
    .end local v4    # "$i$a$-find-Screen$headerConfig$1":I
    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    instance-of v0, v1, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    if-eqz v0, :cond_2

    move-object v2, v1

    check-cast v2, Lcom/swmansion/rnscreens/ScreenStackHeaderConfig;

    :cond_2
    return-object v2
.end method

.method public final getNativeBackButtonDismissalEnabled()Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->nativeBackButtonDismissalEnabled:Z

    return v0
.end method

.method public final getNavigationBarColor()Ljava/lang/Integer;
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->navigationBarColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getReactContext()Lcom/facebook/react/bridge/ReactContext;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    return-object v0
.end method

.method public final getReactEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/UIManagerHelper;->getEventDispatcherForReactTag(Lcom/facebook/react/bridge/ReactContext;I)Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v0

    return-object v0
.end method

.method public final getReplaceAnimation()Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->replaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    return-object v0
.end method

.method public final getScreenOrientation()Ljava/lang/Integer;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->screenOrientation:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/bottomsheet/BottomSheetBehavior<",
            "Lcom/swmansion/rnscreens/Screen;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    instance-of v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    if-eqz v1, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    :cond_2
    return-object v2
.end method

.method public final getSheetClosesOnTouchOutside()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->sheetClosesOnTouchOutside:Z

    return v0
.end method

.method public final getSheetCornerRadius()F
    .locals 1

    .line 70
    iget v0, p0, Lcom/swmansion/rnscreens/Screen;->sheetCornerRadius:F

    return v0
.end method

.method public final getSheetDetents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->sheetDetents:Ljava/util/List;

    return-object v0
.end method

.method public final getSheetElevation()F
    .locals 1

    .line 85
    iget v0, p0, Lcom/swmansion/rnscreens/Screen;->sheetElevation:F

    return v0
.end method

.method public final getSheetExpandsWhenScrolledToEdge()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->sheetExpandsWhenScrolledToEdge:Z

    return v0
.end method

.method public final getSheetInitialDetentIndex()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/swmansion/rnscreens/Screen;->sheetInitialDetentIndex:I

    return v0
.end method

.method public final getSheetLargestUndimmedDetentIndex()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/swmansion/rnscreens/Screen;->sheetLargestUndimmedDetentIndex:I

    return v0
.end method

.method public final getStackAnimation()Lcom/swmansion/rnscreens/Screen$StackAnimation;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->stackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    return-object v0
.end method

.method public final getStackPresentation()Lcom/swmansion/rnscreens/Screen$StackPresentation;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->stackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    return-object v0
.end method

.method public final getStatusBarColor()Ljava/lang/Integer;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->statusBarColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getStatusBarStyle()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->statusBarStyle:Ljava/lang/String;

    return-object v0
.end method

.method public final isBeingRemoved()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->isBeingRemoved:Z

    return v0
.end method

.method public final isGestureEnabled()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->isGestureEnabled:Z

    return v0
.end method

.method public final isNavigationBarHidden()Ljava/lang/Boolean;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->isNavigationBarHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isNavigationBarTranslucent()Ljava/lang/Boolean;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->isNavigationBarTranslucent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isSheetGrabberVisible()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->isSheetGrabberVisible:Z

    return v0
.end method

.method public final isStatusBarAnimated()Ljava/lang/Boolean;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->isStatusBarAnimated:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isStatusBarHidden()Ljava/lang/Boolean;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->isStatusBarHidden:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isStatusBarTranslucent()Ljava/lang/Boolean;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->isStatusBarTranslucent:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final isTransparent()Z
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->stackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    sget-object v1, Lcom/swmansion/rnscreens/Screen$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/Screen$StackPresentation;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 215
    const/4 v0, 0x0

    goto :goto_0

    .line 213
    :pswitch_0
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final notifySheetDetentChange$react_native_screens_debug(IZ)V
    .locals 4
    .param p1, "detentIndex"    # I
    .param p2, "isStable"    # Z

    .line 448
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->reactContext:Lcom/facebook/react/bridge/ReactContext;

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/content/Context;)I

    move-result v0

    .line 449
    .local v0, "surfaceId":I
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getReactEventDispatcher()Lcom/facebook/react/uimanager/events/EventDispatcher;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 450
    new-instance v2, Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;

    .line 451
    nop

    .line 452
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getId()I

    move-result v3

    .line 453
    nop

    .line 454
    nop

    .line 450
    invoke-direct {v2, v0, v3, p1, p2}, Lcom/swmansion/rnscreens/events/SheetDetentChangedEvent;-><init>(IIIZ)V

    check-cast v2, Lcom/facebook/react/uimanager/events/Event;

    .line 449
    invoke-interface {v1, v2}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 457
    :cond_0
    return-void
.end method

.method public final onFinalizePropsUpdate$react_native_screens_debug()V
    .locals 1

    .line 460
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->shouldUpdateSheetCornerRadius:Z

    if-eqz v0, :cond_0

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->shouldUpdateSheetCornerRadius:Z

    .line 462
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->onSheetCornerRadiusChange$react_native_screens_debug()V

    .line 464
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 156
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->container:Lcom/swmansion/rnscreens/ScreenContainer;

    instance-of v0, v0, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 157
    sub-int v0, p4, p2

    .line 158
    .local v0, "width":I
    sub-int v1, p5, p3

    .line 160
    .local v1, "height":I
    nop

    .line 163
    invoke-direct {p0, v0, v1}, Lcom/swmansion/rnscreens/Screen;->updateScreenSizePaper(II)V

    .line 166
    iget-object v2, p0, Lcom/swmansion/rnscreens/Screen;->footer:Lcom/swmansion/rnscreens/ScreenFooter;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/swmansion/rnscreens/Screen;->container:Lcom/swmansion/rnscreens/ScreenContainer;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/swmansion/rnscreens/ScreenContainer;->getHeight()I

    move-result v8

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v8}, Lcom/swmansion/rnscreens/ScreenFooter;->onParentLayout(ZIIIII)V

    .line 167
    :cond_0
    invoke-direct {p0, p3}, Lcom/swmansion/rnscreens/Screen;->notifyHeaderHeightChange(I)V

    .line 169
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_1
    return-void
.end method

.method public onLayoutCallback(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 123
    sub-int v0, p5, p3

    .line 125
    .local v0, "height":I
    iget-object v1, p0, Lcom/swmansion/rnscreens/Screen;->sheetDetents:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/swmansion/rnscreens/Screen;->sheetDetents:Ljava/util/List;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpg-double v1, v3, v5

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    if-eqz v1, :cond_2

    .local v1, "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v2, 0x0

    .line 127
    .local v2, "$i$a$-let-Screen$onLayoutCallback$1":I
    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->getMaxHeight()I

    move-result v3

    if-eq v3, v0, :cond_1

    .line 128
    invoke-virtual {v1, v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setMaxHeight(I)V

    .line 130
    :cond_1
    nop

    .line 126
    .end local v1    # "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .end local v2    # "$i$a$-let-Screen$onLayoutCallback$1":I
    nop

    .line 132
    :cond_2
    return-void
.end method

.method public final onSheetCornerRadiusChange$react_native_screens_debug()V
    .locals 7

    .line 467
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->stackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    sget-object v1, Lcom/swmansion/rnscreens/Screen$StackPresentation;->FORM_SHEET:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .local v0, "it":Lcom/google/android/material/shape/MaterialShapeDrawable;
    const/4 v1, 0x0

    .line 471
    .local v1, "$i$a$-let-Screen$onSheetCornerRadiusChange$1":I
    iget v2, p0, Lcom/swmansion/rnscreens/Screen;->sheetCornerRadius:F

    invoke-static {v2}, Lcom/facebook/react/uimanager/PixelUtil;->toDIPFromPixel(F)F

    move-result v2

    .line 472
    .local v2, "resolvedCornerRadius":F
    nop

    .line 474
    new-instance v3, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    invoke-direct {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;-><init>()V

    .line 475
    move-object v4, v3

    .local v4, "$this$onSheetCornerRadiusChange_u24lambda_u2415_u24lambda_u2414":Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    const/4 v5, 0x0

    .line 476
    .local v5, "$i$a$-apply-Screen$onSheetCornerRadiusChange$1$1":I
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopLeftCorner(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 477
    invoke-virtual {v4, v6, v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->setTopRightCorner(IF)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    .line 478
    nop

    .line 475
    .end local v4    # "$this$onSheetCornerRadiusChange_u24lambda_u2415_u24lambda_u2414":Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;
    .end local v5    # "$i$a$-apply-Screen$onSheetCornerRadiusChange$1$1":I
    nop

    .line 478
    invoke-virtual {v3}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v3

    .line 472
    invoke-virtual {v0, v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    .line 479
    nop

    .line 470
    .end local v0    # "it":Lcom/google/android/material/shape/MaterialShapeDrawable;
    .end local v1    # "$i$a$-let-Screen$onSheetCornerRadiusChange$1":I
    .end local v2    # "resolvedCornerRadius":F
    nop

    .line 480
    :cond_2
    return-void

    .line 468
    :cond_3
    :goto_1
    return-void
.end method

.method public final registerLayoutCallbackForWrapper(Lcom/swmansion/rnscreens/ScreenContentWrapper;)V
    .locals 1
    .param p1, "wrapper"    # Lcom/swmansion/rnscreens/ScreenContentWrapper;

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    move-object v0, p0

    check-cast v0, Lcom/swmansion/rnscreens/ScreenContentWrapper$OnLayoutCallback;

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/ScreenContentWrapper;->setDelegate$react_native_screens_debug(Lcom/swmansion/rnscreens/ScreenContentWrapper$OnLayoutCallback;)V

    .line 136
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/swmansion/rnscreens/Screen;->contentWrapper:Ljava/lang/ref/WeakReference;

    .line 137
    return-void
.end method

.method public final setActivityState(Lcom/swmansion/rnscreens/Screen$ActivityState;)V
    .locals 2
    .param p1, "activityState"    # Lcom/swmansion/rnscreens/Screen$ActivityState;

    const-string v0, "activityState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->activityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

    if-ne p1, v0, :cond_0

    .line 241
    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->container:Lcom/swmansion/rnscreens/ScreenContainer;

    instance-of v0, v0, Lcom/swmansion/rnscreens/ScreenStack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->activityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->activityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/Screen$ActivityState;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_1

    goto :goto_0

    .line 244
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "[RNScreens] activityState can only progress in NativeStack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->activityState:Lcom/swmansion/rnscreens/Screen$ActivityState;

    .line 247
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->container:Lcom/swmansion/rnscreens/ScreenContainer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenContainer;->notifyChildUpdate()V

    .line 248
    :cond_3
    return-void
.end method

.method public final setBeingRemoved(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->isBeingRemoved:Z

    return-void
.end method

.method public final setContainer(Lcom/swmansion/rnscreens/ScreenContainer;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/swmansion/rnscreens/ScreenContainer;

    .line 51
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->container:Lcom/swmansion/rnscreens/ScreenContainer;

    return-void
.end method

.method public final setContentWrapper(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/swmansion/rnscreens/ScreenContentWrapper;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->contentWrapper:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setFooter(Lcom/swmansion/rnscreens/ScreenFooter;)V
    .locals 3
    .param p1, "value"    # Lcom/swmansion/rnscreens/ScreenFooter;

    .line 89
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->footer:Lcom/swmansion/rnscreens/ScreenFooter;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 534
    .local v0, "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v1, 0x0

    .line 90
    .local v1, "$i$a$-let-Screen$footer$1":I
    iget-object v2, p0, Lcom/swmansion/rnscreens/Screen;->footer:Lcom/swmansion/rnscreens/ScreenFooter;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Lcom/swmansion/rnscreens/ScreenFooter;->unregisterWithSheetBehavior(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .end local v0    # "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .end local v1    # "$i$a$-let-Screen$footer$1":I
    goto :goto_0

    .line 91
    :cond_0
    if-eqz p1, :cond_1

    .line 92
    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getSheetBehavior()Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 534
    .restart local v0    # "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    const/4 v1, 0x0

    .line 92
    .local v1, "$i$a$-let-Screen$footer$2":I
    invoke-virtual {p1, v0}, Lcom/swmansion/rnscreens/ScreenFooter;->registerWithSheetBehavior(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;)V

    .line 94
    .end local v0    # "it":Lcom/google/android/material/bottomsheet/BottomSheetBehavior;
    .end local v1    # "$i$a$-let-Screen$footer$2":I
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->footer:Lcom/swmansion/rnscreens/ScreenFooter;

    .line 95
    return-void
.end method

.method public final setFragmentWrapper(Lcom/swmansion/rnscreens/ScreenFragmentWrapper;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    .line 50
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    return-void
.end method

.method public final setGestureEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 58
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->isGestureEnabled:Z

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 237
    return-void
.end method

.method public final setNativeBackButtonDismissalEnabled(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 374
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->nativeBackButtonDismissalEnabled:Z

    return-void
.end method

.method public final setNavigationBarColor(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "navigationBarColor"    # Ljava/lang/Integer;

    .line 334
    if-eqz p1, :cond_0

    .line 335
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetNavigationBarAppearance$react_native_screens_debug()V

    .line 337
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->navigationBarColor:Ljava/lang/Integer;

    .line 338
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v0, :cond_1

    .local v0, "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/4 v1, 0x0

    .line 339
    .local v1, "$i$a$-let-Screen$navigationBarColor$1":I
    sget-object v2, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    .line 340
    nop

    .line 341
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->tryGetActivity()Landroid/app/Activity;

    move-result-object v3

    .line 339
    invoke-virtual {v2, p0, v3}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setNavigationBarColor$react_native_screens_debug(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    .line 343
    nop

    .line 338
    .end local v0    # "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v1    # "$i$a$-let-Screen$navigationBarColor$1":I
    nop

    .line 344
    :cond_1
    return-void
.end method

.method public final setNavigationBarHidden(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "navigationBarHidden"    # Ljava/lang/Boolean;

    .line 362
    if-eqz p1, :cond_0

    .line 363
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetNavigationBarAppearance$react_native_screens_debug()V

    .line 365
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->isNavigationBarHidden:Ljava/lang/Boolean;

    .line 366
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v0, :cond_1

    .local v0, "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/4 v1, 0x0

    .line 367
    .local v1, "$i$a$-let-Screen$isNavigationBarHidden$1":I
    sget-object v2, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    .line 368
    nop

    .line 369
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->tryGetActivity()Landroid/app/Activity;

    move-result-object v3

    .line 367
    invoke-virtual {v2, p0, v3}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setNavigationBarHidden$react_native_screens_debug(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    .line 371
    nop

    .line 366
    .end local v0    # "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v1    # "$i$a$-let-Screen$isNavigationBarHidden$1":I
    nop

    .line 372
    :cond_1
    return-void
.end method

.method public final setNavigationBarTranslucent(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "navigationBarTranslucent"    # Ljava/lang/Boolean;

    .line 348
    if-eqz p1, :cond_0

    .line 349
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetNavigationBarAppearance$react_native_screens_debug()V

    .line 351
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->isNavigationBarTranslucent:Ljava/lang/Boolean;

    .line 352
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v0, :cond_1

    .local v0, "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/4 v1, 0x0

    .line 353
    .local v1, "$i$a$-let-Screen$isNavigationBarTranslucent$1":I
    sget-object v2, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    .line 354
    nop

    .line 355
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->tryGetActivity()Landroid/app/Activity;

    move-result-object v3

    .line 353
    invoke-virtual {v2, p0, v3}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setNavigationBarTranslucent$react_native_screens_debug(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    .line 357
    nop

    .line 352
    .end local v0    # "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v1    # "$i$a$-let-Screen$isNavigationBarTranslucent$1":I
    nop

    .line 358
    :cond_1
    return-void
.end method

.method public final setReplaceAnimation(Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->replaceAnimation:Lcom/swmansion/rnscreens/Screen$ReplaceAnimation;

    return-void
.end method

.method public final setScreenOrientation(Ljava/lang/String;)V
    .locals 4
    .param p1, "screenOrientation"    # Ljava/lang/String;

    .line 251
    if-nez p1, :cond_0

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/swmansion/rnscreens/Screen;->screenOrientation:Ljava/lang/Integer;

    .line 253
    return-void

    .line 255
    :cond_0
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetOrientation$react_native_screens_debug()V

    .line 256
    nop

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    goto/16 :goto_1

    :sswitch_0
    const-string v0, "landscape_right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 264
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto/16 :goto_2

    .line 257
    :sswitch_1
    const-string v0, "landscape_left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 263
    :cond_2
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 257
    :sswitch_2
    const-string v0, "portrait_up"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 260
    :cond_3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 257
    :sswitch_3
    const-string v0, "landscape"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 262
    :cond_4
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 257
    :sswitch_4
    const-string v0, "portrait"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 259
    :cond_5
    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 257
    :sswitch_5
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    .line 258
    :cond_6
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 257
    :sswitch_6
    const-string v0, "portrait_down"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    .line 261
    :cond_7
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    .line 265
    :goto_1
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 256
    :goto_2
    iput-object v0, p0, Lcom/swmansion/rnscreens/Screen;->screenOrientation:Ljava/lang/Integer;

    .line 268
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v0, :cond_8

    .line 534
    .local v0, "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/4 v1, 0x0

    .line 268
    .local v1, "$i$a$-let-Screen$setScreenOrientation$1":I
    sget-object v2, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->tryGetActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setOrientation$react_native_screens_debug(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    .line 269
    .end local v0    # "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v1    # "$i$a$-let-Screen$setScreenOrientation$1":I
    :cond_8
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x70f1d53a -> :sswitch_6
        0x179a1 -> :sswitch_5
        0x2b77bb9b -> :sswitch_4
        0x5545f2bb -> :sswitch_3
        0x62724dbf -> :sswitch_2
        0x6728e30b -> :sswitch_1
        0x7e49df98 -> :sswitch_0
    .end sparse-switch
.end method

.method public final setSheetClosesOnTouchOutside(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 84
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->sheetClosesOnTouchOutside:Z

    return-void
.end method

.method public final setSheetCornerRadius(F)V
    .locals 2
    .param p1, "value"    # F

    .line 72
    iget v0, p0, Lcom/swmansion/rnscreens/Screen;->sheetCornerRadius:F

    cmpg-float v0, v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 73
    iput p1, p0, Lcom/swmansion/rnscreens/Screen;->sheetCornerRadius:F

    .line 74
    iput-boolean v1, p0, Lcom/swmansion/rnscreens/Screen;->shouldUpdateSheetCornerRadius:Z

    .line 76
    :cond_1
    return-void
.end method

.method public final setSheetDetents(Ljava/util/List;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->sheetDetents:Ljava/util/List;

    return-void
.end method

.method public final setSheetElevation(F)V
    .locals 0
    .param p1, "<set-?>"    # F

    .line 85
    iput p1, p0, Lcom/swmansion/rnscreens/Screen;->sheetElevation:F

    return-void
.end method

.method public final setSheetExpandsWhenScrolledToEdge(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 77
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->sheetExpandsWhenScrolledToEdge:Z

    return-void
.end method

.method public final setSheetGrabberVisible(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->isSheetGrabberVisible:Z

    return-void
.end method

.method public final setSheetInitialDetentIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 83
    iput p1, p0, Lcom/swmansion/rnscreens/Screen;->sheetInitialDetentIndex:I

    return-void
.end method

.method public final setSheetLargestUndimmedDetentIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 82
    iput p1, p0, Lcom/swmansion/rnscreens/Screen;->sheetLargestUndimmedDetentIndex:I

    return-void
.end method

.method public final setStackAnimation(Lcom/swmansion/rnscreens/Screen$StackAnimation;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/swmansion/rnscreens/Screen$StackAnimation;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->stackAnimation:Lcom/swmansion/rnscreens/Screen$StackAnimation;

    return-void
.end method

.method public final setStackPresentation(Lcom/swmansion/rnscreens/Screen$StackPresentation;)V
    .locals 1
    .param p1, "<set-?>"    # Lcom/swmansion/rnscreens/Screen$StackPresentation;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->stackPresentation:Lcom/swmansion/rnscreens/Screen$StackPresentation;

    return-void
.end method

.method public final setStatusBarAnimated(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Boolean;

    .line 61
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->isStatusBarAnimated:Ljava/lang/Boolean;

    return-void
.end method

.method public final setStatusBarColor(Ljava/lang/Integer;)V
    .locals 5
    .param p1, "statusBarColor"    # Ljava/lang/Integer;

    .line 319
    if-eqz p1, :cond_0

    .line 320
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance$react_native_screens_debug()V

    .line 322
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->statusBarColor:Ljava/lang/Integer;

    .line 323
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v0, :cond_1

    .local v0, "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/4 v1, 0x0

    .line 324
    .local v1, "$i$a$-let-Screen$statusBarColor$1":I
    sget-object v2, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    .line 325
    nop

    .line 326
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->tryGetActivity()Landroid/app/Activity;

    move-result-object v3

    .line 327
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v4

    .line 324
    invoke-virtual {v2, p0, v3, v4}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setColor$react_native_screens_debug(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    .line 329
    nop

    .line 323
    .end local v0    # "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v1    # "$i$a$-let-Screen$statusBarColor$1":I
    nop

    .line 330
    :cond_1
    return-void
.end method

.method public final setStatusBarHidden(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "statusBarHidden"    # Ljava/lang/Boolean;

    .line 295
    if-eqz p1, :cond_0

    .line 296
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance$react_native_screens_debug()V

    .line 298
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->isStatusBarHidden:Ljava/lang/Boolean;

    .line 299
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v0, :cond_1

    .line 534
    .local v0, "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/4 v1, 0x0

    .line 299
    .local v1, "$i$a$-let-Screen$isStatusBarHidden$1":I
    sget-object v2, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->tryGetActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setHidden$react_native_screens_debug(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;)V

    .line 300
    .end local v0    # "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v1    # "$i$a$-let-Screen$isStatusBarHidden$1":I
    :cond_1
    return-void
.end method

.method public final setStatusBarStyle(Ljava/lang/String;)V
    .locals 5
    .param p1, "statusBarStyle"    # Ljava/lang/String;

    .line 280
    if-eqz p1, :cond_0

    .line 281
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance$react_native_screens_debug()V

    .line 283
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->statusBarStyle:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v0, :cond_1

    .local v0, "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/4 v1, 0x0

    .line 285
    .local v1, "$i$a$-let-Screen$statusBarStyle$1":I
    sget-object v2, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    .line 286
    nop

    .line 287
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->tryGetActivity()Landroid/app/Activity;

    move-result-object v3

    .line 288
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v4

    .line 285
    invoke-virtual {v2, p0, v3, v4}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setStyle$react_native_screens_debug(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    .line 290
    nop

    .line 284
    .end local v0    # "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v1    # "$i$a$-let-Screen$statusBarStyle$1":I
    nop

    .line 291
    :cond_1
    return-void
.end method

.method public final setStatusBarTranslucent(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "statusBarTranslucent"    # Ljava/lang/Boolean;

    .line 304
    if-eqz p1, :cond_0

    .line 305
    sget-object v0, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    invoke-virtual {v0}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->applyDidSetStatusBarAppearance$react_native_screens_debug()V

    .line 307
    :cond_0
    iput-object p1, p0, Lcom/swmansion/rnscreens/Screen;->isStatusBarTranslucent:Ljava/lang/Boolean;

    .line 308
    iget-object v0, p0, Lcom/swmansion/rnscreens/Screen;->fragmentWrapper:Lcom/swmansion/rnscreens/ScreenFragmentWrapper;

    if-eqz v0, :cond_1

    .local v0, "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    const/4 v1, 0x0

    .line 309
    .local v1, "$i$a$-let-Screen$isStatusBarTranslucent$1":I
    sget-object v2, Lcom/swmansion/rnscreens/ScreenWindowTraits;->INSTANCE:Lcom/swmansion/rnscreens/ScreenWindowTraits;

    .line 310
    nop

    .line 311
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->tryGetActivity()Landroid/app/Activity;

    move-result-object v3

    .line 312
    invoke-interface {v0}, Lcom/swmansion/rnscreens/ScreenFragmentWrapper;->tryGetContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v4

    .line 309
    invoke-virtual {v2, p0, v3, v4}, Lcom/swmansion/rnscreens/ScreenWindowTraits;->setTranslucent$react_native_screens_debug(Lcom/swmansion/rnscreens/Screen;Landroid/app/Activity;Lcom/facebook/react/bridge/ReactContext;)V

    .line 314
    nop

    .line 308
    .end local v0    # "it":Lcom/swmansion/rnscreens/ScreenFragmentWrapper;
    .end local v1    # "$i$a$-let-Screen$isStatusBarTranslucent$1":I
    nop

    .line 315
    :cond_1
    return-void
.end method

.method public final setTransitioning(Z)V
    .locals 3
    .param p1, "transitioning"    # Z

    .line 195
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->isTransitioning:Z

    if-ne v0, p1, :cond_0

    .line 196
    return-void

    .line 198
    :cond_0
    iput-boolean p1, p0, Lcom/swmansion/rnscreens/Screen;->isTransitioning:Z

    .line 199
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/Screen;->hasWebView(Landroid/view/ViewGroup;)Z

    move-result v0

    .line 200
    .local v0, "isWebViewInScreen":Z
    const/4 v1, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/swmansion/rnscreens/Screen;->getLayerType()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 201
    return-void

    .line 203
    :cond_1
    nop

    .line 204
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 205
    :goto_0
    nop

    .line 203
    const/4 v2, 0x0

    invoke-super {p0, v1, v2}, Lcom/swmansion/rnscreens/FabricEnabledViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 207
    return-void
.end method

.method public final startRemovalTransition()V
    .locals 1

    .line 377
    iget-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->isBeingRemoved:Z

    if-nez v0, :cond_0

    .line 378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/swmansion/rnscreens/Screen;->isBeingRemoved:Z

    .line 379
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/swmansion/rnscreens/Screen;->startTransitionRecursive(Landroid/view/ViewGroup;)V

    .line 381
    :cond_0
    return-void
.end method
