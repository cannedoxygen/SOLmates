.class public Lexpo/modules/constants/ConstantsService;
.super Ljava/lang/Object;
.source "ConstantsService.kt"

# interfaces
.implements Lexpo/modules/core/interfaces/InternalModule;
.implements Lexpo/modules/interfaces/constants/ConstantsInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/constants/ConstantsService$Companion;,
        Lexpo/modules/constants/ConstantsService$ExecutionEnvironment;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConstantsService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConstantsService.kt\nexpo/modules/constants/ConstantsService\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0016\u0018\u0000 \u001c2\u00020\u00012\u00020\u0002:\u0002\u001c\u001dB\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u0016J\u0016\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0007\u0012\u0006\u0012\u0004\u0018\u00010\u00140\u0013H\u0016J\u0008\u0010\u0015\u001a\u00020\u0007H\u0016J\u0012\u0010\u0016\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00180\u0017H\u0016J\u0008\u0010\u0019\u001a\u00020\u000cH\u0016J\u000e\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0017H\u0016J\u0008\u0010\u001b\u001a\u00020\u0007H\u0016R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00078BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001e"
    }
    d2 = {
        "Lexpo/modules/constants/ConstantsService;",
        "Lexpo/modules/core/interfaces/InternalModule;",
        "Lexpo/modules/interfaces/constants/ConstantsInterface;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "appConfig",
        "",
        "getAppConfig",
        "()Ljava/lang/String;",
        "sessionId",
        "statusBarHeightInternal",
        "",
        "getStatusBarHeightInternal",
        "()I",
        "setStatusBarHeightInternal",
        "(I)V",
        "getAppScopeKey",
        "getConstants",
        "",
        "",
        "getDeviceName",
        "getExportedInterfaces",
        "",
        "Ljava/lang/Class;",
        "getStatusBarHeight",
        "getSystemFonts",
        "getSystemVersion",
        "Companion",
        "ExecutionEnvironment",
        "expo-constants_debug"
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
.field public static final Companion:Lexpo/modules/constants/ConstantsService$Companion;


# instance fields
.field private final context:Landroid/content/Context;

.field private final sessionId:Ljava/lang/String;

.field private statusBarHeightInternal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/constants/ConstantsService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/constants/ConstantsService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/constants/ConstantsService;->Companion:Lexpo/modules/constants/ConstantsService$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/constants/ConstantsService;->context:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lexpo/modules/constants/ConstantsService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "dimen"

    const-string v2, "android"

    const-string v3, "status_bar_height"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 22
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 98
    nop

    .local v1, "it":I
    const/4 v2, 0x0

    .line 22
    .local v2, "$i$a$-takeIf-ConstantsService$statusBarHeightInternal$1":I
    const/4 v3, 0x0

    if-lez v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    .end local v1    # "it":I
    .end local v2    # "$i$a$-takeIf-ConstantsService$statusBarHeightInternal$1":I
    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_1
    if-eqz v0, :cond_2

    .line 22
    nop

    .line 23
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 98
    nop

    .local v0, "it":I
    const/4 v1, 0x0

    .line 23
    .local v1, "$i$a$-let-ConstantsService$statusBarHeightInternal$2":I
    iget-object v2, p0, Lexpo/modules/constants/ConstantsService;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 24
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-ConstantsService$statusBarHeightInternal$2":I
    nop

    .line 23
    nop

    .line 24
    nop

    .line 98
    nop

    .local v0, "pixels":I
    const/4 v1, 0x0

    .line 24
    .local v1, "$i$a$-let-ConstantsService$statusBarHeightInternal$3":I
    sget-object v2, Lexpo/modules/constants/ConstantsService;->Companion:Lexpo/modules/constants/ConstantsService$Companion;

    int-to-float v3, v0

    iget-object v4, p0, Lexpo/modules/constants/ConstantsService;->context:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lexpo/modules/constants/ConstantsService$Companion;->access$convertPixelsToDp(Lexpo/modules/constants/ConstantsService$Companion;FLandroid/content/Context;)I

    move-result v3

    .line 21
    .end local v0    # "pixels":I
    .end local v1    # "$i$a$-let-ConstantsService$statusBarHeightInternal$3":I
    goto :goto_2

    .line 25
    :cond_2
    nop

    .line 21
    :goto_2
    iput v3, p0, Lexpo/modules/constants/ConstantsService;->statusBarHeightInternal:I

    .line 27
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lexpo/modules/constants/ConstantsService;->sessionId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method private final getAppConfig()Ljava/lang/String;
    .locals 5

    .line 75
    nop

    .line 76
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lexpo/modules/constants/ConstantsService;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "app.config"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/InputStream;

    .local v2, "stream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 78
    .local v3, "$i$a$-use-ConstantsService$appConfig$1":I
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v2, v4}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "stream":Ljava/io/InputStream;
    .end local v3    # "$i$a$-use-ConstantsService$appConfig$1":I
    :try_start_2
    invoke-static {v1, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v4

    :catchall_0
    move-exception v2

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lexpo/modules/constants/ConstantsServiceKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error reading embedded app config"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 80
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 85
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getAppScopeKey()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lexpo/modules/constants/ConstantsService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConstants()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Lkotlin/Pair;

    const-string v1, "sessionId"

    iget-object v2, p0, Lexpo/modules/constants/ConstantsService;->sessionId:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 40
    sget-object v1, Lexpo/modules/constants/ConstantsService$ExecutionEnvironment;->BARE:Lexpo/modules/constants/ConstantsService$ExecutionEnvironment;

    invoke-virtual {v1}, Lexpo/modules/constants/ConstantsService$ExecutionEnvironment;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "executionEnvironment"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 39
    nop

    .line 41
    iget v1, p0, Lexpo/modules/constants/ConstantsService;->statusBarHeightInternal:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "statusBarHeight"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 39
    nop

    .line 42
    const-string v1, "deviceName"

    invoke-virtual {p0}, Lexpo/modules/constants/ConstantsService;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    nop

    .line 43
    const-string v1, "systemFonts"

    invoke-virtual {p0}, Lexpo/modules/constants/ConstantsService;->getSystemFonts()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 39
    nop

    .line 44
    const-string v1, "systemVersion"

    invoke-virtual {p0}, Lexpo/modules/constants/ConstantsService;->getSystemVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 39
    nop

    .line 45
    const-string v1, "manifest"

    invoke-direct {p0}, Lexpo/modules/constants/ConstantsService;->getAppConfig()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 39
    nop

    .line 46
    const-string v1, "android"

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "platform"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 39
    nop

    .line 38
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .line 53
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "MODEL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getExportedInterfaces()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    const-class v0, Lexpo/modules/interfaces/constants/ConstantsInterface;

    .line 35
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 1

    .line 55
    iget v0, p0, Lexpo/modules/constants/ConstantsService;->statusBarHeightInternal:I

    return v0
.end method

.method public final getStatusBarHeightInternal()I
    .locals 1

    .line 21
    iget v0, p0, Lexpo/modules/constants/ConstantsService;->statusBarHeightInternal:I

    return v0
.end method

.method public getSystemFonts()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "normal"

    aput-object v2, v0, v1

    .line 62
    const-string v1, "notoserif"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 61
    nop

    .line 63
    const-string v1, "sans-serif"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 61
    nop

    .line 64
    const-string v1, "sans-serif-light"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 61
    nop

    .line 65
    const-string v1, "sans-serif-thin"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 61
    nop

    .line 66
    const-string v1, "sans-serif-condensed"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 61
    nop

    .line 67
    const-string v1, "sans-serif-medium"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 61
    nop

    .line 68
    const-string v1, "serif"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 61
    nop

    .line 69
    const-string v1, "Roboto"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 61
    nop

    .line 70
    const-string v1, "monospace"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 61
    nop

    .line 60
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method public getSystemVersion()Ljava/lang/String;
    .locals 2

    .line 57
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "RELEASE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final setStatusBarHeightInternal(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 21
    iput p1, p0, Lexpo/modules/constants/ConstantsService;->statusBarHeightInternal:I

    .line 25
    return-void
.end method
