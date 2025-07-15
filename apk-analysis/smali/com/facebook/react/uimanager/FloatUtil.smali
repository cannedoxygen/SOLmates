.class public final Lcom/facebook/react/uimanager/FloatUtil;
.super Ljava/lang/Object;
.source "FloatUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004H\u0007J!\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0002\u0010\tR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/facebook/react/uimanager/FloatUtil;",
        "",
        "()V",
        "EPSILON",
        "",
        "floatsEqual",
        "",
        "f1",
        "f2",
        "(Ljava/lang/Float;Ljava/lang/Float;)Z",
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
.field private static final EPSILON:F = 1.0E-5f

.field public static final INSTANCE:Lcom/facebook/react/uimanager/FloatUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/react/uimanager/FloatUtil;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/FloatUtil;-><init>()V

    sput-object v0, Lcom/facebook/react/uimanager/FloatUtil;->INSTANCE:Lcom/facebook/react/uimanager/FloatUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final floatsEqual(FF)Z
    .locals 4
    .param p0, "f1"    # F
    .param p1, "f2"    # F
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 17
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 19
    :cond_0
    sub-float v0, p1, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 17
    :goto_1
    return v1
.end method

.method public static final floatsEqual(Ljava/lang/Float;Ljava/lang/Float;)Z
    .locals 2
    .param p0, "f1"    # Ljava/lang/Float;
    .param p1, "f2"    # Ljava/lang/Float;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 24
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 25
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 26
    :cond_1
    if-nez p1, :cond_2

    .line 27
    return v0

    .line 30
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/facebook/react/uimanager/FloatUtil;->floatsEqual(FF)Z

    move-result v0

    return v0
.end method
