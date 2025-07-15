.class public final Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;
.super Ljava/lang/Object;
.source "ColorUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/vito/renderer/util/ColorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;",
        "",
        "()V",
        "multiplyColorAlpha",
        "",
        "color",
        "alpha",
        "renderer_release"
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

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/facebook/fresco/vito/renderer/util/ColorUtils$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final multiplyColorAlpha(II)I
    .locals 5
    .param p1, "color"    # I
    .param p2, "alpha"    # I

    .line 20
    const v0, 0xffffff

    sparse-switch p2, :sswitch_data_0

    .line 24
    shr-int/lit8 v1, p2, 0x7

    add-int/2addr v1, p2

    .line 25
    .local v1, "cappedAlpha":I
    ushr-int/lit8 v2, p1, 0x18

    .line 26
    .local v2, "colorAlpha":I
    mul-int v3, v2, v1

    shr-int/lit8 v3, v3, 0x8

    .line 27
    .local v3, "multipliedAlpha":I
    shl-int/lit8 v4, v3, 0x18

    and-int/2addr v0, p1

    or-int/2addr v0, v4

    goto :goto_0

    .line 21
    .end local v1    # "cappedAlpha":I
    .end local v2    # "colorAlpha":I
    .end local v3    # "multipliedAlpha":I
    :sswitch_0
    move v0, p1

    goto :goto_0

    .line 22
    :sswitch_1
    and-int/2addr v0, p1

    .line 20
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method
