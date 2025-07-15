.class public Lcom/canhub/cropper/CropImageOptions;
.super Ljava/lang/Object;
.source "CropImageOptions.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/canhub/cropper/CropImageOptions$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCropImageOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CropImageOptions.kt\ncom/canhub/cropper/CropImageOptions\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,592:1\n1#2:593\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u0000 Y2\u00020\u0001:\u0001YB\u0007\u0008\u0016\u00a2\u0006\u0002\u0010\u0002B\u000f\u0008\u0014\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010S\u001a\u00020\u0007H\u0016J\u0006\u0010T\u001a\u00020UJ\u0018\u0010V\u001a\u00020U2\u0006\u0010W\u001a\u00020\u00042\u0006\u0010X\u001a\u00020\u0007H\u0016R\u0012\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\n\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\r\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u000f\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0010\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0011\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0012\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0013\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0016\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0017\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0018\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u0019\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001b\u001a\u00020\u001c8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001d\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001e\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001f\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010 \u001a\u00020!8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010$\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010%\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010&\u001a\u0004\u0018\u00010\'8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010(\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010)\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010*\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010+\u001a\u00020,8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010-\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010.\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010/\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00100\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00101\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00102\u001a\u0004\u0018\u0001038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00104\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u00105\u001a\n\u0012\u0004\u0012\u00020#\u0018\u0001068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u00107\u001a\u0004\u0018\u00010#8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00108\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u00109\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010:\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010;\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010<\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010=\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010>\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010?\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010@\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010A\u001a\u00020B8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010C\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010D\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010E\u001a\u00020F8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010G\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010H\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010I\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010J\u001a\u00020K8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010L\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010M\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010N\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010O\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010P\u001a\u00020\u000b8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010Q\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000R\u0012\u0010R\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/canhub/cropper/CropImageOptions;",
        "Landroid/os/Parcelable;",
        "()V",
        "parcel",
        "Landroid/os/Parcel;",
        "(Landroid/os/Parcel;)V",
        "activityMenuIconColor",
        "",
        "activityTitle",
        "",
        "allowCounterRotation",
        "",
        "allowFlipping",
        "allowRotation",
        "aspectRatioX",
        "aspectRatioY",
        "autoZoomEnabled",
        "backgroundColor",
        "borderCornerColor",
        "borderCornerLength",
        "",
        "borderCornerOffset",
        "borderCornerThickness",
        "borderLineColor",
        "borderLineThickness",
        "centerMoveEnabled",
        "circleCornerFillColorHexValue",
        "cornerShape",
        "Lcom/canhub/cropper/CropImageView$CropCornerShape;",
        "cropCornerRadius",
        "cropMenuCropButtonIcon",
        "cropMenuCropButtonTitle",
        "cropShape",
        "Lcom/canhub/cropper/CropImageView$CropShape;",
        "cropperLabelText",
        "",
        "cropperLabelTextColor",
        "cropperLabelTextSize",
        "customOutputUri",
        "Landroid/net/Uri;",
        "fixAspectRatio",
        "flipHorizontally",
        "flipVertically",
        "guidelines",
        "Lcom/canhub/cropper/CropImageView$Guidelines;",
        "guidelinesColor",
        "guidelinesThickness",
        "imageSourceIncludeCamera",
        "imageSourceIncludeGallery",
        "initialCropWindowPaddingRatio",
        "initialCropWindowRectangle",
        "Landroid/graphics/Rect;",
        "initialRotation",
        "intentChooserPriorityList",
        "",
        "intentChooserTitle",
        "maxCropResultHeight",
        "maxCropResultWidth",
        "maxZoom",
        "minCropResultHeight",
        "minCropResultWidth",
        "minCropWindowHeight",
        "minCropWindowWidth",
        "multiTouchEnabled",
        "noOutputImage",
        "outputCompressFormat",
        "Landroid/graphics/Bitmap$CompressFormat;",
        "outputCompressQuality",
        "outputRequestHeight",
        "outputRequestSizeOptions",
        "Lcom/canhub/cropper/CropImageView$RequestSizeOptions;",
        "outputRequestWidth",
        "progressBarColor",
        "rotationDegrees",
        "scaleType",
        "Lcom/canhub/cropper/CropImageView$ScaleType;",
        "showCropLabel",
        "showCropOverlay",
        "showIntentChooser",
        "showProgressBar",
        "skipEditing",
        "snapRadius",
        "touchRadius",
        "describeContents",
        "validate",
        "",
        "writeToParcel",
        "dest",
        "flags",
        "Companion",
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


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/canhub/cropper/CropImageOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/canhub/cropper/CropImageOptions$Companion;

.field public static final DEGREES_360:I = 0x168


# instance fields
.field public activityMenuIconColor:I

.field public activityTitle:Ljava/lang/CharSequence;

.field public allowCounterRotation:Z

.field public allowFlipping:Z

.field public allowRotation:Z

.field public aspectRatioX:I

.field public aspectRatioY:I

.field public autoZoomEnabled:Z

.field public backgroundColor:I

.field public borderCornerColor:I

.field public borderCornerLength:F

.field public borderCornerOffset:F

.field public borderCornerThickness:F

.field public borderLineColor:I

.field public borderLineThickness:F

.field public centerMoveEnabled:Z

.field public circleCornerFillColorHexValue:I

.field public cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

.field public cropCornerRadius:F

.field public cropMenuCropButtonIcon:I

.field public cropMenuCropButtonTitle:Ljava/lang/CharSequence;

.field public cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

.field public cropperLabelText:Ljava/lang/String;

.field public cropperLabelTextColor:I

.field public cropperLabelTextSize:F

.field public customOutputUri:Landroid/net/Uri;

.field public fixAspectRatio:Z

.field public flipHorizontally:Z

.field public flipVertically:Z

.field public guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

.field public guidelinesColor:I

.field public guidelinesThickness:F

.field public imageSourceIncludeCamera:Z

.field public imageSourceIncludeGallery:Z

.field public initialCropWindowPaddingRatio:F

.field public initialCropWindowRectangle:Landroid/graphics/Rect;

.field public initialRotation:I

.field public intentChooserPriorityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public intentChooserTitle:Ljava/lang/String;

.field public maxCropResultHeight:I

.field public maxCropResultWidth:I

.field public maxZoom:I

.field public minCropResultHeight:I

.field public minCropResultWidth:I

.field public minCropWindowHeight:I

.field public minCropWindowWidth:I

.field public multiTouchEnabled:Z

.field public noOutputImage:Z

.field public outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public outputCompressQuality:I

.field public outputRequestHeight:I

.field public outputRequestSizeOptions:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

.field public outputRequestWidth:I

.field public progressBarColor:I

.field public rotationDegrees:I

.field public scaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

.field public showCropLabel:Z

.field public showCropOverlay:Z

.field public showIntentChooser:Z

.field public showProgressBar:Z

.field public skipEditing:Z

.field public snapRadius:F

.field public touchRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/canhub/cropper/CropImageOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/canhub/cropper/CropImageOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/canhub/cropper/CropImageOptions;->Companion:Lcom/canhub/cropper/CropImageOptions$Companion;

    .line 581
    new-instance v0, Lcom/canhub/cropper/CropImageOptions$Companion$CREATOR$1;

    invoke-direct {v0}, Lcom/canhub/cropper/CropImageOptions$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Lcom/canhub/cropper/CropImageOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const-string v0, ""

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropperLabelText:Ljava/lang/String;

    .line 348
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 349
    .local v1, "dm":Landroid/util/DisplayMetrics;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    .line 350
    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    .line 351
    sget-object v3, Lcom/canhub/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/canhub/cropper/CropImageView$CropShape;

    iput-object v3, p0, Lcom/canhub/cropper/CropImageOptions;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    .line 352
    sget-object v3, Lcom/canhub/cropper/CropImageView$CropCornerShape;->RECTANGLE:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    iput-object v3, p0, Lcom/canhub/cropper/CropImageOptions;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    .line 353
    const/4 v3, -0x1

    iput v3, p0, Lcom/canhub/cropper/CropImageOptions;->circleCornerFillColorHexValue:I

    .line 354
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v2, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/canhub/cropper/CropImageOptions;->cropCornerRadius:F

    .line 355
    const/high16 v4, 0x40400000    # 3.0f

    invoke-static {v2, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lcom/canhub/cropper/CropImageOptions;->snapRadius:F

    .line 356
    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v2, v5, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    iput v5, p0, Lcom/canhub/cropper/CropImageOptions;->touchRadius:F

    .line 357
    sget-object v5, Lcom/canhub/cropper/CropImageView$Guidelines;->ON_TOUCH:Lcom/canhub/cropper/CropImageView$Guidelines;

    iput-object v5, p0, Lcom/canhub/cropper/CropImageOptions;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    .line 358
    sget-object v5, Lcom/canhub/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/canhub/cropper/CropImageView$ScaleType;

    iput-object v5, p0, Lcom/canhub/cropper/CropImageOptions;->scaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    .line 359
    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageOptions;->showCropOverlay:Z

    .line 360
    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageOptions;->showProgressBar:Z

    .line 361
    invoke-static {}, Lcom/canhub/cropper/CropImageOptionsKt;->access$getCOLOR_PURPLE$p()I

    move-result v5

    iput v5, p0, Lcom/canhub/cropper/CropImageOptions;->progressBarColor:I

    .line 362
    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 363
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/canhub/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 364
    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageOptions;->centerMoveEnabled:Z

    .line 365
    const/4 v6, 0x4

    iput v6, p0, Lcom/canhub/cropper/CropImageOptions;->maxZoom:I

    .line 366
    const v6, 0x3dcccccd    # 0.1f

    iput v6, p0, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 367
    iput-boolean v5, p0, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 368
    iput v2, p0, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    .line 369
    iput v2, p0, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    .line 370
    invoke-static {v2, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    iput v4, p0, Lcom/canhub/cropper/CropImageOptions;->borderLineThickness:F

    .line 371
    const/16 v4, 0xaa

    const/16 v6, 0xff

    invoke-static {v4, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    iput v7, p0, Lcom/canhub/cropper/CropImageOptions;->borderLineColor:I

    .line 372
    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v2, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    iput v7, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    .line 373
    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v2, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    iput v7, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerOffset:F

    .line 374
    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {v2, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    iput v7, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerLength:F

    .line 375
    iput v3, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    .line 376
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v2, v7, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    iput v7, p0, Lcom/canhub/cropper/CropImageOptions;->guidelinesThickness:F

    .line 377
    invoke-static {v4, v6, v6, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Lcom/canhub/cropper/CropImageOptions;->guidelinesColor:I

    .line 378
    const/16 v4, 0x77

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Lcom/canhub/cropper/CropImageOptions;->backgroundColor:I

    .line 379
    const/high16 v4, 0x42280000    # 42.0f

    invoke-static {v2, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/canhub/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 380
    nop

    .line 381
    invoke-static {v2, v4, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    .line 380
    iput v4, p0, Lcom/canhub/cropper/CropImageOptions;->minCropWindowHeight:I

    .line 382
    const/16 v4, 0x28

    iput v4, p0, Lcom/canhub/cropper/CropImageOptions;->minCropResultWidth:I

    .line 383
    iput v4, p0, Lcom/canhub/cropper/CropImageOptions;->minCropResultHeight:I

    .line 384
    const v4, 0x1869f

    iput v4, p0, Lcom/canhub/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 385
    iput v4, p0, Lcom/canhub/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 386
    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    .line 387
    iput v5, p0, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->customOutputUri:Landroid/net/Uri;

    .line 389
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v4, p0, Lcom/canhub/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 390
    const/16 v4, 0x5a

    iput v4, p0, Lcom/canhub/cropper/CropImageOptions;->outputCompressQuality:I

    .line 391
    iput v5, p0, Lcom/canhub/cropper/CropImageOptions;->outputRequestWidth:I

    .line 392
    iput v5, p0, Lcom/canhub/cropper/CropImageOptions;->outputRequestHeight:I

    .line 393
    sget-object v6, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    iput-object v6, p0, Lcom/canhub/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    .line 394
    iput-boolean v5, p0, Lcom/canhub/cropper/CropImageOptions;->noOutputImage:Z

    .line 395
    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    .line 396
    iput v3, p0, Lcom/canhub/cropper/CropImageOptions;->initialRotation:I

    .line 397
    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageOptions;->allowRotation:Z

    .line 398
    iput-boolean v2, p0, Lcom/canhub/cropper/CropImageOptions;->allowFlipping:Z

    .line 399
    iput-boolean v5, p0, Lcom/canhub/cropper/CropImageOptions;->allowCounterRotation:Z

    .line 400
    iput v4, p0, Lcom/canhub/cropper/CropImageOptions;->rotationDegrees:I

    .line 401
    iput-boolean v5, p0, Lcom/canhub/cropper/CropImageOptions;->flipHorizontally:Z

    .line 402
    iput-boolean v5, p0, Lcom/canhub/cropper/CropImageOptions;->flipVertically:Z

    .line 403
    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    .line 404
    iput v5, p0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    .line 405
    iput-boolean v5, p0, Lcom/canhub/cropper/CropImageOptions;->skipEditing:Z

    .line 406
    iput-boolean v5, p0, Lcom/canhub/cropper/CropImageOptions;->showIntentChooser:Z

    .line 407
    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->intentChooserTitle:Ljava/lang/String;

    .line 408
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->intentChooserPriorityList:Ljava/util/List;

    .line 409
    const/4 v0, 0x2

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    .line 410
    iput v3, p0, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextColor:I

    .line 411
    iput-boolean v5, p0, Lcom/canhub/cropper/CropImageOptions;->showCropLabel:Z

    .line 412
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;

    const-string/jumbo v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    const-string v0, ""

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropperLabelText:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    .line 417
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    .line 418
    invoke-static {}, Lcom/canhub/cropper/CropImageView$CropShape;->values()[Lcom/canhub/cropper/CropImageView$CropShape;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    .line 419
    invoke-static {}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->values()[Lcom/canhub/cropper/CropImageView$CropCornerShape;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    .line 420
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropCornerRadius:F

    .line 421
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->snapRadius:F

    .line 422
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->touchRadius:F

    .line 423
    invoke-static {}, Lcom/canhub/cropper/CropImageView$Guidelines;->values()[Lcom/canhub/cropper/CropImageView$Guidelines;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    .line 424
    invoke-static {}, Lcom/canhub/cropper/CropImageView$ScaleType;->values()[Lcom/canhub/cropper/CropImageView$ScaleType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->scaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    .line 425
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->showCropOverlay:Z

    .line 426
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->showProgressBar:Z

    .line 427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->progressBarColor:I

    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->autoZoomEnabled:Z

    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->multiTouchEnabled:Z

    .line 430
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->centerMoveEnabled:Z

    .line 431
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->maxZoom:I

    .line 432
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    .line 433
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    .line 435
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    .line 436
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderLineThickness:F

    .line 437
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderLineColor:I

    .line 438
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerOffset:F

    .line 440
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerLength:F

    .line 441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    .line 442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->circleCornerFillColorHexValue:I

    .line 443
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->guidelinesThickness:F

    .line 444
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->guidelinesColor:I

    .line 445
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->backgroundColor:I

    .line 446
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->minCropWindowWidth:I

    .line 447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->minCropWindowHeight:I

    .line 448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->minCropResultWidth:I

    .line 449
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->minCropResultHeight:I

    .line 450
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->maxCropResultWidth:I

    .line 451
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->maxCropResultHeight:I

    .line 452
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "CHAR_SEQUENCE_CREATOR.createFromParcel(parcel)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    .line 454
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->customOutputUri:Landroid/net/Uri;

    .line 455
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 456
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputCompressQuality:I

    .line 457
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputRequestWidth:I

    .line 458
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputRequestHeight:I

    .line 459
    invoke-static {}, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->values()[Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    .line 460
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->noOutputImage:Z

    .line 461
    const-class v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    .line 462
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->initialRotation:I

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->allowRotation:Z

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_a

    :cond_a
    move v0, v2

    :goto_a
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->allowFlipping:Z

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_b

    :cond_b
    move v0, v2

    :goto_b
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->allowCounterRotation:Z

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->rotationDegrees:I

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_c

    :cond_c
    move v0, v2

    :goto_c
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->flipHorizontally:Z

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_d

    :cond_d
    move v0, v2

    :goto_d
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->flipVertically:Z

    .line 469
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_e

    :cond_e
    move v0, v2

    :goto_e
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->skipEditing:Z

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_f

    :cond_f
    move v0, v2

    :goto_f
    iput-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->showIntentChooser:Z

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->intentChooserTitle:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->intentChooserPriorityList:Ljava/util/List;

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextColor:I

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropperLabelText:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_10

    goto :goto_10

    :cond_10
    move v1, v2

    :goto_10
    iput-boolean v1, p0, Lcom/canhub/cropper/CropImageOptions;->showCropLabel:Z

    .line 479
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public final validate()V
    .locals 8

    .line 557
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->maxZoom:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1f

    .line 558
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->touchRadius:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_1e

    .line 559
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    float-to-double v4, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v4, v6

    if-gez v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    if-eqz v0, :cond_1d

    .line 560
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    if-lez v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    const-string v4, "Cannot set aspect ratio value to a number less than or equal to 0."

    if-eqz v0, :cond_1c

    .line 561
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_4

    :cond_4
    move v0, v2

    :goto_4
    if-eqz v0, :cond_1b

    .line 562
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderLineThickness:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_5

    move v0, v1

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    if-eqz v0, :cond_1a

    .line 563
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_6

    move v0, v1

    goto :goto_6

    :cond_6
    move v0, v2

    :goto_6
    if-eqz v0, :cond_19

    .line 564
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->guidelinesThickness:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_7

    move v0, v1

    goto :goto_7

    :cond_7
    move v0, v2

    :goto_7
    if-eqz v0, :cond_18

    .line 565
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->minCropWindowHeight:I

    if-ltz v0, :cond_8

    move v0, v1

    goto :goto_8

    :cond_8
    move v0, v2

    :goto_8
    if-eqz v0, :cond_17

    .line 566
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->minCropResultWidth:I

    if-ltz v0, :cond_9

    move v0, v1

    goto :goto_9

    :cond_9
    move v0, v2

    :goto_9
    if-eqz v0, :cond_16

    .line 567
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->minCropResultHeight:I

    if-ltz v0, :cond_a

    move v0, v1

    goto :goto_a

    :cond_a
    move v0, v2

    :goto_a
    if-eqz v0, :cond_15

    .line 568
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->maxCropResultWidth:I

    iget v3, p0, Lcom/canhub/cropper/CropImageOptions;->minCropResultWidth:I

    if-lt v0, v3, :cond_b

    move v0, v1

    goto :goto_b

    :cond_b
    move v0, v2

    :goto_b
    if-eqz v0, :cond_14

    .line 569
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->maxCropResultHeight:I

    iget v3, p0, Lcom/canhub/cropper/CropImageOptions;->minCropResultHeight:I

    if-lt v0, v3, :cond_c

    move v0, v1

    goto :goto_c

    :cond_c
    move v0, v2

    :goto_c
    if-eqz v0, :cond_13

    .line 570
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputRequestWidth:I

    if-ltz v0, :cond_d

    move v0, v1

    goto :goto_d

    :cond_d
    move v0, v2

    :goto_d
    if-eqz v0, :cond_12

    .line 571
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputRequestHeight:I

    if-ltz v0, :cond_e

    move v0, v1

    goto :goto_e

    :cond_e
    move v0, v2

    :goto_e
    if-eqz v0, :cond_11

    .line 572
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->rotationDegrees:I

    if-ltz v0, :cond_f

    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->rotationDegrees:I

    const/16 v3, 0x168

    if-gt v0, v3, :cond_f

    goto :goto_f

    :cond_f
    move v1, v2

    :goto_f
    if-eqz v1, :cond_10

    .line 573
    return-void

    .line 593
    :cond_10
    const/4 v0, 0x0

    .line 572
    .local v0, "$i$a$-require-CropImageOptions$validate$16":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$16":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set rotation degrees value to a number < 0 or > 360"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_11
    const/4 v0, 0x0

    .line 571
    .local v0, "$i$a$-require-CropImageOptions$validate$15":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$15":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set request height value to a number < 0 "

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_12
    const/4 v0, 0x0

    .line 570
    .local v0, "$i$a$-require-CropImageOptions$validate$14":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$14":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set request width value to a number < 0 "

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_13
    const/4 v0, 0x0

    .line 569
    .local v0, "$i$a$-require-CropImageOptions$validate$13":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$13":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max crop result height to smaller value than min crop result height"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_14
    const/4 v0, 0x0

    .line 568
    .local v0, "$i$a$-require-CropImageOptions$validate$12":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$12":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max crop result width to smaller value than min crop result width"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_15
    const/4 v0, 0x0

    .line 567
    .local v0, "$i$a$-require-CropImageOptions$validate$11":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$11":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop result height value to a number < 0 "

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_16
    const/4 v0, 0x0

    .line 566
    .local v0, "$i$a$-require-CropImageOptions$validate$10":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$10":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop result width value to a number < 0 "

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_17
    const/4 v0, 0x0

    .line 565
    .local v0, "$i$a$-require-CropImageOptions$validate$9":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$9":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set min crop window height value to a number < 0 "

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_18
    const/4 v0, 0x0

    .line 564
    .local v0, "$i$a$-require-CropImageOptions$validate$8":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$8":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set guidelines thickness value to a number less than 0."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_19
    const/4 v0, 0x0

    .line 563
    .local v0, "$i$a$-require-CropImageOptions$validate$7":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$7":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set corner thickness value to a number less than 0."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1a
    const/4 v0, 0x0

    .line 562
    .local v0, "$i$a$-require-CropImageOptions$validate$6":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$6":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set line thickness value to a number less than 0."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1b
    const/4 v0, 0x0

    .line 561
    .local v0, "$i$a$-require-CropImageOptions$validate$5":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$5":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1c
    const/4 v0, 0x0

    .line 560
    .local v0, "$i$a$-require-CropImageOptions$validate$4":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$4":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1d
    const/4 v0, 0x0

    .line 559
    .local v0, "$i$a$-require-CropImageOptions$validate$3":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$3":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set initial crop window padding value to a number < 0 or >= 0.5"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1e
    const/4 v0, 0x0

    .line 558
    .local v0, "$i$a$-require-CropImageOptions$validate$2":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$2":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set touch radius value to a number <= 0 "

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 593
    :cond_1f
    const/4 v0, 0x0

    .line 557
    .local v0, "$i$a$-require-CropImageOptions$validate$1":I
    nop

    .end local v0    # "$i$a$-require-CropImageOptions$validate$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set max zoom to a number < 1"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    const-string v0, "dest"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeCamera:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 483
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->imageSourceIncludeGallery:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 484
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropShape:Lcom/canhub/cropper/CropImageView$CropShape;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$CropShape;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->cornerShape:Lcom/canhub/cropper/CropImageView$CropCornerShape;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$CropCornerShape;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropCornerRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 487
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->snapRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 488
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->touchRadius:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 489
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->guidelines:Lcom/canhub/cropper/CropImageView$Guidelines;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$Guidelines;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 490
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->scaleType:Lcom/canhub/cropper/CropImageView$ScaleType;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$ScaleType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->showCropOverlay:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 492
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->showProgressBar:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 493
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->progressBarColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->autoZoomEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 495
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->multiTouchEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 496
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->centerMoveEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 497
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->maxZoom:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 498
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowPaddingRatio:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 499
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->fixAspectRatio:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 500
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->aspectRatioX:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->aspectRatioY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 502
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderLineThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 503
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderLineColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 505
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerOffset:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 506
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerLength:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 507
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->borderCornerColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->circleCornerFillColorHexValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->guidelinesThickness:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 510
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->guidelinesColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->backgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->minCropWindowWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->minCropWindowHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 514
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->minCropResultWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 515
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->minCropResultHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->maxCropResultWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 517
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->maxCropResultHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 518
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->activityTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 519
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->activityMenuIconColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 520
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->customOutputUri:Landroid/net/Uri;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 521
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputCompressFormat:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Landroid/graphics/Bitmap$CompressFormat;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 522
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputCompressQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 523
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputRequestWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputRequestHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 525
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->outputRequestSizeOptions:Lcom/canhub/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {v0}, Lcom/canhub/cropper/CropImageView$RequestSizeOptions;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->noOutputImage:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 527
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->initialCropWindowRectangle:Landroid/graphics/Rect;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 528
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->initialRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->allowRotation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 530
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->allowFlipping:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 531
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->allowCounterRotation:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 532
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->rotationDegrees:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 533
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->flipHorizontally:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 534
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->flipVertically:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 535
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonTitle:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 536
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropMenuCropButtonIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->skipEditing:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 538
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->showIntentChooser:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 539
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->intentChooserTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->intentChooserPriorityList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 541
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextSize:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 542
    iget v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropperLabelTextColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget-object v0, p0, Lcom/canhub/cropper/CropImageOptions;->cropperLabelText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 544
    iget-boolean v0, p0, Lcom/canhub/cropper/CropImageOptions;->showCropLabel:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 545
    return-void
.end method
