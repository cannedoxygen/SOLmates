.class Lcom/horcrux/svg/ImageView;
.super Lcom/horcrux/svg/RenderableView;
.source "ImageView.java"


# instance fields
.field private mAlign:Ljava/lang/String;

.field private mH:Lcom/horcrux/svg/SVGLength;

.field private mImageHeight:I

.field private mImageWidth:I

.field private final mLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mMeetOrSlice:I

.field private mW:Lcom/horcrux/svg/SVGLength;

.field private mX:Lcom/horcrux/svg/SVGLength;

.field private mY:Lcom/horcrux/svg/SVGLength;

.field private uriString:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLoading(Lcom/horcrux/svg/ImageView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/horcrux/svg/ImageView;->mLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgeturiString(Lcom/horcrux/svg/ImageView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/horcrux/svg/ImageView;->uriString:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 2
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactContext;

    .line 56
    invoke-direct {p0, p1}, Lcom/horcrux/svg/RenderableView;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/horcrux/svg/ImageView;->mLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    return-void
.end method

.method private doRender(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;F)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "opacity"    # F

    .line 191
    iget v0, p0, Lcom/horcrux/svg/ImageView;->mImageWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/horcrux/svg/ImageView;->mImageHeight:I

    if-nez v0, :cond_1

    .line 192
    :cond_0
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/ImageView;->mImageWidth:I

    .line 193
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/ImageView;->mImageHeight:I

    .line 196
    :cond_1
    invoke-direct {p0}, Lcom/horcrux/svg/ImageView;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 197
    .local v0, "renderRect":Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/horcrux/svg/ImageView;->mImageWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/horcrux/svg/ImageView;->mImageHeight:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 198
    .local v1, "vbRect":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/horcrux/svg/ImageView;->mAlign:Ljava/lang/String;

    iget v3, p0, Lcom/horcrux/svg/ImageView;->mMeetOrSlice:I

    invoke-static {v1, v0, v2, v3}, Lcom/horcrux/svg/ViewBox;->getTransform(Landroid/graphics/RectF;Landroid/graphics/RectF;Ljava/lang/String;I)Landroid/graphics/Matrix;

    move-result-object v2

    .line 199
    .local v2, "transform":Landroid/graphics/Matrix;
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/ImageView;->getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/horcrux/svg/ImageView;->getClipPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;

    move-result-object v3

    .line 204
    .local v3, "clipPath":Landroid/graphics/Path;
    if-eqz v3, :cond_2

    .line 205
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 208
    :cond_2
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 209
    .local v4, "alphaPaint":Landroid/graphics/Paint;
    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v5, p4

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 210
    const/4 v5, 0x0

    invoke-virtual {p1, p3, v5, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 211
    iget-object v5, p0, Lcom/horcrux/svg/ImageView;->mCTM:Landroid/graphics/Matrix;

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 212
    invoke-virtual {p0, v1}, Lcom/horcrux/svg/ImageView;->setClientRect(Landroid/graphics/RectF;)V

    .line 213
    return-void
.end method

.method private getRect()Landroid/graphics/RectF;
    .locals 14
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/horcrux/svg/ImageView;->mX:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v0}, Lcom/horcrux/svg/ImageView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v0

    .line 177
    .local v0, "x":D
    iget-object v2, p0, Lcom/horcrux/svg/ImageView;->mY:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v2}, Lcom/horcrux/svg/ImageView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v2

    .line 178
    .local v2, "y":D
    iget-object v4, p0, Lcom/horcrux/svg/ImageView;->mW:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v4}, Lcom/horcrux/svg/ImageView;->relativeOnWidth(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v4

    .line 179
    .local v4, "w":D
    iget-object v6, p0, Lcom/horcrux/svg/ImageView;->mH:Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p0, v6}, Lcom/horcrux/svg/ImageView;->relativeOnHeight(Lcom/horcrux/svg/SVGLength;)D

    move-result-wide v6

    .line 180
    .local v6, "h":D
    const-wide/16 v8, 0x0

    cmpl-double v10, v4, v8

    if-nez v10, :cond_0

    .line 181
    iget v10, p0, Lcom/horcrux/svg/ImageView;->mImageWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/horcrux/svg/ImageView;->mScale:F

    mul-float/2addr v10, v11

    float-to-double v4, v10

    .line 183
    :cond_0
    cmpl-double v8, v6, v8

    if-nez v8, :cond_1

    .line 184
    iget v8, p0, Lcom/horcrux/svg/ImageView;->mImageHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/horcrux/svg/ImageView;->mScale:F

    mul-float/2addr v8, v9

    float-to-double v6, v8

    .line 187
    :cond_1
    new-instance v8, Landroid/graphics/RectF;

    double-to-float v9, v0

    double-to-float v10, v2

    add-double v11, v0, v4

    double-to-float v11, v11

    add-double v12, v2, v6

    double-to-float v12, v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v8
.end method

.method private loadBitmap(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 3
    .param p1, "imagePipeline"    # Lcom/facebook/imagepipeline/core/ImagePipeline;
    .param p2, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 136
    iget-object v0, p0, Lcom/horcrux/svg/ImageView;->mLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 137
    iget-object v0, p0, Lcom/horcrux/svg/ImageView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 138
    invoke-virtual {p1, p2, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchDecodedImage(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    .line 139
    .local v0, "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    new-instance v1, Lcom/horcrux/svg/ImageView$1;

    invoke-direct {v1, p0}, Lcom/horcrux/svg/ImageView$1;-><init>(Lcom/horcrux/svg/ImageView;)V

    .line 171
    .local v1, "subscriber":Lcom/facebook/imagepipeline/datasource/BaseBitmapDataSubscriber;
    invoke-static {}, Lcom/facebook/common/executors/UiThreadImmediateExecutorService;->getInstance()Lcom/facebook/common/executors/UiThreadImmediateExecutorService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/datasource/DataSource;->subscribe(Lcom/facebook/datasource/DataSubscriber;Ljava/util/concurrent/Executor;)V

    .line 172
    return-void
.end method

.method private tryRenderFromBitmapCache(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 5
    .param p1, "imagePipeline"    # Lcom/facebook/imagepipeline/core/ImagePipeline;
    .param p2, "request"    # Lcom/facebook/imagepipeline/request/ImageRequest;
    .param p3, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "paint"    # Landroid/graphics/Paint;
    .param p5, "opacity"    # F

    .line 221
    iget-object v0, p0, Lcom/horcrux/svg/ImageView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 222
    invoke-virtual {p1, p2, v0}, Lcom/facebook/imagepipeline/core/ImagePipeline;->fetchImageFromBitmapCache(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/DataSource;

    move-result-object v0

    .line 225
    .local v0, "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    :try_start_0
    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/common/references/CloseableReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 226
    .local v1, "imageReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    if-nez v1, :cond_0

    .line 254
    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 227
    return-void

    .line 231
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/imagepipeline/image/CloseableImage;

    .line 232
    .local v2, "closeableImage":Lcom/facebook/imagepipeline/image/CloseableImage;
    instance-of v3, v2, Lcom/facebook/imagepipeline/image/CloseableBitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    .line 248
    :try_start_2
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 254
    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 233
    return-void

    .line 236
    :cond_1
    :try_start_3
    move-object v3, v2

    check-cast v3, Lcom/facebook/imagepipeline/image/CloseableBitmap;

    .line 237
    .local v3, "closeableBitmap":Lcom/facebook/imagepipeline/image/CloseableBitmap;
    invoke-interface {v3}, Lcom/facebook/imagepipeline/image/CloseableBitmap;->getUnderlyingBitmap()Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 239
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    if-nez v4, :cond_2

    .line 248
    :try_start_4
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 254
    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 240
    return-void

    .line 243
    :cond_2
    :try_start_5
    invoke-direct {p0, p3, p4, v4, p5}, Lcom/horcrux/svg/ImageView;->doRender(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Bitmap;F)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 248
    .end local v2    # "closeableImage":Lcom/facebook/imagepipeline/image/CloseableImage;
    .end local v3    # "closeableBitmap":Lcom/facebook/imagepipeline/image/CloseableBitmap;
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :try_start_6
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 249
    nop

    .line 254
    .end local v1    # "imageReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 255
    nop

    .line 256
    return-void

    .line 248
    .restart local v1    # "imageReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 245
    :catch_0
    move-exception v2

    .line 246
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    .end local v1    # "imageReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    .end local p1    # "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    .end local p2    # "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local p3    # "canvas":Landroid/graphics/Canvas;
    .end local p4    # "paint":Landroid/graphics/Paint;
    .end local p5    # "opacity":F
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 248
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    .restart local v1    # "imageReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    .restart local p1    # "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    .restart local p2    # "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local p3    # "canvas":Landroid/graphics/Canvas;
    .restart local p4    # "paint":Landroid/graphics/Paint;
    .restart local p5    # "opacity":F
    :goto_0
    :try_start_8
    invoke-static {v1}, Lcom/facebook/common/references/CloseableReference;->closeSafely(Lcom/facebook/common/references/CloseableReference;)V

    .line 249
    nop

    .end local v0    # "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    .end local p1    # "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    .end local p2    # "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local p3    # "canvas":Landroid/graphics/Canvas;
    .end local p4    # "paint":Landroid/graphics/Paint;
    .end local p5    # "opacity":F
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 254
    .end local v1    # "imageReference":Lcom/facebook/common/references/CloseableReference;, "Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;"
    .restart local v0    # "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    .restart local p1    # "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    .restart local p2    # "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local p3    # "canvas":Landroid/graphics/Canvas;
    .restart local p4    # "paint":Landroid/graphics/Paint;
    .restart local p5    # "opacity":F
    :catchall_1
    move-exception v1

    goto :goto_1

    .line 251
    :catch_1
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/Exception;
    :try_start_9
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    .end local p1    # "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    .end local p2    # "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local p3    # "canvas":Landroid/graphics/Canvas;
    .end local p4    # "paint":Landroid/graphics/Paint;
    .end local p5    # "opacity":F
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 254
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "dataSource":Lcom/facebook/datasource/DataSource;, "Lcom/facebook/datasource/DataSource<Lcom/facebook/common/references/CloseableReference<Lcom/facebook/imagepipeline/image/CloseableImage;>;>;"
    .restart local p1    # "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    .restart local p2    # "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    .restart local p3    # "canvas":Landroid/graphics/Canvas;
    .restart local p4    # "paint":Landroid/graphics/Paint;
    .restart local p5    # "opacity":F
    :goto_1
    invoke-interface {v0}, Lcom/facebook/datasource/DataSource;->close()Z

    .line 255
    throw v1
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;
    .param p3, "opacity"    # F

    .line 114
    iget-object v0, p0, Lcom/horcrux/svg/ImageView;->mLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->getImagePipeline()Lcom/facebook/imagepipeline/core/ImagePipeline;

    move-result-object v0

    .line 116
    .local v0, "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    new-instance v1, Lcom/facebook/react/views/imagehelper/ImageSource;

    iget-object v2, p0, Lcom/horcrux/svg/ImageView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v3, p0, Lcom/horcrux/svg/ImageView;->uriString:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/views/imagehelper/ImageSource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v7, v1

    .line 117
    .local v7, "imageSource":Lcom/facebook/react/views/imagehelper/ImageSource;
    invoke-virtual {v7}, Lcom/facebook/react/views/imagehelper/ImageSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->fromUri(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequest;

    move-result-object v8

    .line 118
    .local v8, "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    invoke-virtual {v0, v8}, Lcom/facebook/imagepipeline/core/ImagePipeline;->isInBitmapMemoryCache(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    move-result v9

    .line 120
    .local v9, "inMemoryCache":Z
    if-eqz v9, :cond_0

    .line 121
    iget v1, p0, Lcom/horcrux/svg/ImageView;->mOpacity:F

    mul-float v6, p3, v1

    move-object v1, p0

    move-object v2, v0

    move-object v3, v8

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/horcrux/svg/ImageView;->tryRenderFromBitmapCache(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;Landroid/graphics/Canvas;Landroid/graphics/Paint;F)V

    goto :goto_0

    .line 123
    :cond_0
    invoke-direct {p0, v0, v8}, Lcom/horcrux/svg/ImageView;->loadBitmap(Lcom/facebook/imagepipeline/core/ImagePipeline;Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 126
    .end local v0    # "imagePipeline":Lcom/facebook/imagepipeline/core/ImagePipeline;
    .end local v7    # "imageSource":Lcom/facebook/react/views/imagehelper/ImageSource;
    .end local v8    # "request":Lcom/facebook/imagepipeline/request/ImageRequest;
    .end local v9    # "inMemoryCache":Z
    :cond_1
    :goto_0
    return-void
.end method

.method getPath(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/Path;
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .line 130
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/ImageView;->mPath:Landroid/graphics/Path;

    .line 131
    iget-object v0, p0, Lcom/horcrux/svg/ImageView;->mPath:Landroid/graphics/Path;

    invoke-direct {p0}, Lcom/horcrux/svg/ImageView;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    sget-object v2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 132
    iget-object v0, p0, Lcom/horcrux/svg/ImageView;->mPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 0
    .param p1, "align"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lcom/horcrux/svg/ImageView;->mAlign:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/horcrux/svg/ImageView;->invalidate()V

    .line 105
    return-void
.end method

.method public setHeight(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "height"    # Lcom/facebook/react/bridge/Dynamic;

    .line 75
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/ImageView;->mH:Lcom/horcrux/svg/SVGLength;

    .line 76
    invoke-virtual {p0}, Lcom/horcrux/svg/ImageView;->invalidate()V

    .line 77
    return-void
.end method

.method public setMeetOrSlice(I)V
    .locals 0
    .param p1, "meetOrSlice"    # I

    .line 108
    iput p1, p0, Lcom/horcrux/svg/ImageView;->mMeetOrSlice:I

    .line 109
    invoke-virtual {p0}, Lcom/horcrux/svg/ImageView;->invalidate()V

    .line 110
    return-void
.end method

.method public setSrc(Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 4
    .param p1, "src"    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 80
    if-eqz p1, :cond_3

    .line 81
    const-string v0, "uri"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/ImageView;->uriString:Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/horcrux/svg/ImageView;->uriString:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/horcrux/svg/ImageView;->uriString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    const-string v0, "width"

    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "height"

    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-interface {p1, v0}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/ImageView;->mImageWidth:I

    .line 90
    invoke-interface {p1, v1}, Lcom/facebook/react/bridge/ReadableMap;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/ImageView;->mImageHeight:I

    goto :goto_0

    .line 92
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/horcrux/svg/ImageView;->mImageWidth:I

    .line 93
    iput v0, p0, Lcom/horcrux/svg/ImageView;->mImageHeight:I

    .line 95
    :goto_0
    iget-object v0, p0, Lcom/horcrux/svg/ImageView;->uriString:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 96
    .local v0, "mUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 97
    invoke-static {}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getInstance()Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/horcrux/svg/ImageView;->mContext:Lcom/facebook/react/bridge/ReactContext;

    iget-object v3, p0, Lcom/horcrux/svg/ImageView;->uriString:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/react/views/imagehelper/ResourceDrawableIdHelper;->getResourceDrawableUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_2

    .line 85
    .end local v0    # "mUri":Landroid/net/Uri;
    :cond_2
    :goto_1
    return-void

    .line 100
    :cond_3
    :goto_2
    return-void
.end method

.method public setWidth(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "width"    # Lcom/facebook/react/bridge/Dynamic;

    .line 70
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/ImageView;->mW:Lcom/horcrux/svg/SVGLength;

    .line 71
    invoke-virtual {p0}, Lcom/horcrux/svg/ImageView;->invalidate()V

    .line 72
    return-void
.end method

.method public setX(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "x"    # Lcom/facebook/react/bridge/Dynamic;

    .line 60
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/ImageView;->mX:Lcom/horcrux/svg/SVGLength;

    .line 61
    invoke-virtual {p0}, Lcom/horcrux/svg/ImageView;->invalidate()V

    .line 62
    return-void
.end method

.method public setY(Lcom/facebook/react/bridge/Dynamic;)V
    .locals 1
    .param p1, "y"    # Lcom/facebook/react/bridge/Dynamic;

    .line 65
    invoke-static {p1}, Lcom/horcrux/svg/SVGLength;->from(Lcom/facebook/react/bridge/Dynamic;)Lcom/horcrux/svg/SVGLength;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/ImageView;->mY:Lcom/horcrux/svg/SVGLength;

    .line 66
    invoke-virtual {p0}, Lcom/horcrux/svg/ImageView;->invalidate()V

    .line 67
    return-void
.end method
