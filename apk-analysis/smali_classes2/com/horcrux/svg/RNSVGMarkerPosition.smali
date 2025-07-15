.class Lcom/horcrux/svg/RNSVGMarkerPosition;
.super Ljava/lang/Object;
.source "RNSVGMarkerPosition.java"


# static fields
.field private static auto_start_reverse_:Z

.field private static element_index_:I

.field private static in_slope_:Lcom/horcrux/svg/Point;

.field private static origin_:Lcom/horcrux/svg/Point;

.field private static out_slope_:Lcom/horcrux/svg/Point;

.field private static positions_:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/RNSVGMarkerPosition;",
            ">;"
        }
    .end annotation
.end field

.field private static subpath_start_:Lcom/horcrux/svg/Point;


# instance fields
.field angle:D

.field origin:Lcom/horcrux/svg/Point;

.field type:Lcom/horcrux/svg/RNSVGMarkerType;


# direct methods
.method private constructor <init>(Lcom/horcrux/svg/RNSVGMarkerType;Lcom/horcrux/svg/Point;D)V
    .locals 0
    .param p1, "type"    # Lcom/horcrux/svg/RNSVGMarkerType;
    .param p2, "origin"    # Lcom/horcrux/svg/Point;
    .param p3, "angle"    # D

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/horcrux/svg/RNSVGMarkerPosition;->type:Lcom/horcrux/svg/RNSVGMarkerType;

    .line 53
    iput-object p2, p0, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin:Lcom/horcrux/svg/Point;

    .line 54
    iput-wide p3, p0, Lcom/horcrux/svg/RNSVGMarkerPosition;->angle:D

    .line 55
    return-void
.end method

.method private static BisectingAngle(DD)D
    .locals 4
    .param p0, "in_angle"    # D
    .param p2, "out_angle"    # D

    .line 76
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const-wide v0, 0x4076800000000000L    # 360.0

    add-double/2addr p0, v0

    .line 77
    :cond_0
    add-double v0, p0, p2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static ComputeQuadTangents(Lcom/horcrux/svg/SegmentData;Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)V
    .locals 1
    .param p0, "data"    # Lcom/horcrux/svg/SegmentData;
    .param p1, "start"    # Lcom/horcrux/svg/Point;
    .param p2, "control"    # Lcom/horcrux/svg/Point;
    .param p3, "end"    # Lcom/horcrux/svg/Point;

    .line 115
    invoke-static {p2, p1}, Lcom/horcrux/svg/RNSVGMarkerPosition;->subtract(Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)Lcom/horcrux/svg/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/SegmentData;->start_tangent:Lcom/horcrux/svg/Point;

    .line 116
    invoke-static {p3, p2}, Lcom/horcrux/svg/RNSVGMarkerPosition;->subtract(Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)Lcom/horcrux/svg/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/horcrux/svg/SegmentData;->end_tangent:Lcom/horcrux/svg/Point;

    .line 117
    iget-object v0, p0, Lcom/horcrux/svg/SegmentData;->start_tangent:Lcom/horcrux/svg/Point;

    invoke-static {v0}, Lcom/horcrux/svg/RNSVGMarkerPosition;->isZero(Lcom/horcrux/svg/Point;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/horcrux/svg/SegmentData;->end_tangent:Lcom/horcrux/svg/Point;

    iput-object v0, p0, Lcom/horcrux/svg/SegmentData;->start_tangent:Lcom/horcrux/svg/Point;

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/horcrux/svg/SegmentData;->end_tangent:Lcom/horcrux/svg/Point;

    invoke-static {v0}, Lcom/horcrux/svg/RNSVGMarkerPosition;->isZero(Lcom/horcrux/svg/Point;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/horcrux/svg/SegmentData;->start_tangent:Lcom/horcrux/svg/Point;

    iput-object v0, p0, Lcom/horcrux/svg/SegmentData;->end_tangent:Lcom/horcrux/svg/Point;

    .line 119
    :cond_1
    :goto_0
    return-void
.end method

.method private static CurrentAngle(Lcom/horcrux/svg/RNSVGMarkerType;)D
    .locals 6
    .param p0, "type"    # Lcom/horcrux/svg/RNSVGMarkerType;

    .line 92
    sget-object v0, Lcom/horcrux/svg/RNSVGMarkerPosition;->in_slope_:Lcom/horcrux/svg/Point;

    invoke-static {v0}, Lcom/horcrux/svg/RNSVGMarkerPosition;->SlopeAngleRadians(Lcom/horcrux/svg/Point;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/horcrux/svg/RNSVGMarkerPosition;->rad2deg(D)D

    move-result-wide v0

    .line 93
    .local v0, "in_angle":D
    sget-object v2, Lcom/horcrux/svg/RNSVGMarkerPosition;->out_slope_:Lcom/horcrux/svg/Point;

    invoke-static {v2}, Lcom/horcrux/svg/RNSVGMarkerPosition;->SlopeAngleRadians(Lcom/horcrux/svg/Point;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/horcrux/svg/RNSVGMarkerPosition;->rad2deg(D)D

    move-result-wide v2

    .line 94
    .local v2, "out_angle":D
    sget-object v4, Lcom/horcrux/svg/RNSVGMarkerPosition$1;->$SwitchMap$com$horcrux$svg$RNSVGMarkerType:[I

    invoke-virtual {p0}, Lcom/horcrux/svg/RNSVGMarkerType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 103
    const-wide/16 v4, 0x0

    return-wide v4

    .line 101
    :pswitch_0
    return-wide v0

    .line 99
    :pswitch_1
    invoke-static {v0, v1, v2, v3}, Lcom/horcrux/svg/RNSVGMarkerPosition;->BisectingAngle(DD)D

    move-result-wide v4

    return-wide v4

    .line 96
    :pswitch_2
    sget-boolean v4, Lcom/horcrux/svg/RNSVGMarkerPosition;->auto_start_reverse_:Z

    if-eqz v4, :cond_0

    const-wide v4, 0x4066800000000000L    # 180.0

    add-double/2addr v2, v4

    .line 97
    :cond_0
    return-wide v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static ExtractPathElementFeatures(Lcom/horcrux/svg/PathElement;)Lcom/horcrux/svg/SegmentData;
    .locals 7
    .param p0, "element"    # Lcom/horcrux/svg/PathElement;

    .line 122
    new-instance v0, Lcom/horcrux/svg/SegmentData;

    invoke-direct {v0}, Lcom/horcrux/svg/SegmentData;-><init>()V

    .line 123
    .local v0, "data":Lcom/horcrux/svg/SegmentData;
    iget-object v1, p0, Lcom/horcrux/svg/PathElement;->points:[Lcom/horcrux/svg/Point;

    .line 124
    .local v1, "points":[Lcom/horcrux/svg/Point;
    sget-object v2, Lcom/horcrux/svg/RNSVGMarkerPosition$1;->$SwitchMap$com$horcrux$svg$ElementType:[I

    iget-object v3, p0, Lcom/horcrux/svg/PathElement;->type:Lcom/horcrux/svg/ElementType;

    invoke-virtual {v3}, Lcom/horcrux/svg/ElementType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 143
    :pswitch_0
    sget-object v2, Lcom/horcrux/svg/RNSVGMarkerPosition;->subpath_start_:Lcom/horcrux/svg/Point;

    iput-object v2, v0, Lcom/horcrux/svg/SegmentData;->position:Lcom/horcrux/svg/Point;

    .line 144
    iget-object v2, v0, Lcom/horcrux/svg/SegmentData;->position:Lcom/horcrux/svg/Point;

    sget-object v3, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin_:Lcom/horcrux/svg/Point;

    invoke-static {v2, v3}, Lcom/horcrux/svg/RNSVGMarkerPosition;->subtract(Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)Lcom/horcrux/svg/Point;

    move-result-object v2

    iput-object v2, v0, Lcom/horcrux/svg/SegmentData;->start_tangent:Lcom/horcrux/svg/Point;

    .line 145
    iget-object v2, v0, Lcom/horcrux/svg/SegmentData;->position:Lcom/horcrux/svg/Point;

    sget-object v3, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin_:Lcom/horcrux/svg/Point;

    invoke-static {v2, v3}, Lcom/horcrux/svg/RNSVGMarkerPosition;->subtract(Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)Lcom/horcrux/svg/Point;

    move-result-object v2

    iput-object v2, v0, Lcom/horcrux/svg/SegmentData;->end_tangent:Lcom/horcrux/svg/Point;

    goto :goto_0

    .line 138
    :pswitch_1
    aget-object v2, v1, v4

    iput-object v2, v0, Lcom/horcrux/svg/SegmentData;->position:Lcom/horcrux/svg/Point;

    .line 139
    iget-object v2, v0, Lcom/horcrux/svg/SegmentData;->position:Lcom/horcrux/svg/Point;

    sget-object v3, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin_:Lcom/horcrux/svg/Point;

    invoke-static {v2, v3}, Lcom/horcrux/svg/RNSVGMarkerPosition;->subtract(Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)Lcom/horcrux/svg/Point;

    move-result-object v2

    iput-object v2, v0, Lcom/horcrux/svg/SegmentData;->start_tangent:Lcom/horcrux/svg/Point;

    .line 140
    iget-object v2, v0, Lcom/horcrux/svg/SegmentData;->position:Lcom/horcrux/svg/Point;

    sget-object v3, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin_:Lcom/horcrux/svg/Point;

    invoke-static {v2, v3}, Lcom/horcrux/svg/RNSVGMarkerPosition;->subtract(Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)Lcom/horcrux/svg/Point;

    move-result-object v2

    iput-object v2, v0, Lcom/horcrux/svg/SegmentData;->end_tangent:Lcom/horcrux/svg/Point;

    .line 141
    goto :goto_0

    .line 133
    :pswitch_2
    aget-object v2, v1, v3

    iput-object v2, v0, Lcom/horcrux/svg/SegmentData;->position:Lcom/horcrux/svg/Point;

    .line 134
    sget-object v2, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin_:Lcom/horcrux/svg/Point;

    aget-object v4, v1, v4

    aget-object v3, v1, v3

    invoke-static {v0, v2, v4, v3}, Lcom/horcrux/svg/RNSVGMarkerPosition;->ComputeQuadTangents(Lcom/horcrux/svg/SegmentData;Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)V

    .line 135
    goto :goto_0

    .line 126
    :pswitch_3
    const/4 v2, 0x2

    aget-object v5, v1, v2

    iput-object v5, v0, Lcom/horcrux/svg/SegmentData;->position:Lcom/horcrux/svg/Point;

    .line 127
    aget-object v5, v1, v4

    sget-object v6, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin_:Lcom/horcrux/svg/Point;

    invoke-static {v5, v6}, Lcom/horcrux/svg/RNSVGMarkerPosition;->subtract(Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)Lcom/horcrux/svg/Point;

    move-result-object v5

    iput-object v5, v0, Lcom/horcrux/svg/SegmentData;->start_tangent:Lcom/horcrux/svg/Point;

    .line 128
    aget-object v5, v1, v2

    aget-object v6, v1, v3

    invoke-static {v5, v6}, Lcom/horcrux/svg/RNSVGMarkerPosition;->subtract(Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)Lcom/horcrux/svg/Point;

    move-result-object v5

    iput-object v5, v0, Lcom/horcrux/svg/SegmentData;->end_tangent:Lcom/horcrux/svg/Point;

    .line 129
    iget-object v5, v0, Lcom/horcrux/svg/SegmentData;->start_tangent:Lcom/horcrux/svg/Point;

    invoke-static {v5}, Lcom/horcrux/svg/RNSVGMarkerPosition;->isZero(Lcom/horcrux/svg/Point;)Z

    move-result v5

    if-eqz v5, :cond_0

    aget-object v4, v1, v4

    aget-object v3, v1, v3

    aget-object v2, v1, v2

    invoke-static {v0, v4, v3, v2}, Lcom/horcrux/svg/RNSVGMarkerPosition;->ComputeQuadTangents(Lcom/horcrux/svg/SegmentData;Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object v2, v0, Lcom/horcrux/svg/SegmentData;->end_tangent:Lcom/horcrux/svg/Point;

    invoke-static {v2}, Lcom/horcrux/svg/RNSVGMarkerPosition;->isZero(Lcom/horcrux/svg/Point;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin_:Lcom/horcrux/svg/Point;

    aget-object v4, v1, v4

    aget-object v3, v1, v3

    invoke-static {v0, v2, v4, v3}, Lcom/horcrux/svg/RNSVGMarkerPosition;->ComputeQuadTangents(Lcom/horcrux/svg/SegmentData;Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)V

    .line 148
    :cond_1
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static PathIsDone()V
    .locals 6

    .line 70
    sget-object v0, Lcom/horcrux/svg/RNSVGMarkerType;->kEndMarker:Lcom/horcrux/svg/RNSVGMarkerType;

    invoke-static {v0}, Lcom/horcrux/svg/RNSVGMarkerPosition;->CurrentAngle(Lcom/horcrux/svg/RNSVGMarkerType;)D

    move-result-wide v0

    .line 71
    .local v0, "angle":D
    sget-object v2, Lcom/horcrux/svg/RNSVGMarkerPosition;->positions_:Ljava/util/ArrayList;

    new-instance v3, Lcom/horcrux/svg/RNSVGMarkerPosition;

    sget-object v4, Lcom/horcrux/svg/RNSVGMarkerType;->kEndMarker:Lcom/horcrux/svg/RNSVGMarkerType;

    sget-object v5, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin_:Lcom/horcrux/svg/Point;

    invoke-direct {v3, v4, v5, v0, v1}, Lcom/horcrux/svg/RNSVGMarkerPosition;-><init>(Lcom/horcrux/svg/RNSVGMarkerType;Lcom/horcrux/svg/Point;D)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method private static SlopeAngleRadians(Lcom/horcrux/svg/Point;)D
    .locals 4
    .param p0, "p"    # Lcom/horcrux/svg/Point;

    .line 86
    iget-wide v0, p0, Lcom/horcrux/svg/Point;->y:D

    iget-wide v2, p0, Lcom/horcrux/svg/Point;->x:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static UpdateFromPathElement(Lcom/horcrux/svg/PathElement;)V
    .locals 8
    .param p0, "element"    # Lcom/horcrux/svg/PathElement;

    .line 152
    invoke-static {p0}, Lcom/horcrux/svg/RNSVGMarkerPosition;->ExtractPathElementFeatures(Lcom/horcrux/svg/PathElement;)Lcom/horcrux/svg/SegmentData;

    move-result-object v0

    .line 154
    .local v0, "segment_data":Lcom/horcrux/svg/SegmentData;
    iget-object v1, v0, Lcom/horcrux/svg/SegmentData;->start_tangent:Lcom/horcrux/svg/Point;

    sput-object v1, Lcom/horcrux/svg/RNSVGMarkerPosition;->out_slope_:Lcom/horcrux/svg/Point;

    .line 156
    sget v1, Lcom/horcrux/svg/RNSVGMarkerPosition;->element_index_:I

    const/4 v2, 0x1

    if-lez v1, :cond_1

    .line 158
    sget v1, Lcom/horcrux/svg/RNSVGMarkerPosition;->element_index_:I

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/horcrux/svg/RNSVGMarkerType;->kStartMarker:Lcom/horcrux/svg/RNSVGMarkerType;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/horcrux/svg/RNSVGMarkerType;->kMidMarker:Lcom/horcrux/svg/RNSVGMarkerType;

    .line 159
    .local v1, "marker_type":Lcom/horcrux/svg/RNSVGMarkerType;
    :goto_0
    invoke-static {v1}, Lcom/horcrux/svg/RNSVGMarkerPosition;->CurrentAngle(Lcom/horcrux/svg/RNSVGMarkerType;)D

    move-result-wide v3

    .line 160
    .local v3, "angle":D
    sget-object v5, Lcom/horcrux/svg/RNSVGMarkerPosition;->positions_:Ljava/util/ArrayList;

    new-instance v6, Lcom/horcrux/svg/RNSVGMarkerPosition;

    sget-object v7, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin_:Lcom/horcrux/svg/Point;

    invoke-direct {v6, v1, v7, v3, v4}, Lcom/horcrux/svg/RNSVGMarkerPosition;-><init>(Lcom/horcrux/svg/RNSVGMarkerType;Lcom/horcrux/svg/Point;D)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v1    # "marker_type":Lcom/horcrux/svg/RNSVGMarkerType;
    .end local v3    # "angle":D
    :cond_1
    iget-object v1, v0, Lcom/horcrux/svg/SegmentData;->end_tangent:Lcom/horcrux/svg/Point;

    sput-object v1, Lcom/horcrux/svg/RNSVGMarkerPosition;->in_slope_:Lcom/horcrux/svg/Point;

    .line 165
    iget-object v1, v0, Lcom/horcrux/svg/SegmentData;->position:Lcom/horcrux/svg/Point;

    sput-object v1, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin_:Lcom/horcrux/svg/Point;

    .line 167
    iget-object v1, p0, Lcom/horcrux/svg/PathElement;->type:Lcom/horcrux/svg/ElementType;

    sget-object v3, Lcom/horcrux/svg/ElementType;->kCGPathElementMoveToPoint:Lcom/horcrux/svg/ElementType;

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/horcrux/svg/PathElement;->points:[Lcom/horcrux/svg/Point;

    const/4 v3, 0x0

    aget-object v1, v1, v3

    sput-object v1, Lcom/horcrux/svg/RNSVGMarkerPosition;->subpath_start_:Lcom/horcrux/svg/Point;

    goto :goto_1

    .line 168
    :cond_2
    iget-object v1, p0, Lcom/horcrux/svg/PathElement;->type:Lcom/horcrux/svg/ElementType;

    sget-object v3, Lcom/horcrux/svg/ElementType;->kCGPathElementCloseSubpath:Lcom/horcrux/svg/ElementType;

    if-ne v1, v3, :cond_3

    .line 169
    new-instance v1, Lcom/horcrux/svg/Point;

    const-wide/16 v3, 0x0

    invoke-direct {v1, v3, v4, v3, v4}, Lcom/horcrux/svg/Point;-><init>(DD)V

    sput-object v1, Lcom/horcrux/svg/RNSVGMarkerPosition;->subpath_start_:Lcom/horcrux/svg/Point;

    .line 170
    :cond_3
    :goto_1
    sget v1, Lcom/horcrux/svg/RNSVGMarkerPosition;->element_index_:I

    add-int/2addr v1, v2

    sput v1, Lcom/horcrux/svg/RNSVGMarkerPosition;->element_index_:I

    .line 171
    return-void
.end method

.method static fromPath(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/PathElement;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/RNSVGMarkerPosition;",
            ">;"
        }
    .end annotation

    .line 58
    .local p0, "elements":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/horcrux/svg/PathElement;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/horcrux/svg/RNSVGMarkerPosition;->positions_:Ljava/util/ArrayList;

    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/horcrux/svg/RNSVGMarkerPosition;->element_index_:I

    .line 60
    new-instance v0, Lcom/horcrux/svg/Point;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/horcrux/svg/Point;-><init>(DD)V

    sput-object v0, Lcom/horcrux/svg/RNSVGMarkerPosition;->origin_:Lcom/horcrux/svg/Point;

    .line 61
    new-instance v0, Lcom/horcrux/svg/Point;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/horcrux/svg/Point;-><init>(DD)V

    sput-object v0, Lcom/horcrux/svg/RNSVGMarkerPosition;->subpath_start_:Lcom/horcrux/svg/Point;

    .line 62
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/horcrux/svg/PathElement;

    .line 63
    .local v1, "e":Lcom/horcrux/svg/PathElement;
    invoke-static {v1}, Lcom/horcrux/svg/RNSVGMarkerPosition;->UpdateFromPathElement(Lcom/horcrux/svg/PathElement;)V

    .line 64
    .end local v1    # "e":Lcom/horcrux/svg/PathElement;
    goto :goto_0

    .line 65
    :cond_0
    invoke-static {}, Lcom/horcrux/svg/RNSVGMarkerPosition;->PathIsDone()V

    .line 66
    sget-object v0, Lcom/horcrux/svg/RNSVGMarkerPosition;->positions_:Ljava/util/ArrayList;

    return-object v0
.end method

.method private static isZero(Lcom/horcrux/svg/Point;)Z
    .locals 4
    .param p0, "p"    # Lcom/horcrux/svg/Point;

    .line 111
    iget-wide v0, p0, Lcom/horcrux/svg/Point;->x:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/horcrux/svg/Point;->y:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static rad2deg(D)D
    .locals 4
    .param p0, "rad"    # D

    .line 81
    const-wide v0, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    .line 82
    .local v0, "RNSVG_radToDeg":D
    mul-double v2, p0, v0

    return-wide v2
.end method

.method private static subtract(Lcom/horcrux/svg/Point;Lcom/horcrux/svg/Point;)Lcom/horcrux/svg/Point;
    .locals 7
    .param p0, "p1"    # Lcom/horcrux/svg/Point;
    .param p1, "p2"    # Lcom/horcrux/svg/Point;

    .line 107
    new-instance v0, Lcom/horcrux/svg/Point;

    iget-wide v1, p1, Lcom/horcrux/svg/Point;->x:D

    iget-wide v3, p0, Lcom/horcrux/svg/Point;->x:D

    sub-double/2addr v1, v3

    iget-wide v3, p1, Lcom/horcrux/svg/Point;->y:D

    iget-wide v5, p0, Lcom/horcrux/svg/Point;->y:D

    sub-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/horcrux/svg/Point;-><init>(DD)V

    return-object v0
.end method
