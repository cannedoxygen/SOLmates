.class public final Lcom/facebook/fresco/vito/options/ImageOptions;
.super Lcom/facebook/fresco/vito/options/DecodedImageOptions;
.source "ImageOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/ImageOptions$Builder;,
        Lcom/facebook/fresco/vito/options/ImageOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u001f\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 T2\u00020\u0001:\u0002STB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0013\u0010E\u001a\u00020\u00062\u0008\u0010F\u001a\u0004\u0018\u00010GH\u0096\u0002J\u000e\u0010H\u001a\u00020\u00062\u0006\u0010I\u001a\u00020\u0000J\u0006\u0010J\u001a\u00020\u0003J\u0008\u0010K\u001a\u00020\u0019H\u0016J\u0006\u0010L\u001a\u00020\u0006J\u0006\u0010M\u001a\u00020\u0006J\u0006\u0010N\u001a\u00020\u0006J\u0008\u0010O\u001a\u00020PH\u0016J\u0008\u0010Q\u001a\u00020RH\u0014R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\r\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0013\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u0015\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u00198GX\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u001d\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0010R\u0013\u0010\u001f\u001a\u0004\u0018\u00010 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\"R\u0016\u0010#\u001a\u00020\u00198GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008$\u0010%R\u0013\u0010&\u001a\u0004\u0018\u00010\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008(\u0010)R\u0011\u0010*\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008+\u0010\u0017R\u0011\u0010,\u001a\u00020\u0019\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010%R\u0011\u0010.\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010\u0017R\u0013\u0010/\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00080\u0010\u0010R\u0016\u00101\u001a\u00020\u00198GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00082\u0010%R\u0011\u00103\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00084\u0010\u0017R\u001a\u00105\u001a\u0004\u0018\u00010\u00198GX\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u001c\u001a\u0004\u00086\u0010\u001bR\u0013\u00107\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u00088\u0010\u0010R\u0013\u00109\u001a\u0004\u0018\u00010 \u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008:\u0010\"R\u0016\u0010;\u001a\u00020\u00198GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008<\u0010%R\u0013\u0010=\u001a\u0004\u0018\u00010\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008>\u0010)R\u0013\u0010?\u001a\u0004\u0018\u00010\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008@\u0010\u0010R\u0016\u0010A\u001a\u00020\u00198GX\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008B\u0010%R\u0013\u0010C\u001a\u0004\u0018\u00010\'\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008D\u0010)\u00a8\u0006U"
    }
    d2 = {
        "Lcom/facebook/fresco/vito/options/ImageOptions;",
        "Lcom/facebook/fresco/vito/options/DecodedImageOptions;",
        "builder",
        "Lcom/facebook/fresco/vito/options/ImageOptions$Builder;",
        "(Lcom/facebook/fresco/vito/options/ImageOptions$Builder;)V",
        "_autoPlay",
        "",
        "_autoStop",
        "_resizeToViewport",
        "actualImageColorFilter",
        "Landroid/graphics/ColorFilter;",
        "getActualImageColorFilter",
        "()Landroid/graphics/ColorFilter;",
        "backgroundDrawable",
        "Landroid/graphics/drawable/Drawable;",
        "getBackgroundDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "customDrawableFactory",
        "Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;",
        "getCustomDrawableFactory",
        "()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;",
        "errorApplyRoundingOptions",
        "getErrorApplyRoundingOptions",
        "()Z",
        "errorColor",
        "",
        "getErrorColor",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "errorDrawable",
        "getErrorDrawable",
        "errorFocusPoint",
        "Landroid/graphics/PointF;",
        "getErrorFocusPoint",
        "()Landroid/graphics/PointF;",
        "errorRes",
        "getErrorRes",
        "()I",
        "errorScaleType",
        "Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "getErrorScaleType",
        "()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;",
        "experimentalDynamicSize",
        "getExperimentalDynamicSize",
        "fadeDurationMs",
        "getFadeDurationMs",
        "isPerfMediaRemountInstrumentationFix",
        "overlayDrawable",
        "getOverlayDrawable",
        "overlayRes",
        "getOverlayRes",
        "placeholderApplyRoundingOptions",
        "getPlaceholderApplyRoundingOptions",
        "placeholderColor",
        "getPlaceholderColor",
        "placeholderDrawable",
        "getPlaceholderDrawable",
        "placeholderFocusPoint",
        "getPlaceholderFocusPoint",
        "placeholderRes",
        "getPlaceholderRes",
        "placeholderScaleType",
        "getPlaceholderScaleType",
        "progressDrawable",
        "getProgressDrawable",
        "progressRes",
        "getProgressRes",
        "progressScaleType",
        "getProgressScaleType",
        "equals",
        "otherObject",
        "",
        "equalsForActualImage",
        "other",
        "extend",
        "hashCode",
        "shouldAutoPlay",
        "shouldAutoStop",
        "shouldResizeToViewport",
        "toString",
        "",
        "toStringHelper",
        "Lcom/facebook/common/internal/Objects$ToStringHelper;",
        "Builder",
        "Companion",
        "options_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

.field private static defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;


# instance fields
.field private final _autoPlay:Z

.field private final _autoStop:Z

.field private final _resizeToViewport:Z

.field private final actualImageColorFilter:Landroid/graphics/ColorFilter;

.field private final backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

.field private final errorApplyRoundingOptions:Z

.field private final errorColor:Ljava/lang/Integer;

.field private final errorDrawable:Landroid/graphics/drawable/Drawable;

.field private final errorFocusPoint:Landroid/graphics/PointF;

.field private final errorRes:I

.field private final errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private final experimentalDynamicSize:Z

.field private final fadeDurationMs:I

.field private final isPerfMediaRemountInstrumentationFix:Z

.field private final overlayDrawable:Landroid/graphics/drawable/Drawable;

.field private final overlayRes:I

.field private final placeholderApplyRoundingOptions:Z

.field private final placeholderColor:Ljava/lang/Integer;

.field private final placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private final placeholderFocusPoint:Landroid/graphics/PointF;

.field private final placeholderRes:I

.field private final placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

.field private final progressDrawable:Landroid/graphics/drawable/Drawable;

.field private final progressRes:I

.field private final progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    .line 468
    nop

    .line 463
    new-instance v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    invoke-direct {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;-><init>()V

    .line 464
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->placeholderScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    .line 465
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->progressScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    .line 466
    sget-object v1, Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;->CENTER_INSIDE:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->errorScaleType(Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    .line 467
    sget-object v1, Lcom/facebook/imagepipeline/common/Priority;->HIGH:Lcom/facebook/imagepipeline/common/Priority;

    invoke-virtual {v0, v1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->priority(Lcom/facebook/imagepipeline/common/Priority;)Lcom/facebook/fresco/vito/options/EncodedImageOptions$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    .line 468
    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->build()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    sput-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/vito/options/ImageOptions$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    move-object v0, p1

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;

    invoke-direct {p0, v0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;-><init>(Lcom/facebook/fresco/vito/options/DecodedImageOptions$Builder;)V

    .line 22
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderColor$options_release()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    .line 23
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderRes$options_release()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    .line 24
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderDrawable$options_release()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 26
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderFocusPoint$options_release()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    .line 27
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_placeholderApplyRoundingOptions$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    .line 30
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_progressRes$options_release()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    .line 31
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_progressDrawable$options_release()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_progressScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 35
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorColor$options_release()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    .line 36
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorRes$options_release()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    .line 37
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorScaleType$options_release()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    .line 38
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorFocusPoint$options_release()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    .line 39
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorDrawable$options_release()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_errorApplyRoundingOptions$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    .line 43
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_actualImageColorFilter$options_release()Landroid/graphics/ColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    .line 46
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_overlayRes$options_release()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    .line 47
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_overlayDrawable$options_release()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_backgroundDrawable$options_release()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_resizeToViewport$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    .line 53
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_fadeDurationMs$options_release()I

    move-result v0

    iput v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    .line 54
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_autoPlay$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    .line 55
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_autoStop$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    .line 56
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_perfMediaRemountInstrumentationFix$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    .line 57
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_customDrawableFactory$options_release()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    .line 58
    invoke-virtual {p1}, Lcom/facebook/fresco/vito/options/ImageOptions$Builder;->get_experimentalDynamicSize$options_release()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->experimentalDynamicSize:Z

    .line 19
    return-void
.end method

.method public static final synthetic access$getDefaultImageOptions$cp()Lcom/facebook/fresco/vito/options/ImageOptions;
    .locals 1

    .line 19
    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;

    return-object v0
.end method

.method public static final synthetic access$setDefaultImageOptions$cp(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .locals 0
    .param p0, "<set-?>"    # Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 19
    sput-object p0, Lcom/facebook/fresco/vito/options/ImageOptions;->defaultImageOptions:Lcom/facebook/fresco/vito/options/ImageOptions;

    return-void
.end method

.method public static final create()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->create()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final defaults()Lcom/facebook/fresco/vito/options/ImageOptions;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->defaults()Lcom/facebook/fresco/vito/options/ImageOptions;

    move-result-object v0

    return-object v0
.end method

.method public static final extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static final setDefaults(Lcom/facebook/fresco/vito/options/ImageOptions;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->setDefaults(Lcom/facebook/fresco/vito/options/ImageOptions;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 98
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 99
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    .line 101
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/facebook/fresco/vito/options/ImageOptions;

    .line 102
    .local v1, "other":Lcom/facebook/fresco/vito/options/ImageOptions;
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    if-eqz v2, :cond_3

    .line 103
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    iget v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    if-ne v2, v3, :cond_2

    .line 105
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 108
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    iget-boolean v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    if-ne v2, v3, :cond_2

    .line 109
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 110
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    iget v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    if-ne v2, v3, :cond_2

    .line 111
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 112
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    iget-boolean v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    if-ne v2, v3, :cond_2

    .line 114
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    iget v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    if-ne v2, v3, :cond_2

    .line 115
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    iget v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    if-ne v2, v3, :cond_2

    .line 118
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    iget-boolean v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    if-ne v2, v3, :cond_2

    .line 122
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    iget v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    if-ne v2, v3, :cond_2

    .line 123
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    iget-boolean v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    if-ne v2, v3, :cond_2

    .line 124
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    iget-boolean v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    if-ne v2, v3, :cond_2

    .line 125
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 127
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    iget-boolean v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    if-eq v2, v3, :cond_4

    .line 128
    :cond_2
    return v0

    .line 131
    :cond_3
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 132
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    iget v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    if-ne v2, v3, :cond_5

    .line 133
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 134
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 135
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 136
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    iget-boolean v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    if-ne v2, v3, :cond_5

    .line 137
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 138
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    iget v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    if-ne v2, v3, :cond_5

    .line 139
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 140
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    iget-boolean v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    if-ne v2, v3, :cond_5

    .line 142
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    iget v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    if-ne v2, v3, :cond_5

    .line 143
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 144
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 145
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    iget v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    if-ne v2, v3, :cond_5

    .line 146
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_5

    .line 147
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-ne v2, v3, :cond_5

    .line 148
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 149
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    iget-boolean v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    if-ne v2, v3, :cond_5

    .line 150
    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    iget v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    if-ne v2, v3, :cond_5

    .line 151
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    iget-boolean v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    if-ne v2, v3, :cond_5

    .line 152
    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    iget-boolean v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    if-ne v2, v3, :cond_5

    .line 153
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    invoke-static {v2, v3}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 154
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, v1, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v2, v3, :cond_4

    goto :goto_0

    .line 158
    :cond_4
    move-object v0, v1

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    invoke-virtual {p0, v0}, Lcom/facebook/fresco/vito/options/ImageOptions;->equalDecodedOptions(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)Z

    move-result v0

    return v0

    .line 155
    :cond_5
    :goto_0
    return v0

    .line 99
    .end local v1    # "other":Lcom/facebook/fresco/vito/options/ImageOptions;
    :cond_6
    :goto_1
    return v0
.end method

.method public final equalsForActualImage(Lcom/facebook/fresco/vito/options/ImageOptions;)Z
    .locals 3
    .param p1, "other"    # Lcom/facebook/fresco/vito/options/ImageOptions;

    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    if-ne p0, p1, :cond_0

    .line 70
    const/4 v0, 0x1

    return v0

    .line 72
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 73
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    if-ne v0, v2, :cond_1

    .line 74
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    if-ne v0, v2, :cond_1

    .line 78
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    if-ne v0, v2, :cond_1

    .line 79
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    if-ne v0, v2, :cond_1

    .line 80
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 81
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    if-eq v0, v2, :cond_3

    .line 82
    :cond_1
    return v1

    .line 85
    :cond_2
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    iget v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    if-ne v0, v2, :cond_4

    .line 86
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    iget-boolean v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    if-ne v0, v2, :cond_4

    .line 90
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    iget-object v2, p1, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    invoke-static {v0, v2}, Lcom/facebook/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    .line 94
    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/facebook/fresco/vito/options/DecodedImageOptions;

    invoke-virtual {p0, v0}, Lcom/facebook/fresco/vito/options/ImageOptions;->equalDecodedOptions(Lcom/facebook/fresco/vito/options/DecodedImageOptions;)Z

    move-result v0

    return v0

    .line 91
    :cond_4
    :goto_0
    return v1
.end method

.method public final extend()Lcom/facebook/fresco/vito/options/ImageOptions$Builder;
    .locals 1

    .line 60
    sget-object v0, Lcom/facebook/fresco/vito/options/ImageOptions;->Companion:Lcom/facebook/fresco/vito/options/ImageOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/ImageOptions$Companion;->extend(Lcom/facebook/fresco/vito/options/ImageOptions;)Lcom/facebook/fresco/vito/options/ImageOptions$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final getActualImageColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public final getBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getCustomDrawableFactory()Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    return-object v0
.end method

.method public final getErrorApplyRoundingOptions()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    return v0
.end method

.method public final getErrorColor()Ljava/lang/Integer;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getErrorFocusPoint()Landroid/graphics/PointF;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getErrorRes()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    return v0
.end method

.method public final getErrorScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final getExperimentalDynamicSize()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->experimentalDynamicSize:Z

    return v0
.end method

.method public final getFadeDurationMs()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    return v0
.end method

.method public final getOverlayDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getOverlayRes()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    return v0
.end method

.method public final getPlaceholderApplyRoundingOptions()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    return v0
.end method

.method public final getPlaceholderColor()Ljava/lang/Integer;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getPlaceholderFocusPoint()Landroid/graphics/PointF;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final getPlaceholderRes()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    return v0
.end method

.method public final getPlaceholderScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public final getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public final getProgressRes()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    return v0
.end method

.method public final getProgressScaleType()Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 162
    invoke-super {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->hashCode()I

    move-result v0

    .line 163
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    .line 164
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    add-int/2addr v0, v2

    .line 165
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v1, v2

    .line 166
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    .line 167
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/PointF;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    add-int/2addr v1, v2

    .line 168
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    add-int/2addr v0, v2

    .line 169
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v3

    :goto_4
    add-int/2addr v1, v2

    .line 170
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    add-int/2addr v0, v2

    .line 171
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    move v2, v3

    :goto_5
    add-int/2addr v1, v2

    .line 172
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/graphics/PointF;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    move v2, v3

    :goto_6
    add-int/2addr v0, v2

    .line 173
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    move v2, v3

    :goto_7
    add-int/2addr v1, v2

    .line 174
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    add-int/2addr v0, v2

    .line 175
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    add-int/2addr v1, v2

    .line 176
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    move v2, v3

    :goto_8
    add-int/2addr v0, v2

    .line 177
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    move v2, v3

    :goto_9
    add-int/2addr v1, v2

    .line 178
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    move v2, v3

    :goto_a
    add-int/2addr v0, v2

    .line 179
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    move v2, v3

    :goto_b
    add-int/2addr v1, v2

    .line 180
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/graphics/ColorFilter;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    move v2, v3

    :goto_c
    add-int/2addr v0, v2

    .line 181
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    add-int/2addr v1, v2

    .line 182
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    add-int/2addr v0, v2

    .line 183
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    add-int/2addr v1, v2

    .line 184
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    add-int/2addr v0, v2

    .line 185
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    add-int/2addr v1, v2

    .line 186
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    add-int/2addr v0, v2

    .line 187
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_d
    add-int/2addr v1, v3

    .line 188
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public final isPerfMediaRemountInstrumentationFix()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    return v0
.end method

.method public final shouldAutoPlay()Z
    .locals 1

    .line 62
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    return v0
.end method

.method public final shouldAutoStop()Z
    .locals 1

    .line 64
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    return v0
.end method

.method public final shouldResizeToViewport()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    invoke-virtual {p0}, Lcom/facebook/fresco/vito/options/ImageOptions;->toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImageOptions{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;
    .locals 3

    .line 194
    invoke-super {p0}, Lcom/facebook/fresco/vito/options/DecodedImageOptions;->toStringHelper()Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "placeholderColor"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 196
    const-string/jumbo v1, "placeholderRes"

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderRes:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 197
    const-string/jumbo v1, "placeholderDrawable"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "placeholderScaleType"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 199
    const-string/jumbo v1, "placeholderFocusPoint"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderFocusPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 200
    const-string/jumbo v1, "placeholderApplyRoundingOptions"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->placeholderApplyRoundingOptions:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 201
    const-string/jumbo v1, "progressRes"

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressRes:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "progressDrawable"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 203
    const-string/jumbo v1, "progressScaleType"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->progressScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 204
    const-string v1, "errorColor"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorColor:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 205
    const-string v1, "errorRes"

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorRes:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 206
    const-string v1, "errorScaleType"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorScaleType:Lcom/facebook/drawee/drawable/ScalingUtils$ScaleType;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 207
    const-string v1, "errorFocusPoint"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorFocusPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 208
    const-string v1, "errorDrawable"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 209
    const-string v1, "errorApplyRoundingOptions"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->errorApplyRoundingOptions:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 210
    const-string v1, "actualImageColorFilter"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->actualImageColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 211
    const-string/jumbo v1, "overlayRes"

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayRes:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 212
    const-string/jumbo v1, "overlayDrawable"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->overlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 213
    const-string v1, "backgroundDrawable"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "resizeToViewport"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_resizeToViewport:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 215
    const-string v1, "autoPlay"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoPlay:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 216
    const-string v1, "autoStop"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->_autoStop:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 217
    const-string v1, "mPerfMediaRemountInstrumentationFix"

    iget-boolean v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->isPerfMediaRemountInstrumentationFix:Z

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 218
    const-string v1, "fadeDurationMs"

    iget v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->fadeDurationMs:I

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 219
    const-string v1, "customDrawableFactory"

    iget-object v2, p0, Lcom/facebook/fresco/vito/options/ImageOptions;->customDrawableFactory:Lcom/facebook/fresco/vito/options/ImageOptionsDrawableFactory;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string/jumbo v1, "super.toStringHelper()\n \u2026\", customDrawableFactory)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
