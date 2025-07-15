.class public Lcom/facebook/fresco/ui/common/ImagePerfData;
.super Ljava/lang/Object;
.source "ImagePerfData.java"


# static fields
.field public static final UNSET:I = -0x1


# instance fields
.field private final mCallerContext:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mControllerCancelTimeMs:J

.field private final mControllerFailureTimeMs:J

.field private final mControllerFinalImageSetTimeMs:J

.field private final mControllerId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mControllerIntermediateImageSetTimeMs:J

.field private final mControllerSubmitTimeMs:J

.field private final mDimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mErrorThrowable:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mExtraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageDrawTimeMs:J

.field private final mImageInfo:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageRequest:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mImageRequestEndTimeMs:J

.field private final mImageRequestStartTimeMs:J

.field private final mInvisibilityEventTimeMs:J

.field private final mIsPrefetch:Z

.field private final mOnScreenHeightPx:I

.field private final mOnScreenWidthPx:I

.field private final mRequestId:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mVisibilityEventTimeMs:J

.field private final mVisibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JJJJJJJZIILjava/lang/Throwable;Lcom/facebook/fresco/ui/common/VisibilityState;JJJLcom/facebook/fresco/ui/common/DimensionsInfo;Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 16
    .param p1, "controllerId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "requestId"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "imageRequest"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callerContext"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "imageInfo"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "controllerSubmitTimeMs"    # J
    .param p8, "controllerIntermediateImageSetTimeMs"    # J
    .param p10, "controllerFinalImageSetTimeMs"    # J
    .param p12, "controllerFailureTimeMs"    # J
    .param p14, "controllerCancelTimeMs"    # J
    .param p16, "imageRequestStartTimeMs"    # J
    .param p18, "imageRequestEndTimeMs"    # J
    .param p20, "isPrefetch"    # Z
    .param p21, "onScreenWidthPx"    # I
    .param p22, "onScreenHeightPx"    # I
    .param p23, "errorThrowable"    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p24, "visibilityState"    # Lcom/facebook/fresco/ui/common/VisibilityState;
    .param p25, "visibilityEventTimeMs"    # J
    .param p27, "invisibilityEventTime"    # J
    .param p29, "imageDrawTimeMs"    # J
    .param p31, "dimensionsInfo"    # Lcom/facebook/fresco/ui/common/DimensionsInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p32, "extraData"    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 74
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 75
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerId:Ljava/lang/String;

    .line 76
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mRequestId:Ljava/lang/String;

    .line 77
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageRequest:Ljava/lang/Object;

    .line 78
    move-object/from16 v4, p4

    iput-object v4, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mCallerContext:Ljava/lang/Object;

    .line 79
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageInfo:Ljava/lang/Object;

    .line 80
    move-wide/from16 v6, p6

    iput-wide v6, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerSubmitTimeMs:J

    .line 81
    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerIntermediateImageSetTimeMs:J

    .line 82
    move-wide/from16 v10, p10

    iput-wide v10, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerFinalImageSetTimeMs:J

    .line 83
    move-wide/from16 v12, p12

    iput-wide v12, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerFailureTimeMs:J

    .line 84
    move-wide/from16 v14, p14

    iput-wide v14, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerCancelTimeMs:J

    .line 85
    move-wide/from16 v1, p16

    iput-wide v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageRequestStartTimeMs:J

    .line 86
    move-wide/from16 v1, p18

    iput-wide v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageRequestEndTimeMs:J

    .line 87
    move/from16 v1, p20

    iput-boolean v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mIsPrefetch:Z

    .line 88
    move/from16 v2, p21

    iput v2, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mOnScreenWidthPx:I

    .line 89
    move/from16 v1, p22

    iput v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mOnScreenHeightPx:I

    .line 90
    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mErrorThrowable:Ljava/lang/Throwable;

    .line 91
    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mVisibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 92
    move-wide/from16 v1, p25

    iput-wide v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mVisibilityEventTimeMs:J

    .line 93
    move-wide/from16 v1, p27

    iput-wide v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mInvisibilityEventTimeMs:J

    .line 94
    move-wide/from16 v1, p29

    iput-wide v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageDrawTimeMs:J

    .line 95
    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mDimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;

    .line 96
    move-object/from16 v2, p32

    iput-object v2, v0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mExtraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 97
    return-void
.end method


# virtual methods
.method public createDebugString()Ljava/lang/String;
    .locals 4

    .line 208
    invoke-static {p0}, Lcom/facebook/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerId:Ljava/lang/String;

    .line 209
    const-string v2, "controller ID"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mRequestId:Ljava/lang/String;

    .line 210
    const-string/jumbo v2, "request ID"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerSubmitTimeMs:J

    .line 211
    const-string v3, "controller submit"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerFinalImageSetTimeMs:J

    .line 212
    const-string v3, "controller final image"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerFailureTimeMs:J

    .line 213
    const-string v3, "controller failure"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerCancelTimeMs:J

    .line 214
    const-string v3, "controller cancel"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageRequestStartTimeMs:J

    .line 215
    const-string/jumbo v3, "start time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageRequestEndTimeMs:J

    .line 216
    const-string v3, "end time"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mIsPrefetch:Z

    .line 217
    const-string/jumbo v2, "prefetch"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mCallerContext:Ljava/lang/Object;

    .line 218
    const-string v2, "caller context"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageRequest:Ljava/lang/Object;

    .line 219
    const-string v2, "image request"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageInfo:Ljava/lang/Object;

    .line 220
    const-string v2, "image info"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mOnScreenWidthPx:I

    .line 221
    const-string/jumbo v2, "on-screen width"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mOnScreenHeightPx:I

    .line 222
    const-string/jumbo v2, "on-screen height"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mVisibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;

    .line 223
    const-string/jumbo v2, "visibility state"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mVisibilityEventTimeMs:J

    .line 224
    const-string/jumbo v3, "visibility event"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mInvisibilityEventTimeMs:J

    .line 225
    const-string v3, "invisibility event"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageDrawTimeMs:J

    .line 226
    const-string v3, "image draw event"

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mDimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;

    .line 227
    const-string v2, "dimensions info"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mExtraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 228
    const-string v2, "extra data"

    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Lcom/facebook/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    return-object v0
.end method

.method public getCallerContext()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mCallerContext:Ljava/lang/Object;

    return-object v0
.end method

.method public getControllerFailureTimeMs()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerFailureTimeMs:J

    return-wide v0
.end method

.method public getControllerFinalImageSetTimeMs()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerFinalImageSetTimeMs:J

    return-wide v0
.end method

.method public getControllerId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerId:Ljava/lang/String;

    return-object v0
.end method

.method public getControllerIntermediateImageSetTimeMs()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerIntermediateImageSetTimeMs:J

    return-wide v0
.end method

.method public getControllerSubmitTimeMs()J
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerSubmitTimeMs:J

    return-wide v0
.end method

.method public getDimensionsInfo()Lcom/facebook/fresco/ui/common/DimensionsInfo;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mDimensionsInfo:Lcom/facebook/fresco/ui/common/DimensionsInfo;

    return-object v0
.end method

.method public getErrorThrowable()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mErrorThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getExtraData()Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mExtraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    return-object v0
.end method

.method public getFinalImageLoadTimeMs()J
    .locals 4

    .line 170
    invoke-virtual {p0}, Lcom/facebook/fresco/ui/common/ImagePerfData;->getImageRequestEndTimeMs()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/fresco/ui/common/ImagePerfData;->getImageRequestStartTimeMs()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/fresco/ui/common/ImagePerfData;->getImageRequestEndTimeMs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/fresco/ui/common/ImagePerfData;->getImageRequestStartTimeMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    .line 171
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public getImageDrawTimeMs()J
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageDrawTimeMs:J

    return-wide v0
.end method

.method public getImageInfo()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageInfo:Ljava/lang/Object;

    return-object v0
.end method

.method public getImageRequest()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageRequest:Ljava/lang/Object;

    return-object v0
.end method

.method public getImageRequestEndTimeMs()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageRequestEndTimeMs:J

    return-wide v0
.end method

.method public getImageRequestStartTimeMs()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mImageRequestStartTimeMs:J

    return-wide v0
.end method

.method public getIntermediateImageLoadTimeMs()J
    .locals 2

    .line 178
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mControllerIntermediateImageSetTimeMs:J

    return-wide v0
.end method

.method public getInvisibilityEventTimeMs()J
    .locals 2

    .line 190
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mInvisibilityEventTimeMs:J

    return-wide v0
.end method

.method public getOnScreenHeightPx()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mOnScreenHeightPx:I

    return v0
.end method

.method public getOnScreenWidthPx()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mOnScreenWidthPx:I

    return v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mRequestId:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibilityEventTimeMs()J
    .locals 2

    .line 186
    iget-wide v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mVisibilityEventTimeMs:J

    return-wide v0
.end method

.method public getVisibilityState()Lcom/facebook/fresco/ui/common/VisibilityState;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mVisibilityState:Lcom/facebook/fresco/ui/common/VisibilityState;

    return-object v0
.end method

.method public isPrefetch()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mIsPrefetch:Z

    return v0
.end method

.method public setExtraData(Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;)V
    .locals 0
    .param p1, "extraData"    # Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 204
    iput-object p1, p0, Lcom/facebook/fresco/ui/common/ImagePerfData;->mExtraData:Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 205
    return-void
.end method
