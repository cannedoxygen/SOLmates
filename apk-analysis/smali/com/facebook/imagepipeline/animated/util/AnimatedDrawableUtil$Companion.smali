.class public final Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;
.super Ljava/lang/Object;
.source "AnimatedDrawableUtil.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;",
        "",
        "()V",
        "FRAME_DURATION_MS_FOR_MIN",
        "",
        "MIN_FRAME_DURATION_MS",
        "isOutsideRange",
        "",
        "startFrame",
        "endFrame",
        "frameNumber",
        "animated-base_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/imagepipeline/animated/util/AnimatedDrawableUtil$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isOutsideRange(III)Z
    .locals 2
    .param p1, "startFrame"    # I
    .param p2, "endFrame"    # I
    .param p3, "frameNumber"    # I
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 111
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_5

    if-ne p2, v1, :cond_0

    goto :goto_1

    .line 116
    :cond_0
    const/4 v1, 0x0

    if-gt p1, p2, :cond_2

    .line 117
    if-lt p3, p1, :cond_4

    if-le p3, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 120
    :cond_2
    if-ge p3, p1, :cond_3

    if-le p3, p2, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 116
    :cond_4
    :goto_0
    nop

    .line 115
    nop

    .line 122
    .local v0, "outsideRange":Z
    return v0

    .line 113
    .end local v0    # "outsideRange":Z
    :cond_5
    :goto_1
    return v0
.end method
