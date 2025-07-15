.class public Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;
.super Ljava/lang/Object;
.source "ReactNativeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/reanimated/ReactNativeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BorderRadii"
.end annotation


# instance fields
.field public bottomLeft:F

.field public bottomRight:F

.field public full:F

.field public topLeft:F

.field public topRight:F


# direct methods
.method public constructor <init>(FFFFF)V
    .locals 1
    .param p1, "full"    # F
    .param p2, "topLeft"    # F
    .param p3, "topRight"    # F
    .param p4, "bottomLeft"    # F
    .param p5, "bottomRight"    # F

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p1

    :goto_0
    iput v0, p0, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;->full:F

    .line 20
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;->full:F

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    iput v0, p0, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;->topLeft:F

    .line 21
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;->full:F

    goto :goto_2

    :cond_2
    move v0, p3

    :goto_2
    iput v0, p0, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;->topRight:F

    .line 22
    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;->full:F

    goto :goto_3

    :cond_3
    move v0, p4

    :goto_3
    iput v0, p0, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;->bottomLeft:F

    .line 23
    invoke-static {p5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;->full:F

    goto :goto_4

    :cond_4
    move v0, p5

    :goto_4
    iput v0, p0, Lcom/swmansion/reanimated/ReactNativeUtils$BorderRadii;->bottomRight:F

    .line 24
    return-void
.end method
