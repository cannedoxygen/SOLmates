.class public Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$SimpleOnScaleGestureListener;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"

# interfaces
.implements Lcom/swmansion/gesturehandler/core/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleOnScaleGestureListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onScaleBegin(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

    .line 111
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Lcom/swmansion/gesturehandler/core/ScaleGestureDetector;

    .line 116
    return-void
.end method
