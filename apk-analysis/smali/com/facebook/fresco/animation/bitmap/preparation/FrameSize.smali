.class final Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;
.super Ljava/lang/Object;
.source "FrameLoaderStrategy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;",
        "",
        "width",
        "",
        "height",
        "(II)V",
        "getHeight",
        "()I",
        "getWidth",
        "animated-drawable_release"
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
.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;->width:I

    iput p2, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;->height:I

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/FrameSize;->width:I

    return v0
.end method
