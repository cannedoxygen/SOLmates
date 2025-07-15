.class public final Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;
.super Lcom/facebook/react/views/image/ReactImageDownloadListener;
.source "ReactImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/react/views/image/ReactImageView;->setShouldNotifyLoadEvents(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/react/views/image/ReactImageDownloadListener<",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00009\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0000\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0016J$\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016J\u0018\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u001a\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016\u00a8\u0006\u0014"
    }
    d2 = {
        "com/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1",
        "Lcom/facebook/react/views/image/ReactImageDownloadListener;",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        "onFailure",
        "",
        "id",
        "",
        "throwable",
        "",
        "onFinalImageSet",
        "imageInfo",
        "animatable",
        "Landroid/graphics/drawable/Animatable;",
        "onProgressChange",
        "loaded",
        "",
        "total",
        "onSubmit",
        "callerContext",
        "",
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


# instance fields
.field final synthetic $eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

.field final synthetic this$0:Lcom/facebook/react/views/image/ReactImageView;


# direct methods
.method constructor <init>(Lcom/facebook/react/uimanager/events/EventDispatcher;Lcom/facebook/react/views/image/ReactImageView;)V
    .locals 0
    .param p1, "$eventDispatcher"    # Lcom/facebook/react/uimanager/events/EventDispatcher;
    .param p2, "$receiver"    # Lcom/facebook/react/views/image/ReactImageView;

    iput-object p1, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    iput-object p2, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    .line 148
    invoke-direct {p0}, Lcom/facebook/react/views/image/ReactImageDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "throwable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-nez v0, :cond_0

    .line 192
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 195
    sget-object v1, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    .line 196
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v3}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v3

    .line 195
    invoke-virtual {v1, v2, v3, p2}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->createErrorEvent(IILjava/lang/Throwable;)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    .line 194
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 197
    return-void
.end method

.method public onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imageInfo"    # Lcom/facebook/imagepipeline/image/ImageInfo;
    .param p3, "animatable"    # Landroid/graphics/drawable/Animatable;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v0}, Lcom/facebook/react/views/image/ReactImageView;->getImageSource$ReactAndroid_debug()Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 179
    sget-object v1, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    .line 180
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v2

    .line 181
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v3}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v3

    .line 182
    iget-object v4, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v4}, Lcom/facebook/react/views/image/ReactImageView;->getImageSource$ReactAndroid_debug()Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSource()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 183
    :goto_0
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getWidth()I

    move-result v5

    .line 184
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/ImageInfo;->getHeight()I

    move-result v6

    .line 179
    invoke-virtual/range {v1 .. v6}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->createLoadEvent(IILjava/lang/String;II)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    .line 178
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 185
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 186
    sget-object v1, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v3}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->createLoadEndEvent(II)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    .line 185
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 188
    :cond_1
    return-void
.end method

.method public bridge synthetic onFinalImageSet(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "imageInfo"    # Ljava/lang/Object;
    .param p3, "animatable"    # Landroid/graphics/drawable/Animatable;

    .line 148
    move-object v0, p2

    check-cast v0, Lcom/facebook/imagepipeline/image/ImageInfo;

    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->onFinalImageSet(Ljava/lang/String;Lcom/facebook/imagepipeline/image/ImageInfo;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public onProgressChange(II)V
    .locals 7
    .param p1, "loaded"    # I
    .param p2, "total"    # I

    .line 151
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v0}, Lcom/facebook/react/views/image/ReactImageView;->getImageSource$ReactAndroid_debug()Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 156
    sget-object v1, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    .line 157
    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v2

    .line 158
    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v3}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v3

    .line 159
    iget-object v4, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v4}, Lcom/facebook/react/views/image/ReactImageView;->getImageSource$ReactAndroid_debug()Lcom/facebook/react/views/imagehelper/ImageSource;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/facebook/react/views/imagehelper/ImageSource;->getSource()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 160
    :goto_0
    nop

    .line 161
    nop

    .line 156
    move v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->createProgressEvent(IILjava/lang/String;II)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    .line 155
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 162
    return-void

    .line 152
    :cond_2
    :goto_1
    return-void
.end method

.method public onSubmit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "callerContext"    # Ljava/lang/Object;

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    if-nez v0, :cond_0

    .line 166
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->$eventDispatcher:Lcom/facebook/react/uimanager/events/EventDispatcher;

    .line 169
    sget-object v1, Lcom/facebook/react/views/image/ImageLoadEvent;->Companion:Lcom/facebook/react/views/image/ImageLoadEvent$Companion;

    iget-object v2, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, Lcom/facebook/react/uimanager/UIManagerHelper;->getSurfaceId(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/react/views/image/ReactImageView$setShouldNotifyLoadEvents$1;->this$0:Lcom/facebook/react/views/image/ReactImageView;

    invoke-virtual {v3}, Lcom/facebook/react/views/image/ReactImageView;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/facebook/react/views/image/ImageLoadEvent$Companion;->createLoadStartEvent(II)Lcom/facebook/react/views/image/ImageLoadEvent;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/events/Event;

    .line 168
    invoke-interface {v0, v1}, Lcom/facebook/react/uimanager/events/EventDispatcher;->dispatchEvent(Lcom/facebook/react/uimanager/events/Event;)V

    .line 170
    return-void
.end method
