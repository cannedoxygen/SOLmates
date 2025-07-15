.class public final Lcom/facebook/react/modules/camera/ImageStoreManager;
.super Lcom/facebook/fbreact/specs/NativeImageStoreAndroidSpec;
.source "ImageStoreManager.kt"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "ImageStoreManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/facebook/react/modules/camera/ImageStoreManager;",
        "Lcom/facebook/fbreact/specs/NativeImageStoreAndroidSpec;",
        "reactContext",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "(Lcom/facebook/react/bridge/ReactApplicationContext;)V",
        "getBase64ForTag",
        "",
        "uri",
        "",
        "success",
        "Lcom/facebook/react/bridge/Callback;",
        "error",
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
.field private static final BUFFER_SIZE:I = 0x2000

.field public static final Companion:Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;

.field public static final NAME:Ljava/lang/String; = "ImageStoreManager"


# direct methods
.method public static synthetic $r8$lambda$lVeHviXmd8TzIPdaAKXHMY55gcg(Lcom/facebook/react/modules/camera/ImageStoreManager;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/modules/camera/ImageStoreManager;->getBase64ForTag$lambda$0(Lcom/facebook/react/modules/camera/ImageStoreManager;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/modules/camera/ImageStoreManager;->Companion:Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 1
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string/jumbo v0, "reactContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeImageStoreAndroidSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 25
    return-void
.end method

.method private static final getBase64ForTag$lambda$0(Lcom/facebook/react/modules/camera/ImageStoreManager;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 6
    .param p0, "this$0"    # Lcom/facebook/react/modules/camera/ImageStoreManager;
    .param p1, "$uri"    # Ljava/lang/String;
    .param p2, "$success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "$error"    # Lcom/facebook/react/bridge/Callback;

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    nop

    .line 39
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/react/modules/camera/ImageStoreManager;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 41
    .local v1, "parsedUri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type java.io.InputStream"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .local v2, "inputStream":Ljava/io/InputStream;
    nop

    .line 43
    :try_start_1
    sget-object v3, Lcom/facebook/react/modules/camera/ImageStoreManager;->Companion:Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;

    invoke-virtual {v3, v2}, Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;->convertInputStreamToBase64OutputStream$ReactAndroid_debug(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p2, v3}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    :try_start_2
    sget-object v3, Lcom/facebook/react/modules/camera/ImageStoreManager;->Companion:Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;

    move-object v4, v2

    check-cast v4, Ljava/io/Closeable;

    :goto_0
    invoke-static {v3, v4}, Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;->access$closeQuietly(Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 48
    goto :goto_2

    .line 47
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 44
    :catch_0
    move-exception v3

    .line 45
    .local v3, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    .end local v3    # "e":Ljava/io/IOException;
    :try_start_4
    sget-object v3, Lcom/facebook/react/modules/camera/ImageStoreManager;->Companion:Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;

    move-object v4, v2

    check-cast v4, Ljava/io/Closeable;

    goto :goto_0

    :goto_1
    sget-object v4, Lcom/facebook/react/modules/camera/ImageStoreManager;->Companion:Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;

    move-object v5, v2

    check-cast v5, Ljava/io/Closeable;

    invoke-static {v4, v5}, Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;->access$closeQuietly(Lcom/facebook/react/modules/camera/ImageStoreManager$Companion;Ljava/io/Closeable;)V

    .end local p0    # "this$0":Lcom/facebook/react/modules/camera/ImageStoreManager;
    .end local p1    # "$uri":Ljava/lang/String;
    .end local p2    # "$success":Lcom/facebook/react/bridge/Callback;
    .end local p3    # "$error":Lcom/facebook/react/bridge/Callback;
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 49
    .end local v0    # "contentResolver":Landroid/content/ContentResolver;
    .end local v1    # "parsedUri":Landroid/net/Uri;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "this$0":Lcom/facebook/react/modules/camera/ImageStoreManager;
    .restart local p1    # "$uri":Ljava/lang/String;
    .restart local p2    # "$success":Lcom/facebook/react/bridge/Callback;
    .restart local p3    # "$error":Lcom/facebook/react/bridge/Callback;
    :catch_1
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    .line 52
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_2
    return-void
.end method


# virtual methods
.method public getBase64ForTag(Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "success"    # Lcom/facebook/react/bridge/Callback;
    .param p3, "error"    # Lcom/facebook/react/bridge/Callback;

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 37
    .local v0, "executor":Ljava/util/concurrent/ExecutorService;
    new-instance v1, Lcom/facebook/react/modules/camera/ImageStoreManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/react/modules/camera/ImageStoreManager$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/modules/camera/ImageStoreManager;Ljava/lang/String;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 53
    return-void
.end method
