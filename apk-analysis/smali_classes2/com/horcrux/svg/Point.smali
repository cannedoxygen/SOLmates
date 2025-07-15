.class Lcom/horcrux/svg/Point;
.super Ljava/lang/Object;
.source "RNSVGMarkerPosition.java"


# instance fields
.field x:D

.field y:D


# direct methods
.method constructor <init>(DD)V
    .locals 0
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide p1, p0, Lcom/horcrux/svg/Point;->x:D

    .line 25
    iput-wide p3, p0, Lcom/horcrux/svg/Point;->y:D

    .line 26
    return-void
.end method
