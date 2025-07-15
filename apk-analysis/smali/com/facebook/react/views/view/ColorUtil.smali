.class public final Lcom/facebook/react/views/view/ColorUtil;
.super Ljava/lang/Object;
.source "ColorUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J(\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006H\u0007\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/facebook/react/views/view/ColorUtil;",
        "",
        "()V",
        "clamp255",
        "",
        "value",
        "",
        "normalize",
        "r",
        "g",
        "b",
        "a",
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
.field public static final INSTANCE:Lcom/facebook/react/views/view/ColorUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/views/view/ColorUtil;

    invoke-direct {v0}, Lcom/facebook/react/views/view/ColorUtil;-><init>()V

    sput-object v0, Lcom/facebook/react/views/view/ColorUtil;->INSTANCE:Lcom/facebook/react/views/view/ColorUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final clamp255(D)I
    .locals 2
    .param p1, "value"    # D

    .line 34
    const/16 v0, 0xff

    invoke-static {p1, p2}, Lkotlin/math/MathKt;->roundToInt(D)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static final normalize(DDDD)I
    .locals 3
    .param p0, "r"    # D
    .param p2, "g"    # D
    .param p4, "b"    # D
    .param p6, "a"    # D
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 31
    sget-object v0, Lcom/facebook/react/views/view/ColorUtil;->INSTANCE:Lcom/facebook/react/views/view/ColorUtil;

    const/16 v1, 0xff

    int-to-double v1, v1

    mul-double/2addr v1, p6

    invoke-direct {v0, v1, v2}, Lcom/facebook/react/views/view/ColorUtil;->clamp255(D)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    sget-object v1, Lcom/facebook/react/views/view/ColorUtil;->INSTANCE:Lcom/facebook/react/views/view/ColorUtil;

    invoke-direct {v1, p0, p1}, Lcom/facebook/react/views/view/ColorUtil;->clamp255(D)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sget-object v1, Lcom/facebook/react/views/view/ColorUtil;->INSTANCE:Lcom/facebook/react/views/view/ColorUtil;

    invoke-direct {v1, p2, p3}, Lcom/facebook/react/views/view/ColorUtil;->clamp255(D)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lcom/facebook/react/views/view/ColorUtil;->INSTANCE:Lcom/facebook/react/views/view/ColorUtil;

    invoke-direct {v1, p4, p5}, Lcom/facebook/react/views/view/ColorUtil;->clamp255(D)I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method
