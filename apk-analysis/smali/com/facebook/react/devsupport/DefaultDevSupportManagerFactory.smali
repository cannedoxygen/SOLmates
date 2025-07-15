.class public final Lcom/facebook/react/devsupport/DefaultDevSupportManagerFactory;
.super Ljava/lang/Object;
.source "DefaultDevSupportManagerFactory.kt"

# interfaces
.implements Lcom/facebook/react/devsupport/DevSupportManagerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/devsupport/DefaultDevSupportManagerFactory$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010$\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u0005\u00a2\u0006\u0002\u0010\u0002Jz\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0014\u0010\u0013\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J2\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0011\u001a\u00020\u0012H\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/facebook/react/devsupport/DefaultDevSupportManagerFactory;",
        "Lcom/facebook/react/devsupport/DevSupportManagerFactory;",
        "()V",
        "create",
        "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;",
        "applicationContext",
        "Landroid/content/Context;",
        "reactInstanceManagerHelper",
        "Lcom/facebook/react/devsupport/ReactInstanceDevHelper;",
        "packagerPathForJSBundleName",
        "",
        "enableOnCreate",
        "",
        "redBoxHandler",
        "Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;",
        "devBundleDownloadListener",
        "Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;",
        "minNumShakes",
        "",
        "customPackagerCommandHandlers",
        "",
        "Lcom/facebook/react/packagerconnection/RequestHandler;",
        "surfaceDelegateFactory",
        "Lcom/facebook/react/common/SurfaceDelegateFactory;",
        "devLoadingViewManager",
        "Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;",
        "pausedInDebuggerOverlayManager",
        "Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;",
        "reactInstanceDevHelper",
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
.field private static final Companion:Lcom/facebook/react/devsupport/DefaultDevSupportManagerFactory$Companion;

.field private static final DEVSUPPORT_IMPL_CLASS:Ljava/lang/String; = "BridgeDevSupportManager"

.field private static final DEVSUPPORT_IMPL_PACKAGE:Ljava/lang/String; = "com.facebook.react.devsupport"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/devsupport/DefaultDevSupportManagerFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/devsupport/DefaultDevSupportManagerFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/devsupport/DefaultDevSupportManagerFactory;->Companion:Lcom/facebook/react/devsupport/DefaultDevSupportManagerFactory$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZI)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .locals 15
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "reactInstanceDevHelper"    # Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
    .param p3, "packagerPathForJSBundleName"    # Ljava/lang/String;
    .param p4, "enableOnCreate"    # Z
    .param p5, "minNumShakes"    # I
    .annotation runtime Lkotlin/Deprecated;
        message = "in favor of the customisable create for DevSupportManagerFactory"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "create(applicationContext, reactInstanceManagerHelper, packagerPathForJSBundleName, enableOnCreate, redBoxHandler, devBundleDownloadListener, minNumShakes, customPackagerCommandHandlers, surfaceDelegateFactory, devLoadingViewManager, pausedInDebuggerOverlayManager)"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "applicationContext"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reactInstanceDevHelper"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    nop

    .line 38
    nop

    .line 39
    nop

    .line 40
    nop

    .line 41
    nop

    .line 42
    nop

    .line 43
    nop

    .line 44
    nop

    .line 45
    nop

    .line 46
    nop

    .line 47
    nop

    .line 48
    nop

    .line 37
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v12}, Lcom/facebook/react/devsupport/DefaultDevSupportManagerFactory;->create(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/interfaces/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;Lcom/facebook/react/common/SurfaceDelegateFactory;Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v0

    return-object v0
.end method

.method public create(Landroid/content/Context;Lcom/facebook/react/devsupport/ReactInstanceDevHelper;Ljava/lang/String;ZLcom/facebook/react/devsupport/interfaces/RedBoxHandler;Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;ILjava/util/Map;Lcom/facebook/react/common/SurfaceDelegateFactory;Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;)Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .locals 16
    .param p1, "applicationContext"    # Landroid/content/Context;
    .param p2, "reactInstanceManagerHelper"    # Lcom/facebook/react/devsupport/ReactInstanceDevHelper;
    .param p3, "packagerPathForJSBundleName"    # Ljava/lang/String;
    .param p4, "enableOnCreate"    # Z
    .param p5, "redBoxHandler"    # Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;
    .param p6, "devBundleDownloadListener"    # Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;
    .param p7, "minNumShakes"    # I
    .param p8, "customPackagerCommandHandlers"    # Ljava/util/Map;
    .param p9, "surfaceDelegateFactory"    # Lcom/facebook/react/common/SurfaceDelegateFactory;
    .param p10, "devLoadingViewManager"    # Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;
    .param p11, "pausedInDebuggerOverlayManager"    # Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/react/devsupport/ReactInstanceDevHelper;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;",
            "Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/facebook/react/packagerconnection/RequestHandler;",
            ">;",
            "Lcom/facebook/react/common/SurfaceDelegateFactory;",
            "Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;",
            "Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;",
            ")",
            "Lcom/facebook/react/devsupport/interfaces/DevSupportManager;"
        }
    .end annotation

    move-object/from16 v12, p1

    const-string v0, "applicationContext"

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reactInstanceManagerHelper"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    if-nez p4, :cond_0

    .line 65
    new-instance v0, Lcom/facebook/react/devsupport/ReleaseDevSupportManager;

    invoke-direct {v0}, Lcom/facebook/react/devsupport/ReleaseDevSupportManager;-><init>()V

    check-cast v0, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    goto/16 :goto_1

    .line 67
    :cond_0
    nop

    .line 78
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.facebook.react.devsupport"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string v1, "BridgeDevSupportManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    nop

    .line 82
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v14, v1

    .line 84
    .local v14, "devSupportManagerClass":Ljava/lang/Class;
    nop

    .line 85
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Lcom/facebook/react/devsupport/ReactInstanceDevHelper;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    const-class v2, Lcom/facebook/react/devsupport/interfaces/RedBoxHandler;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    const-class v2, Lcom/facebook/react/devsupport/interfaces/DevBundleDownloadListener;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    const-class v2, Ljava/util/Map;

    const/4 v4, 0x7

    aput-object v2, v1, v4

    const-class v2, Lcom/facebook/react/common/SurfaceDelegateFactory;

    const/16 v4, 0x8

    aput-object v2, v1, v4

    const-class v2, Lcom/facebook/react/devsupport/interfaces/DevLoadingViewManager;

    const/16 v4, 0x9

    aput-object v2, v1, v4

    const-class v2, Lcom/facebook/react/devsupport/interfaces/PausedInDebuggerOverlayManager;

    const/16 v4, 0xa

    aput-object v2, v1, v4

    .line 84
    invoke-virtual {v14, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 83
    move-object v15, v1

    .line 96
    .local v15, "constructor":Ljava/lang/reflect/Constructor;
    nop

    .line 97
    nop

    .line 98
    nop

    .line 97
    nop

    .line 99
    nop

    .line 97
    nop

    .line 100
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 97
    nop

    .line 101
    nop

    .line 97
    nop

    .line 102
    nop

    .line 97
    nop

    .line 103
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 97
    nop

    .line 104
    nop

    .line 97
    nop

    .line 105
    nop

    .line 97
    nop

    .line 106
    nop

    .line 97
    nop

    .line 107
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    filled-new-array/range {v1 .. v11}, [Ljava/lang/Object;

    move-result-object v1

    .line 97
    nop

    .line 96
    invoke-virtual {v15, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "null cannot be cast to non-null type com.facebook.react.devsupport.interfaces.DevSupportManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .end local v0    # "className":Ljava/lang/String;
    .end local v14    # "devSupportManagerClass":Ljava/lang/Class;
    .end local v15    # "constructor":Ljava/lang/reflect/Constructor;
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/facebook/react/devsupport/PerftestDevSupportManager;

    invoke-direct {v1, v12}, Lcom/facebook/react/devsupport/PerftestDevSupportManager;-><init>(Landroid/content/Context;)V

    check-cast v1, Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-object v0, v1

    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    nop

    .line 64
    :goto_1
    return-object v0
.end method
