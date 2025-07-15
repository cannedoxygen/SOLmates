.class public final Lcom/facebook/react/views/imagehelper/MultiSourceHelper;
.super Ljava/lang/Object;
.source "MultiSourceHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0007J.\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\u000cH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/facebook/react/views/imagehelper/MultiSourceHelper;",
        "",
        "()V",
        "getBestSourceForSize",
        "Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;",
        "width",
        "",
        "height",
        "sources",
        "",
        "Lcom/facebook/react/views/imagehelper/ImageSource;",
        "multiplier",
        "",
        "MultiSourceResult",
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
.field public static final INSTANCE:Lcom/facebook/react/views/imagehelper/MultiSourceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/views/imagehelper/MultiSourceHelper;

    invoke-direct {v0}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper;-><init>()V

    sput-object v0, Lcom/facebook/react/views/imagehelper/MultiSourceHelper;->INSTANCE:Lcom/facebook/react/views/imagehelper/MultiSourceHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getBestSourceForSize(IILjava/util/List;)Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "sources"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/react/views/imagehelper/ImageSource;",
            ">;)",
            "Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "sources"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper;->getBestSourceForSize(IILjava/util/List;D)Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    move-result-object v0

    return-object v0
.end method

.method public static final getBestSourceForSize(IILjava/util/List;D)Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;
    .locals 16
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "sources"    # Ljava/util/List;
    .param p3, "multiplier"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/react/views/imagehelper/ImageSource;",
            ">;D)",
            "Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p2

    const-string/jumbo v1, "sources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    invoke-direct {v1, v2, v2}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;-><init>(Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/ImageSource;)V

    return-object v1

    .line 43
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 44
    new-instance v1, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/views/imagehelper/ImageSource;

    invoke-direct {v1, v3, v2}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;-><init>(Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/ImageSource;)V

    return-object v1

    .line 49
    :cond_1
    if-lez p0, :cond_8

    if-gtz p1, :cond_2

    goto/16 :goto_1

    .line 52
    :cond_2
    invoke-static {}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->getInstance()Lcom/facebook/imagepipeline/core/ImagePipelineFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/imagepipeline/core/ImagePipelineFactory;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v1

    const-string v2, "getImagePipeline(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .local v1, "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    const/4 v2, 0x0

    .line 54
    .local v2, "best":Lcom/facebook/react/views/imagehelper/ImageSource;
    const/4 v3, 0x0

    .line 55
    .local v3, "bestCached":Lcom/facebook/react/views/imagehelper/ImageSource;
    mul-int v4, p0, p1

    int-to-double v4, v4

    mul-double v4, v4, p3

    .line 56
    .local v4, "viewArea":D
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 57
    .local v6, "bestPrecision":D
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 58
    .local v8, "bestCachePrecision":D
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/react/views/imagehelper/ImageSource;

    .line 59
    .local v11, "source":Lcom/facebook/react/views/imagehelper/ImageSource;
    invoke-virtual {v11}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSize()D

    move-result-wide v12

    div-double/2addr v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    .line 60
    .local v12, "precision":D
    cmpg-double v14, v12, v6

    if-gez v14, :cond_4

    .line 61
    move-wide v6, v12

    .line 62
    move-object v2, v11

    .line 64
    :cond_4
    cmpg-double v14, v12, v8

    if-gez v14, :cond_3

    .line 65
    invoke-virtual {v11}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInBitmapMemoryCache(Landroid/net/Uri;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 66
    invoke-virtual {v11}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v1, v14}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInDiskCacheSync(Landroid/net/Uri;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 67
    :cond_5
    move-wide v8, v12

    .line 68
    move-object v3, v11

    .end local v11    # "source":Lcom/facebook/react/views/imagehelper/ImageSource;
    .end local v12    # "precision":D
    goto :goto_0

    .line 71
    :cond_6
    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSource()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSource()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 72
    const/4 v3, 0x0

    .line 74
    :cond_7
    new-instance v10, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    invoke-direct {v10, v2, v3}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;-><init>(Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/ImageSource;)V

    return-object v10

    .line 50
    .end local v1    # "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    .end local v2    # "best":Lcom/facebook/react/views/imagehelper/ImageSource;
    .end local v3    # "bestCached":Lcom/facebook/react/views/imagehelper/ImageSource;
    .end local v4    # "viewArea":D
    .end local v6    # "bestPrecision":D
    .end local v8    # "bestCachePrecision":D
    :cond_8
    :goto_1
    new-instance v1, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;

    invoke-direct {v1, v2, v2}, Lcom/facebook/react/views/imagehelper/MultiSourceHelper$MultiSourceResult;-><init>(Lcom/facebook/react/views/imagehelper/ImageSource;Lcom/facebook/react/views/imagehelper/ImageSource;)V

    return-object v1
.end method
