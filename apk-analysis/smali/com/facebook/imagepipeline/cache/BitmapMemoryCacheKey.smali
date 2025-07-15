.class public final Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;
.super Ljava/lang/Object;
.source "BitmapMemoryCacheKey.kt"

# interfaces
.implements Lcom/facebook/cache/common/CacheKey;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0086\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u000cJ\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\'\u001a\u00020\tH\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0010\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-H\u0016JK\u0010.\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010/\u001a\u00020+2\u0008\u00100\u001a\u0004\u0018\u00010\u000eH\u0096\u0002J\u0008\u00101\u001a\u00020\u0003H\u0016J\u0008\u00102\u001a\u00020\u0014H\u0016J\u0008\u00103\u001a\u00020+H\u0016J\t\u00104\u001a\u00020\u0003H\u00d6\u0001R\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u001e\u00a8\u00065"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;",
        "Lcom/facebook/cache/common/CacheKey;",
        "sourceString",
        "",
        "resizeOptions",
        "Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "rotationOptions",
        "Lcom/facebook/imagepipeline/common/RotationOptions;",
        "imageDecodeOptions",
        "Lcom/facebook/imagepipeline/common/ImageDecodeOptions;",
        "postprocessorCacheKey",
        "postprocessorName",
        "(Ljava/lang/String;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/cache/common/CacheKey;Ljava/lang/String;)V",
        "callerContext",
        "",
        "getCallerContext",
        "()Ljava/lang/Object;",
        "setCallerContext",
        "(Ljava/lang/Object;)V",
        "hash",
        "",
        "getImageDecodeOptions",
        "()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;",
        "inBitmapCacheSince",
        "",
        "getInBitmapCacheSince",
        "()J",
        "getPostprocessorCacheKey",
        "()Lcom/facebook/cache/common/CacheKey;",
        "getPostprocessorName",
        "()Ljava/lang/String;",
        "getResizeOptions",
        "()Lcom/facebook/imagepipeline/common/ResizeOptions;",
        "getRotationOptions",
        "()Lcom/facebook/imagepipeline/common/RotationOptions;",
        "getSourceString",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "containsUri",
        "",
        "uri",
        "Landroid/net/Uri;",
        "copy",
        "equals",
        "other",
        "getUriString",
        "hashCode",
        "isResourceIdForDebugging",
        "toString",
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


# instance fields
.field private callerContext:Ljava/lang/Object;

.field private final hash:I

.field private final imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

.field private final inBitmapCacheSince:J

.field private final postprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

.field private final postprocessorName:Ljava/lang/String;

.field private final resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

.field private final rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

.field private final sourceString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/cache/common/CacheKey;Ljava/lang/String;)V
    .locals 6
    .param p1, "sourceString"    # Ljava/lang/String;
    .param p2, "resizeOptions"    # Lcom/facebook/imagepipeline/common/ResizeOptions;
    .param p3, "rotationOptions"    # Lcom/facebook/imagepipeline/common/RotationOptions;
    .param p4, "imageDecodeOptions"    # Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .param p5, "postprocessorCacheKey"    # Lcom/facebook/cache/common/CacheKey;
    .param p6, "postprocessorName"    # Ljava/lang/String;

    const-string/jumbo v0, "sourceString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rotationOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageDecodeOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->sourceString:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    .line 22
    iput-object p3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    .line 23
    iput-object p4, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    .line 24
    iput-object p5, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    .line 25
    iput-object p6, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorName:Ljava/lang/String;

    .line 30
    move-object v0, p0

    check-cast v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;

    .local v0, "$this$hash_u24lambda_u240":Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;
    const/4 v1, 0x0

    .line 31
    .local v1, "$i$a$-run-BitmapMemoryCacheKey$hash$1":I
    iget-object v2, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->sourceString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    .line 32
    .local v2, "result":I
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/common/ResizeOptions;->hashCode()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    add-int/2addr v3, v4

    .line 33
    .end local v2    # "result":I
    .local v3, "result":I
    mul-int/lit8 v2, v3, 0x1f

    iget-object v4, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/common/RotationOptions;->hashCode()I

    move-result v4

    add-int/2addr v2, v4

    .line 34
    .end local v3    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-virtual {v4}, Lcom/facebook/imagepipeline/common/ImageDecodeOptions;->hashCode()I

    move-result v4

    add-int/2addr v3, v4

    .line 35
    .end local v2    # "result":I
    .restart local v3    # "result":I
    mul-int/lit8 v2, v3, 0x1f

    iget-object v4, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    add-int/2addr v2, v4

    .line 36
    .end local v3    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v3, v2, 0x1f

    iget-object v4, v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorName:Ljava/lang/String;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    :cond_2
    add-int/2addr v3, v5

    .line 37
    .end local v2    # "result":I
    .restart local v3    # "result":I
    nop

    .line 30
    .end local v0    # "$this$hash_u24lambda_u240":Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;
    .end local v1    # "$i$a$-run-BitmapMemoryCacheKey$hash$1":I
    .end local v3    # "result":I
    iput v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->hash:I

    .line 39
    invoke-static {}, Lcom/facebook/common/time/RealtimeSinceBootClock;->get()Lcom/facebook/common/time/RealtimeSinceBootClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/time/RealtimeSinceBootClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->inBitmapCacheSince:J

    .line 19
    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;Ljava/lang/String;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/cache/common/CacheKey;Ljava/lang/String;ILjava/lang/Object;)Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->sourceString:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorName:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->copy(Ljava/lang/String;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/cache/common/CacheKey;Ljava/lang/String;)Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->sourceString:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/facebook/imagepipeline/common/ResizeOptions;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    return-object v0
.end method

.method public final component3()Lcom/facebook/imagepipeline/common/RotationOptions;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public final component4()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    return-object v0
.end method

.method public final component5()Lcom/facebook/cache/common/CacheKey;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorName:Ljava/lang/String;

    return-object v0
.end method

.method public containsUri(Landroid/net/Uri;)Z
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->getUriString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "uri.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final copy(Ljava/lang/String;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/cache/common/CacheKey;Ljava/lang/String;)Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;
    .locals 8

    const-string/jumbo v0, "sourceString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rotationOptions"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageDecodeOptions"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;-><init>(Ljava/lang/String;Lcom/facebook/imagepipeline/common/ResizeOptions;Lcom/facebook/imagepipeline/common/RotationOptions;Lcom/facebook/imagepipeline/common/ImageDecodeOptions;Lcom/facebook/cache/common/CacheKey;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 53
    return v0

    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 56
    return v2

    .line 59
    :cond_2
    const-string/jumbo v1, "null cannot be cast to non-null type com.facebook.imagepipeline.cache.BitmapMemoryCacheKey"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;

    .line 61
    .local v1, "otherKey":Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->sourceString:Ljava/lang/String;

    iget-object v4, v1, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->sourceString:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 62
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    iget-object v4, v1, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 63
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    iget-object v4, v1, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 64
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget-object v4, v1, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 65
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    iget-object v4, v1, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorName:Ljava/lang/String;

    iget-object v4, v1, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorName:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 61
    :goto_1
    return v0
.end method

.method public final getCallerContext()Ljava/lang/Object;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->callerContext:Ljava/lang/Object;

    return-object v0
.end method

.method public final getImageDecodeOptions()Lcom/facebook/imagepipeline/common/ImageDecodeOptions;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    return-object v0
.end method

.method public final getInBitmapCacheSince()J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->inBitmapCacheSince:J

    return-wide v0
.end method

.method public final getPostprocessorCacheKey()Lcom/facebook/cache/common/CacheKey;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    return-object v0
.end method

.method public final getPostprocessorName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorName:Ljava/lang/String;

    return-object v0
.end method

.method public final getResizeOptions()Lcom/facebook/imagepipeline/common/ResizeOptions;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    return-object v0
.end method

.method public final getRotationOptions()Lcom/facebook/imagepipeline/common/RotationOptions;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    return-object v0
.end method

.method public final getSourceString()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->sourceString:Ljava/lang/String;

    return-object v0
.end method

.method public getUriString()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->sourceString:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->hash:I

    return v0
.end method

.method public isResourceIdForDebugging()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final setCallerContext(Ljava/lang/Object;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->callerContext:Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->sourceString:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->resizeOptions:Lcom/facebook/imagepipeline/common/ResizeOptions;

    iget-object v2, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->rotationOptions:Lcom/facebook/imagepipeline/common/RotationOptions;

    iget-object v3, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->imageDecodeOptions:Lcom/facebook/imagepipeline/common/ImageDecodeOptions;

    iget-object v4, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorCacheKey:Lcom/facebook/cache/common/CacheKey;

    iget-object v5, p0, Lcom/facebook/imagepipeline/cache/BitmapMemoryCacheKey;->postprocessorName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BitmapMemoryCacheKey(sourceString="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", resizeOptions="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rotationOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageDecodeOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", postprocessorCacheKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", postprocessorName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
