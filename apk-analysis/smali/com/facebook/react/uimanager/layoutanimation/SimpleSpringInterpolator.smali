.class public final Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;
.super Ljava/lang/Object;
.source "SimpleSpringInterpolator.kt"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 \u00082\u00020\u0001:\u0001\u0008B\u0011\u0008\u0017\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;",
        "Landroid/view/animation/Interpolator;",
        "springDamping",
        "",
        "(F)V",
        "_springDamping",
        "getInterpolation",
        "input",
        "Companion",
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
.field public static final Companion:Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator$Companion;

.field private static final FACTOR:F = 0.5f

.field public static final PARAM_SPRING_DAMPING:Ljava/lang/String; = "springDamping"


# instance fields
.field private final _springDamping:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;->Companion:Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;-><init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0
    .param p1, "springDamping"    # F

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;->_springDamping:F

    .line 24
    return-void
.end method

.method public synthetic constructor <init>(FILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    :cond_0
    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;-><init>(F)V

    .line 24
    return-void
.end method

.method public static final getSpringDamping(Lcom/facebook/react/bridge/ReadableMap;)F
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;->Companion:Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator$Companion;->getSpringDamping(Lcom/facebook/react/bridge/ReadableMap;)F

    move-result v0

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 8
    .param p1, "input"    # F

    .line 31
    const/4 v0, 0x1

    int-to-double v0, v0

    .line 32
    const/16 v2, -0xa

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 33
    iget v4, p0, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;->_springDamping:F

    const/4 v5, 0x4

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v4, p1, v4

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const/4 v6, 0x2

    int-to-double v6, v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/facebook/react/uimanager/layoutanimation/SimpleSpringInterpolator;->_springDamping:F

    float-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 32
    mul-double/2addr v2, v4

    .line 31
    add-double/2addr v0, v2

    .line 34
    double-to-float v0, v0

    return v0
.end method
