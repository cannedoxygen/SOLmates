.class public final Lcom/facebook/react/uimanager/DisplayMetricsHolder;
.super Ljava/lang/Object;
.source "DisplayMetricsHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisplayMetricsHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisplayMetricsHolder.kt\ncom/facebook/react/uimanager/DisplayMetricsHolder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0018\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000c\u001a\u00020\rH\u0002J\u0008\u0010\u0010\u001a\u00020\u0006H\u0007J\u0008\u0010\u0011\u001a\u00020\u0006H\u0007J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0010\u0010\u0016\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0007J\u0012\u0010\u0017\u001a\u00020\u00132\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u0007J\u0012\u0010\u0018\u001a\u00020\u00132\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0007\u0010\u0002R\u001a\u0010\u0008\u001a\u0004\u0018\u00010\u00068\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\t\u0010\u0002\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/DisplayMetricsHolder;",
        "",
        "()V",
        "INITIALIZATION_MISSING_MESSAGE",
        "",
        "screenDisplayMetrics",
        "Landroid/util/DisplayMetrics;",
        "getScreenDisplayMetrics$annotations",
        "windowDisplayMetrics",
        "getWindowDisplayMetrics$annotations",
        "getDisplayMetricsWritableMap",
        "Lcom/facebook/react/bridge/WritableMap;",
        "fontScale",
        "",
        "getPhysicalPixelsWritableMap",
        "displayMetrics",
        "getScreenDisplayMetrics",
        "getWindowDisplayMetrics",
        "initDisplayMetrics",
        "",
        "context",
        "Landroid/content/Context;",
        "initDisplayMetricsIfNotInitialized",
        "setScreenDisplayMetrics",
        "setWindowDisplayMetrics",
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
.field private static final INITIALIZATION_MISSING_MESSAGE:Ljava/lang/String; = "DisplayMetricsHolder must be initialized with initDisplayMetricsIfNotInitialized or initDisplayMetrics"

.field public static final INSTANCE:Lcom/facebook/react/uimanager/DisplayMetricsHolder;

.field private static screenDisplayMetrics:Landroid/util/DisplayMetrics;

.field private static windowDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->INSTANCE:Lcom/facebook/react/uimanager/DisplayMetricsHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDisplayMetricsWritableMap(D)Lcom/facebook/react/bridge/WritableMap;
    .locals 6
    .param p0, "fontScale"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 78
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->windowDisplayMetrics:Landroid/util/DisplayMetrics;

    const-string v1, "DisplayMetricsHolder must be initialized with initDisplayMetricsIfNotInitialized or initDisplayMetrics"

    if-eqz v0, :cond_1

    .line 79
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->screenDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    move-object v1, v0

    .local v1, "$this$getDisplayMetricsWritableMap_u24lambda_u245":Lcom/facebook/react/bridge/WritableNativeMap;
    const/4 v2, 0x0

    .line 82
    .local v2, "$i$a$-apply-DisplayMetricsHolder$getDisplayMetricsWritableMap$3":I
    nop

    .line 83
    nop

    .line 84
    sget-object v3, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->INSTANCE:Lcom/facebook/react/uimanager/DisplayMetricsHolder;

    sget-object v4, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->windowDisplayMetrics:Landroid/util/DisplayMetrics;

    const-string/jumbo v5, "null cannot be cast to non-null type android.util.DisplayMetrics"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getPhysicalPixelsWritableMap(Landroid/util/DisplayMetrics;D)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReadableMap;

    .line 82
    const-string/jumbo v4, "windowPhysicalPixels"

    invoke-virtual {v1, v4, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 85
    nop

    .line 86
    nop

    .line 87
    sget-object v3, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->INSTANCE:Lcom/facebook/react/uimanager/DisplayMetricsHolder;

    sget-object v4, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->screenDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v4, p0, p1}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->getPhysicalPixelsWritableMap(Landroid/util/DisplayMetrics;D)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/bridge/ReadableMap;

    .line 85
    const-string/jumbo v4, "screenPhysicalPixels"

    invoke-virtual {v1, v4, v3}, Lcom/facebook/react/bridge/WritableNativeMap;->putMap(Ljava/lang/String;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 88
    nop

    .line 81
    .end local v1    # "$this$getDisplayMetricsWritableMap_u24lambda_u245":Lcom/facebook/react/bridge/WritableNativeMap;
    .end local v2    # "$i$a$-apply-DisplayMetricsHolder$getDisplayMetricsWritableMap$3":I
    check-cast v0, Lcom/facebook/react/bridge/WritableMap;

    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 79
    .local v0, "$i$a$-checkNotNull-DisplayMetricsHolder$getDisplayMetricsWritableMap$2":I
    nop

    .end local v0    # "$i$a$-checkNotNull-DisplayMetricsHolder$getDisplayMetricsWritableMap$2":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_1
    const/4 v0, 0x0

    .line 78
    .local v0, "$i$a$-checkNotNull-DisplayMetricsHolder$getDisplayMetricsWritableMap$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-DisplayMetricsHolder$getDisplayMetricsWritableMap$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final getPhysicalPixelsWritableMap(Landroid/util/DisplayMetrics;D)Lcom/facebook/react/bridge/WritableMap;
    .locals 6
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .param p2, "fontScale"    # D

    .line 95
    new-instance v0, Lcom/facebook/react/bridge/WritableNativeMap;

    invoke-direct {v0}, Lcom/facebook/react/bridge/WritableNativeMap;-><init>()V

    move-object v1, v0

    .local v1, "$this$getPhysicalPixelsWritableMap_u24lambda_u246":Lcom/facebook/react/bridge/WritableNativeMap;
    const/4 v2, 0x0

    .line 96
    .local v2, "$i$a$-apply-DisplayMetricsHolder$getPhysicalPixelsWritableMap$1":I
    const-string/jumbo v3, "width"

    iget v4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    .line 97
    const-string v3, "height"

    iget v4, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v1, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putInt(Ljava/lang/String;I)V

    .line 98
    iget v3, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v3, v3

    const-string/jumbo v5, "scale"

    invoke-virtual {v1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    .line 99
    const-string v3, "fontScale"

    invoke-virtual {v1, v3, p2, p3}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    .line 100
    iget v3, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-double v3, v3

    const-string v5, "densityDpi"

    invoke-virtual {v1, v5, v3, v4}, Lcom/facebook/react/bridge/WritableNativeMap;->putDouble(Ljava/lang/String;D)V

    .line 101
    nop

    .line 95
    .end local v1    # "$this$getPhysicalPixelsWritableMap_u24lambda_u246":Lcom/facebook/react/bridge/WritableNativeMap;
    .end local v2    # "$i$a$-apply-DisplayMetricsHolder$getPhysicalPixelsWritableMap$1":I
    check-cast v0, Lcom/facebook/react/bridge/WritableMap;

    .line 101
    return-object v0
.end method

.method public static final getScreenDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 42
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->screenDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    .line 43
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->screenDisplayMetrics:Landroid/util/DisplayMetrics;

    const-string/jumbo v1, "null cannot be cast to non-null type android.util.DisplayMetrics"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 42
    .local v0, "$i$a$-checkNotNull-DisplayMetricsHolder$getScreenDisplayMetrics$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-DisplayMetricsHolder$getScreenDisplayMetrics$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DisplayMetricsHolder must be initialized with initDisplayMetricsIfNotInitialized or initDisplayMetrics"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic getScreenDisplayMetrics$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getWindowDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 30
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->windowDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->windowDisplayMetrics:Landroid/util/DisplayMetrics;

    const-string/jumbo v1, "null cannot be cast to non-null type android.util.DisplayMetrics"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 30
    .local v0, "$i$a$-checkNotNull-DisplayMetricsHolder$getWindowDisplayMetrics$1":I
    nop

    .end local v0    # "$i$a$-checkNotNull-DisplayMetricsHolder$getWindowDisplayMetrics$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DisplayMetricsHolder must be initialized with initDisplayMetricsIfNotInitialized or initDisplayMetrics"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic getWindowDisplayMetrics$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final initDisplayMetrics(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 62
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    sput-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->windowDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 63
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    .local v1, "screenDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1, v0}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 65
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/view/WindowManager;

    .line 66
    .local v2, "wm":Landroid/view/WindowManager;
    nop

    .line 72
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 73
    sput-object v1, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->screenDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 74
    return-void
.end method

.method public static final initDisplayMetricsIfNotInitialized(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->screenDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    .line 54
    return-void

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->initDisplayMetrics(Landroid/content/Context;)V

    .line 57
    return-void
.end method

.method public static final setScreenDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p0, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 48
    sput-object p0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->screenDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 49
    return-void
.end method

.method public static final setWindowDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0
    .param p0, "displayMetrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 36
    sput-object p0, Lcom/facebook/react/uimanager/DisplayMetricsHolder;->windowDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 37
    return-void
.end method
