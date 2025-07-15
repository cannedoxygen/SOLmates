.class public final Lcom/facebook/imagepipeline/platform/PlatformDecoderFactory;
.super Ljava/lang/Object;
.source "PlatformDecoderFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J*\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0006\u0010\n\u001a\u00020\u000bH\u0007J\u001e\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/platform/PlatformDecoderFactory;",
        "",
        "()V",
        "buildPlatformDecoder",
        "Lcom/facebook/imagepipeline/platform/PlatformDecoder;",
        "poolFactory",
        "Lcom/facebook/imagepipeline/memory/PoolFactory;",
        "gingerbreadDecoderEnabled",
        "",
        "useDecodeBufferHelper",
        "platformDecoderOptions",
        "Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;",
        "createPool",
        "Landroidx/core/util/Pools$Pool;",
        "Ljava/nio/ByteBuffer;",
        "imagepipeline_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/imagepipeline/platform/PlatformDecoderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/imagepipeline/platform/PlatformDecoderFactory;

    invoke-direct {v0}, Lcom/facebook/imagepipeline/platform/PlatformDecoderFactory;-><init>()V

    sput-object v0, Lcom/facebook/imagepipeline/platform/PlatformDecoderFactory;->INSTANCE:Lcom/facebook/imagepipeline/platform/PlatformDecoderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final buildPlatformDecoder(Lcom/facebook/imagepipeline/memory/PoolFactory;ZLcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)Lcom/facebook/imagepipeline/platform/PlatformDecoder;
    .locals 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "poolFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "platformDecoderOptions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/facebook/imagepipeline/platform/PlatformDecoderFactory;->buildPlatformDecoder$default(Lcom/facebook/imagepipeline/memory/PoolFactory;ZZLcom/facebook/imagepipeline/platform/PlatformDecoderOptions;ILjava/lang/Object;)Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    move-result-object v0

    return-object v0
.end method

.method public static final buildPlatformDecoder(Lcom/facebook/imagepipeline/memory/PoolFactory;ZZLcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)Lcom/facebook/imagepipeline/platform/PlatformDecoder;
    .locals 3
    .param p0, "poolFactory"    # Lcom/facebook/imagepipeline/memory/PoolFactory;
    .param p1, "gingerbreadDecoderEnabled"    # Z
    .param p2, "useDecodeBufferHelper"    # Z
    .param p3, "platformDecoderOptions"    # Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "poolFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "platformDecoderOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-string/jumbo v2, "poolFactory.bitmapPool"

    if-lt v0, v1, :cond_0

    .line 38
    new-instance v0, Lcom/facebook/imagepipeline/platform/OreoDecoder;

    .line 39
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getBitmapPool()Lcom/facebook/imagepipeline/memory/BitmapPool;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-static {p0, p2}, Lcom/facebook/imagepipeline/platform/PlatformDecoderFactory;->createPool(Lcom/facebook/imagepipeline/memory/PoolFactory;Z)Landroidx/core/util/Pools$Pool;

    move-result-object v2

    .line 41
    nop

    .line 38
    invoke-direct {v0, v1, v2, p3}, Lcom/facebook/imagepipeline/platform/OreoDecoder;-><init>(Lcom/facebook/imagepipeline/memory/BitmapPool;Landroidx/core/util/Pools$Pool;Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)V

    check-cast v0, Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    goto :goto_0

    .line 42
    :cond_0
    nop

    .line 44
    new-instance v0, Lcom/facebook/imagepipeline/platform/ArtDecoder;

    .line 45
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getBitmapPool()Lcom/facebook/imagepipeline/memory/BitmapPool;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, p2}, Lcom/facebook/imagepipeline/platform/PlatformDecoderFactory;->createPool(Lcom/facebook/imagepipeline/memory/PoolFactory;Z)Landroidx/core/util/Pools$Pool;

    move-result-object v2

    .line 47
    nop

    .line 44
    invoke-direct {v0, v1, v2, p3}, Lcom/facebook/imagepipeline/platform/ArtDecoder;-><init>(Lcom/facebook/imagepipeline/memory/BitmapPool;Landroidx/core/util/Pools$Pool;Lcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)V

    check-cast v0, Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    .line 71
    :goto_0
    return-object v0
.end method

.method public static synthetic buildPlatformDecoder$default(Lcom/facebook/imagepipeline/memory/PoolFactory;ZZLcom/facebook/imagepipeline/platform/PlatformDecoderOptions;ILjava/lang/Object;)Lcom/facebook/imagepipeline/platform/PlatformDecoder;
    .locals 0

    .line 31
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 34
    const/4 p2, 0x0

    .line 31
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/platform/PlatformDecoderFactory;->buildPlatformDecoder(Lcom/facebook/imagepipeline/memory/PoolFactory;ZZLcom/facebook/imagepipeline/platform/PlatformDecoderOptions;)Lcom/facebook/imagepipeline/platform/PlatformDecoder;

    move-result-object p0

    return-object p0
.end method

.method public static final createPool(Lcom/facebook/imagepipeline/memory/PoolFactory;Z)Landroidx/core/util/Pools$Pool;
    .locals 4
    .param p0, "poolFactory"    # Lcom/facebook/imagepipeline/memory/PoolFactory;
    .param p1, "useDecodeBufferHelper"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/imagepipeline/memory/PoolFactory;",
            "Z)",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "poolFactory"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    sget-object v0, Lcom/facebook/common/memory/DecodeBufferHelper;->INSTANCE:Lcom/facebook/common/memory/DecodeBufferHelper;

    const-string v1, "INSTANCE"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/core/util/Pools$Pool;

    return-object v0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/memory/PoolFactory;->getFlexByteArrayPoolMaxNumThreads()I

    move-result v0

    .line 79
    .local v0, "maxNumThreads":I
    new-instance v1, Landroidx/core/util/Pools$SynchronizedPool;

    invoke-direct {v1, v0}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    check-cast v1, Landroidx/core/util/Pools$Pool;

    .line 80
    .local v1, "pool":Landroidx/core/util/Pools$Pool;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 81
    invoke-static {}, Lcom/facebook/common/memory/DecodeBufferHelper;->getRecommendedDecodeBufferSize()I

    move-result v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method
