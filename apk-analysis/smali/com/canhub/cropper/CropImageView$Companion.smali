.class public final Lcom/canhub/cropper/CropImageView$Companion;
.super Ljava/lang/Object;
.source "CropImageView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/canhub/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0002\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageView$Companion;",
        "",
        "()V",
        "getOnMeasureSpec",
        "",
        "measureSpecMode",
        "measureSpecSize",
        "desiredSize",
        "cropper_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/canhub/cropper/CropImageView$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getOnMeasureSpec(Lcom/canhub/cropper/CropImageView$Companion;III)I
    .locals 1
    .param p0, "$this"    # Lcom/canhub/cropper/CropImageView$Companion;
    .param p1, "measureSpecMode"    # I
    .param p2, "measureSpecSize"    # I
    .param p3, "desiredSize"    # I

    .line 1738
    invoke-direct {p0, p1, p2, p3}, Lcom/canhub/cropper/CropImageView$Companion;->getOnMeasureSpec(III)I

    move-result v0

    return v0
.end method

.method private final getOnMeasureSpec(III)I
    .locals 1
    .param p1, "measureSpecMode"    # I
    .param p2, "measureSpecSize"    # I
    .param p3, "desiredSize"    # I

    .line 1755
    sparse-switch p1, :sswitch_data_0

    .line 1761
    move v0, p3

    goto :goto_0

    .line 1756
    :sswitch_0
    move v0, p2

    goto :goto_0

    .line 1757
    :sswitch_1
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1755
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method
