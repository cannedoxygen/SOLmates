.class public final Lcom/facebook/react/modules/toast/ToastModule;
.super Lcom/facebook/fbreact/specs/NativeToastAndroidSpec;
.source "ToastModule.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ToastAndroid"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/toast/ToastModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0007\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0013B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0014\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00080\u0006H\u0016J\u001a\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\rH\u0016J\"\u0010\u000e\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\rH\u0016J2\u0010\u0010\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\rH\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/react/modules/toast/ToastModule;",
        "Lcom/facebook/fbreact/specs/NativeToastAndroidSpec;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getTypedExportedConstants",
        "",
        "",
        "",
        "show",
        "",
        "message",
        "durationDouble",
        "",
        "showWithGravity",
        "gravityDouble",
        "showWithGravityAndOffset",
        "xOffsetDouble",
        "yOffsetDouble",
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
.field public static final Companion:Lcom/facebook/react/modules/toast/ToastModule$Companion;

.field private static final DURATION_LONG_KEY:Ljava/lang/String; = "LONG"

.field private static final DURATION_SHORT_KEY:Ljava/lang/String; = "SHORT"

.field private static final GRAVITY_BOTTOM_KEY:Ljava/lang/String; = "BOTTOM"

.field private static final GRAVITY_CENTER:Ljava/lang/String; = "CENTER"

.field private static final GRAVITY_TOP_KEY:Ljava/lang/String; = "TOP"

.field public static final NAME:Ljava/lang/String; = "ToastAndroid"


# direct methods
.method public static synthetic $r8$lambda$Bi27vsNsiteh1mOVNqJqwMOfRHA(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/facebook/react/modules/toast/ToastModule;->show$lambda$0(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bW2TQtglpcveSfWaQYXVCRb1pz4(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/modules/toast/ToastModule;->showWithGravity$lambda$1(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$dbonw_EMESs1vYH5jdQbmLohUi0(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;IIII)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/facebook/react/modules/toast/ToastModule;->showWithGravityAndOffset$lambda$2(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;IIII)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/modules/toast/ToastModule$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/toast/ToastModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/modules/toast/ToastModule;->Companion:Lcom/facebook/react/modules/toast/ToastModule$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeToastAndroidSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 20
    return-void
.end method

.method private static final show$lambda$0(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;I)V
    .locals 2
    .param p0, "this$0"    # Lcom/facebook/react/modules/toast/ToastModule;
    .param p1, "$message"    # Ljava/lang/String;
    .param p2, "$duration"    # I

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/facebook/react/modules/toast/ToastModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private static final showWithGravity$lambda$1(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;II)V
    .locals 2
    .param p0, "this$0"    # Lcom/facebook/react/modules/toast/ToastModule;
    .param p1, "$message"    # Ljava/lang/String;
    .param p2, "$duration"    # I
    .param p3, "$gravity"    # I

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/facebook/react/modules/toast/ToastModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 48
    .local v0, "toast":Landroid/widget/Toast;
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 49
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 50
    return-void
.end method

.method private static final showWithGravityAndOffset$lambda$2(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;IIII)V
    .locals 2
    .param p0, "this$0"    # Lcom/facebook/react/modules/toast/ToastModule;
    .param p1, "$message"    # Ljava/lang/String;
    .param p2, "$duration"    # I
    .param p3, "$gravity"    # I
    .param p4, "$xOffset"    # I
    .param p5, "$yOffset"    # I

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/facebook/react/modules/toast/ToastModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    move-object v1, p1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 67
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0, p3, p4, p5}, Landroid/widget/Toast;->setGravity(III)V

    .line 68
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    return-void
.end method


# virtual methods
.method public getTypedExportedConstants()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    const/4 v0, 0x5

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "SHORT"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    .line 26
    const-string v1, "LONG"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v0, v2

    .line 25
    nop

    .line 27
    const/16 v1, 0x31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TOP"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 25
    nop

    .line 28
    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "BOTTOM"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 25
    nop

    .line 29
    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CENTER"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 25
    nop

    .line 24
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 30
    return-object v0
.end method

.method public show(Ljava/lang/String;D)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "durationDouble"    # D

    .line 33
    double-to-int v0, p2

    .line 34
    .local v0, "duration":I
    new-instance v1, Lcom/facebook/react/modules/toast/ToastModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Lcom/facebook/react/modules/toast/ToastModule$$ExternalSyntheticLambda2;-><init>(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 36
    return-void
.end method

.method public showWithGravity(Ljava/lang/String;DD)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "durationDouble"    # D
    .param p4, "gravityDouble"    # D

    .line 43
    double-to-int v0, p2

    .line 44
    .local v0, "duration":I
    double-to-int v1, p4

    .line 45
    .local v1, "gravity":I
    new-instance v2, Lcom/facebook/react/modules/toast/ToastModule$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/facebook/react/modules/toast/ToastModule$$ExternalSyntheticLambda1;-><init>(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;II)V

    invoke-static {v2}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

.method public showWithGravityAndOffset(Ljava/lang/String;DDDD)V
    .locals 18
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "durationDouble"    # D
    .param p4, "gravityDouble"    # D
    .param p6, "xOffsetDouble"    # D
    .param p8, "yOffsetDouble"    # D

    .line 60
    move-wide/from16 v0, p2

    double-to-int v9, v0

    .line 61
    .local v9, "duration":I
    move-wide/from16 v10, p4

    double-to-int v12, v10

    .line 62
    .local v12, "gravity":I
    move-wide/from16 v13, p6

    double-to-int v15, v13

    .line 63
    .local v15, "xOffset":I
    move-wide/from16 v7, p8

    double-to-int v6, v7

    .line 64
    .local v6, "yOffset":I
    new-instance v16, Lcom/facebook/react/modules/toast/ToastModule$$ExternalSyntheticLambda0;

    move-object/from16 v2, v16

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v5, v9

    move/from16 v17, v6

    .end local v6    # "yOffset":I
    .local v17, "yOffset":I
    move v6, v12

    move v7, v15

    move/from16 v8, v17

    invoke-direct/range {v2 .. v8}, Lcom/facebook/react/modules/toast/ToastModule$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/modules/toast/ToastModule;Ljava/lang/String;IIII)V

    invoke-static/range {v16 .. v16}, Lcom/facebook/react/bridge/UiThreadUtil;->runOnUiThread(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method
