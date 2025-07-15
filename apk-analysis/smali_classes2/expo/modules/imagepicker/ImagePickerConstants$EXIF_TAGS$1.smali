.class public final Lexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1;
.super Ljava/lang/Object;
.source "ImagePickerConstants.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/imagepicker/ImagePickerConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/String;",
        ">;>;",
        "Lkotlin/jvm/internal/markers/KMappedMarker;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImagePickerConstants.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImagePickerConstants.kt\nexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n76#2:166\n96#2,2:167\n98#2,3:173\n1549#3:169\n1620#3,3:170\n*S KotlinDebug\n*F\n+ 1 ImagePickerConstants.kt\nexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1\n*L\n19#1:166\n19#1:167,2\n19#1:173,3\n19#1:169\n19#1:170,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0010\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0002\u0010 \n\u0000\n\u0002\u0010(\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0001J\u001b\u0010\u0007\u001a\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\u00020\u0008H\u0096\u0002R \u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "expo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1",
        "",
        "Lkotlin/Pair;",
        "",
        "typeToTags",
        "",
        "",
        "iterator",
        "",
        "expo-image-picker_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final typeToTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 26

    .line 13
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    nop

    .line 23
    const/4 v0, 0x3

    new-array v1, v0, [Lkotlin/Pair;

    .line 24
    const/16 v2, 0x2e

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Artist"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 25
    const-string v3, "CFAPattern"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 24
    nop

    .line 26
    const-string v3, "ComponentsConfiguration"

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 24
    nop

    .line 27
    const-string v3, "Copyright"

    aput-object v3, v2, v0

    .line 24
    nop

    .line 28
    const-string v3, "DateTime"

    const/4 v7, 0x4

    aput-object v3, v2, v7

    .line 24
    nop

    .line 29
    const-string v3, "DateTimeDigitized"

    const/4 v8, 0x5

    aput-object v3, v2, v8

    .line 24
    nop

    .line 30
    const-string v3, "DateTimeOriginal"

    const/4 v9, 0x6

    aput-object v3, v2, v9

    .line 24
    nop

    .line 31
    const-string v3, "DeviceSettingDescription"

    const/4 v10, 0x7

    aput-object v3, v2, v10

    .line 24
    nop

    .line 32
    const-string v3, "ExifVersion"

    const/16 v11, 0x8

    aput-object v3, v2, v11

    .line 24
    nop

    .line 33
    const-string v3, "FileSource"

    const/16 v12, 0x9

    aput-object v3, v2, v12

    .line 24
    nop

    .line 34
    const-string v3, "FlashpixVersion"

    const/16 v13, 0xa

    aput-object v3, v2, v13

    .line 24
    nop

    .line 35
    const-string v3, "GPSAreaInformation"

    const/16 v14, 0xb

    aput-object v3, v2, v14

    .line 24
    nop

    .line 36
    const-string v3, "GPSDateStamp"

    const/16 v15, 0xc

    aput-object v3, v2, v15

    .line 24
    nop

    .line 37
    const-string v3, "GPSDestBearingRef"

    const/16 v16, 0xd

    aput-object v3, v2, v16

    .line 24
    nop

    .line 38
    const-string v3, "GPSDestDistanceRef"

    const/16 v17, 0xe

    aput-object v3, v2, v17

    .line 24
    nop

    .line 39
    const-string v3, "GPSDestLatitudeRef"

    const/16 v18, 0xf

    aput-object v3, v2, v18

    .line 24
    nop

    .line 40
    const-string v3, "GPSDestLongitudeRef"

    const/16 v19, 0x10

    aput-object v3, v2, v19

    .line 24
    nop

    .line 41
    const-string v3, "GPSHPositioningError"

    const/16 v20, 0x11

    aput-object v3, v2, v20

    .line 24
    nop

    .line 42
    const-string v3, "GPSImgDirectionRef"

    const/16 v21, 0x12

    aput-object v3, v2, v21

    .line 24
    nop

    .line 43
    const-string v3, "GPSLatitudeRef"

    const/16 v22, 0x13

    aput-object v3, v2, v22

    .line 24
    nop

    .line 44
    const-string v3, "GPSLongitudeRef"

    const/16 v23, 0x14

    aput-object v3, v2, v23

    .line 24
    nop

    .line 45
    const-string v3, "GPSMapDatum"

    const/16 v24, 0x15

    aput-object v3, v2, v24

    .line 24
    nop

    .line 46
    const-string v3, "GPSMeasureMode"

    const/16 v25, 0x16

    aput-object v3, v2, v25

    .line 24
    nop

    .line 47
    const-string v3, "GPSProcessingMethod"

    const/16 v25, 0x17

    aput-object v3, v2, v25

    .line 24
    nop

    .line 48
    const-string v3, "GPSSatellites"

    const/16 v25, 0x18

    aput-object v3, v2, v25

    .line 24
    nop

    .line 49
    const-string v3, "GPSSpeedRef"

    const/16 v25, 0x19

    aput-object v3, v2, v25

    .line 24
    nop

    .line 50
    const-string v3, "GPSStatus"

    const/16 v25, 0x1a

    aput-object v3, v2, v25

    .line 24
    nop

    .line 51
    const-string v3, "GPSTimeStamp"

    const/16 v25, 0x1b

    aput-object v3, v2, v25

    .line 24
    nop

    .line 52
    const-string v3, "GPSTrackRef"

    const/16 v25, 0x1c

    aput-object v3, v2, v25

    .line 24
    nop

    .line 53
    const-string v3, "GPSVersionID"

    const/16 v25, 0x1d

    aput-object v3, v2, v25

    .line 24
    nop

    .line 54
    const-string v3, "ImageDescription"

    const/16 v25, 0x1e

    aput-object v3, v2, v25

    .line 24
    nop

    .line 55
    const-string v3, "ImageUniqueID"

    const/16 v25, 0x1f

    aput-object v3, v2, v25

    .line 24
    nop

    .line 56
    const-string v3, "InteroperabilityIndex"

    const/16 v25, 0x20

    aput-object v3, v2, v25

    .line 24
    nop

    .line 57
    const-string v3, "Make"

    const/16 v25, 0x21

    aput-object v3, v2, v25

    .line 24
    nop

    .line 58
    const-string v3, "MakerNote"

    const/16 v25, 0x22

    aput-object v3, v2, v25

    .line 24
    nop

    .line 59
    const-string v3, "Model"

    const/16 v25, 0x23

    aput-object v3, v2, v25

    .line 24
    nop

    .line 60
    const-string v3, "OECF"

    const/16 v25, 0x24

    aput-object v3, v2, v25

    .line 24
    nop

    .line 61
    const-string v3, "RelatedSoundFile"

    const/16 v25, 0x25

    aput-object v3, v2, v25

    .line 24
    nop

    .line 62
    const-string v3, "SceneType"

    const/16 v25, 0x26

    aput-object v3, v2, v25

    .line 24
    nop

    .line 63
    const-string v3, "Software"

    const/16 v25, 0x27

    aput-object v3, v2, v25

    .line 24
    nop

    .line 64
    const-string v3, "SpatialFrequencyResponse"

    const/16 v25, 0x28

    aput-object v3, v2, v25

    .line 24
    nop

    .line 65
    const-string v3, "SpectralSensitivity"

    const/16 v25, 0x29

    aput-object v3, v2, v25

    .line 24
    nop

    .line 66
    const-string v3, "SubSecTime"

    const/16 v25, 0x2a

    aput-object v3, v2, v25

    .line 24
    nop

    .line 67
    const-string v3, "SubSecTimeDigitized"

    const/16 v25, 0x2b

    aput-object v3, v2, v25

    .line 24
    nop

    .line 68
    const-string v3, "SubSecTimeOriginal"

    const/16 v25, 0x2c

    aput-object v3, v2, v25

    .line 24
    nop

    .line 69
    const-string v3, "UserComment"

    const/16 v25, 0x2d

    aput-object v3, v2, v25

    .line 24
    nop

    .line 23
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "string"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v4

    .line 71
    nop

    .line 72
    const/16 v2, 0x20

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ApertureValue"

    aput-object v3, v2, v4

    .line 73
    const-string v3, "BrightnessValue"

    aput-object v3, v2, v5

    .line 72
    nop

    .line 74
    const-string v3, "CompressedBitsPerPixel"

    aput-object v3, v2, v6

    .line 72
    nop

    .line 75
    const-string v3, "DigitalZoomRatio"

    aput-object v3, v2, v0

    .line 72
    nop

    .line 76
    const-string v3, "ExposureBiasValue"

    aput-object v3, v2, v7

    .line 72
    nop

    .line 77
    const-string v3, "ExposureIndex"

    aput-object v3, v2, v8

    .line 72
    nop

    .line 78
    const-string v3, "ExposureTime"

    aput-object v3, v2, v9

    .line 72
    nop

    .line 79
    const-string v3, "FlashEnergy"

    aput-object v3, v2, v10

    .line 72
    nop

    .line 80
    const-string v3, "FocalLength"

    aput-object v3, v2, v11

    .line 72
    nop

    .line 81
    const-string v3, "FocalPlaneXResolution"

    aput-object v3, v2, v12

    .line 72
    nop

    .line 82
    const-string v3, "FocalPlaneYResolution"

    aput-object v3, v2, v13

    .line 72
    nop

    .line 83
    const-string v3, "FNumber"

    aput-object v3, v2, v14

    .line 72
    nop

    .line 84
    const-string v3, "GPSAltitude"

    aput-object v3, v2, v15

    .line 72
    nop

    .line 85
    const-string v3, "GPSDestBearing"

    aput-object v3, v2, v16

    .line 72
    nop

    .line 86
    const-string v3, "GPSDestDistance"

    aput-object v3, v2, v17

    .line 72
    nop

    .line 87
    const-string v3, "GPSDestLatitude"

    aput-object v3, v2, v18

    .line 72
    nop

    .line 88
    const-string v3, "GPSDestLongitude"

    aput-object v3, v2, v19

    .line 72
    nop

    .line 89
    const-string v3, "GPSDOP"

    aput-object v3, v2, v20

    .line 72
    nop

    .line 90
    const-string v3, "GPSImgDirection"

    aput-object v3, v2, v21

    .line 72
    nop

    .line 91
    const-string v3, "GPSLatitude"

    aput-object v3, v2, v22

    .line 72
    nop

    .line 92
    const-string v3, "GPSLongitude"

    aput-object v3, v2, v23

    .line 72
    nop

    .line 93
    const-string v3, "GPSSpeed"

    aput-object v3, v2, v24

    .line 72
    nop

    .line 94
    const-string v3, "GPSTrack"

    const/16 v25, 0x16

    aput-object v3, v2, v25

    .line 72
    nop

    .line 95
    const-string v3, "MaxApertureValue"

    const/16 v25, 0x17

    aput-object v3, v2, v25

    .line 72
    nop

    .line 96
    const-string v3, "PrimaryChromaticities"

    const/16 v25, 0x18

    aput-object v3, v2, v25

    .line 72
    nop

    .line 97
    const-string v3, "ReferenceBlackWhite"

    const/16 v25, 0x19

    aput-object v3, v2, v25

    .line 72
    nop

    .line 98
    const-string v3, "ShutterSpeedValue"

    const/16 v25, 0x1a

    aput-object v3, v2, v25

    .line 72
    nop

    .line 99
    const-string v3, "SubjectDistance"

    const/16 v25, 0x1b

    aput-object v3, v2, v25

    .line 72
    nop

    .line 100
    const-string v3, "WhitePoint"

    const/16 v25, 0x1c

    aput-object v3, v2, v25

    .line 72
    nop

    .line 101
    const-string v3, "XResolution"

    const/16 v25, 0x1d

    aput-object v3, v2, v25

    .line 72
    nop

    .line 102
    const-string v3, "YCbCrCoefficients"

    const/16 v25, 0x1e

    aput-object v3, v2, v25

    .line 72
    nop

    .line 103
    const-string v3, "YResolution"

    const/16 v25, 0x1f

    aput-object v3, v2, v25

    .line 72
    nop

    .line 71
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "double"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v1, v5

    .line 23
    nop

    .line 105
    nop

    .line 106
    const/16 v2, 0x37

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "BitsPerSample"

    aput-object v3, v2, v4

    .line 107
    const-string v3, "ColorSpace"

    aput-object v3, v2, v5

    .line 106
    nop

    .line 108
    const-string v3, "Compression"

    aput-object v3, v2, v6

    .line 106
    nop

    .line 109
    const-string v3, "Contrast"

    aput-object v3, v2, v0

    .line 106
    nop

    .line 110
    const-string v0, "CustomRendered"

    aput-object v0, v2, v7

    .line 106
    nop

    .line 111
    const-string v0, "DefaultCropSize"

    aput-object v0, v2, v8

    .line 106
    nop

    .line 112
    const-string v0, "DNGVersion"

    aput-object v0, v2, v9

    .line 106
    nop

    .line 113
    const-string v0, "ExposureMode"

    aput-object v0, v2, v10

    .line 106
    nop

    .line 114
    const-string v0, "ExposureProgram"

    aput-object v0, v2, v11

    .line 106
    nop

    .line 115
    const-string v0, "Flash"

    aput-object v0, v2, v12

    .line 106
    nop

    .line 116
    const-string v0, "FocalLengthIn35mmFilm"

    aput-object v0, v2, v13

    .line 106
    nop

    .line 117
    const-string v0, "FocalPlaneResolutionUnit"

    aput-object v0, v2, v14

    .line 106
    nop

    .line 118
    const-string v0, "GainControl"

    aput-object v0, v2, v15

    .line 106
    nop

    .line 119
    const-string v0, "GPSAltitudeRef"

    aput-object v0, v2, v16

    .line 106
    nop

    .line 120
    const-string v0, "GPSDifferential"

    aput-object v0, v2, v17

    .line 106
    nop

    .line 121
    const-string v0, "ImageLength"

    aput-object v0, v2, v18

    .line 106
    nop

    .line 122
    const-string v0, "ImageWidth"

    aput-object v0, v2, v19

    .line 106
    nop

    .line 123
    const-string v0, "ISOSpeedRatings"

    aput-object v0, v2, v20

    .line 106
    nop

    .line 124
    const-string v0, "JPEGInterchangeFormat"

    aput-object v0, v2, v21

    .line 106
    nop

    .line 125
    const-string v0, "JPEGInterchangeFormatLength"

    aput-object v0, v2, v22

    .line 106
    nop

    .line 126
    const-string v0, "LightSource"

    aput-object v0, v2, v23

    .line 106
    nop

    .line 127
    const-string v0, "MeteringMode"

    aput-object v0, v2, v24

    .line 106
    nop

    .line 128
    const-string v0, "NewSubfileType"

    const/16 v3, 0x16

    aput-object v0, v2, v3

    .line 106
    nop

    .line 129
    const-string v0, "AspectFrame"

    const/16 v3, 0x17

    aput-object v0, v2, v3

    .line 106
    nop

    .line 130
    const-string v0, "PreviewImageLength"

    const/16 v3, 0x18

    aput-object v0, v2, v3

    .line 106
    nop

    .line 131
    const-string v0, "PreviewImageStart"

    const/16 v3, 0x19

    aput-object v0, v2, v3

    .line 106
    nop

    .line 132
    const-string v0, "Orientation"

    const/16 v3, 0x1a

    aput-object v0, v2, v3

    .line 106
    nop

    .line 133
    const-string v0, "PhotometricInterpretation"

    const/16 v3, 0x1b

    aput-object v0, v2, v3

    .line 106
    nop

    .line 134
    const-string v0, "PixelXDimension"

    const/16 v3, 0x1c

    aput-object v0, v2, v3

    .line 106
    nop

    .line 135
    const-string v0, "PixelYDimension"

    const/16 v3, 0x1d

    aput-object v0, v2, v3

    .line 106
    nop

    .line 136
    const-string v0, "PlanarConfiguration"

    const/16 v3, 0x1e

    aput-object v0, v2, v3

    .line 106
    nop

    .line 137
    const-string v0, "ResolutionUnit"

    const/16 v3, 0x1f

    aput-object v0, v2, v3

    .line 106
    nop

    .line 138
    const-string v0, "RowsPerStrip"

    const/16 v3, 0x20

    aput-object v0, v2, v3

    .line 106
    nop

    .line 139
    const-string v0, "ISO"

    const/16 v3, 0x21

    aput-object v0, v2, v3

    .line 106
    nop

    .line 140
    const-string v0, "SensorBottomBorder"

    const/16 v3, 0x22

    aput-object v0, v2, v3

    .line 106
    nop

    .line 141
    const-string v0, "SensorLeftBorder"

    const/16 v3, 0x23

    aput-object v0, v2, v3

    .line 106
    nop

    .line 142
    const-string v0, "SensorRightBorder"

    const/16 v3, 0x24

    aput-object v0, v2, v3

    .line 106
    nop

    .line 143
    const-string v0, "SensorTopBorder"

    const/16 v3, 0x25

    aput-object v0, v2, v3

    .line 106
    nop

    .line 144
    const-string v0, "SamplesPerPixel"

    const/16 v3, 0x26

    aput-object v0, v2, v3

    .line 106
    nop

    .line 145
    const-string v0, "Saturation"

    const/16 v3, 0x27

    aput-object v0, v2, v3

    .line 106
    nop

    .line 146
    const-string v0, "SceneCaptureType"

    const/16 v3, 0x28

    aput-object v0, v2, v3

    .line 106
    nop

    .line 147
    const-string v0, "SensingMethod"

    const/16 v3, 0x29

    aput-object v0, v2, v3

    .line 106
    nop

    .line 148
    const-string v0, "Sharpness"

    const/16 v3, 0x2a

    aput-object v0, v2, v3

    .line 106
    nop

    .line 149
    const-string v0, "StripByteCounts"

    const/16 v3, 0x2b

    aput-object v0, v2, v3

    .line 106
    nop

    .line 150
    const-string v0, "StripOffsets"

    const/16 v3, 0x2c

    aput-object v0, v2, v3

    .line 106
    nop

    .line 151
    const-string v0, "SubfileType"

    const/16 v3, 0x2d

    aput-object v0, v2, v3

    .line 106
    nop

    .line 152
    const-string v0, "SubjectArea"

    const/16 v3, 0x2e

    aput-object v0, v2, v3

    .line 106
    nop

    .line 153
    const-string v0, "SubjectDistanceRange"

    const/16 v3, 0x2f

    aput-object v0, v2, v3

    .line 106
    nop

    .line 154
    const-string v0, "SubjectLocation"

    const/16 v3, 0x30

    aput-object v0, v2, v3

    .line 106
    nop

    .line 155
    const-string v0, "ThumbnailImageLength"

    const/16 v3, 0x31

    aput-object v0, v2, v3

    .line 106
    nop

    .line 156
    const-string v0, "ThumbnailImageWidth"

    const/16 v3, 0x32

    aput-object v0, v2, v3

    .line 106
    nop

    .line 157
    const-string v0, "TransferFunction"

    const/16 v3, 0x33

    aput-object v0, v2, v3

    .line 106
    nop

    .line 158
    const-string v0, "WhiteBalance"

    const/16 v3, 0x34

    aput-object v0, v2, v3

    .line 106
    nop

    .line 159
    const-string v0, "YCbCrPositioning"

    const/16 v3, 0x35

    aput-object v0, v2, v3

    .line 106
    nop

    .line 160
    const-string v0, "YCbCrSubSampling"

    const/16 v3, 0x36

    aput-object v0, v2, v3

    .line 106
    nop

    .line 105
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "int"

    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v1, v6

    .line 23
    nop

    .line 22
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1;->typeToTags:Ljava/util/Map;

    .line 13
    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 18
    move-object/from16 v0, p0

    iget-object v1, v0, Lexpo/modules/imagepicker/ImagePickerConstants$EXIF_TAGS$1;->typeToTags:Ljava/util/Map;

    .line 19
    nop

    .local v1, "$this$flatMap$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 166
    .local v2, "$i$f$flatMap":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$flatMapTo$iv$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 167
    .local v5, "$i$f$flatMapTo":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 168
    .local v7, "element$iv$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 19
    .local v8, "$i$a$-flatMap-ImagePickerConstants$EXIF_TAGS$1$iterator$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "type":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .local v10, "tags":Ljava/util/List;
    move-object v11, v10

    check-cast v11, Ljava/lang/Iterable;

    .local v11, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v12, 0x0

    .line 169
    .local v12, "$i$f$map":I
    new-instance v13, Ljava/util/ArrayList;

    const/16 v14, 0xa

    invoke-static {v11, v14}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v13, Ljava/util/Collection;

    .local v13, "destination$iv$iv":Ljava/util/Collection;
    move-object v14, v11

    .local v14, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v15, 0x0

    .line 170
    .local v15, "$i$f$mapTo":I
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    .line 171
    .local v17, "item$iv$iv":Ljava/lang/Object;
    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    .local v0, "tag":Ljava/lang/String;
    const/16 v18, 0x0

    .line 19
    .local v18, "$i$a$-map-ImagePickerConstants$EXIF_TAGS$1$iterator$1$1":I
    invoke-static {v9, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    .line 171
    .end local v0    # "tag":Ljava/lang/String;
    .end local v18    # "$i$a$-map-ImagePickerConstants$EXIF_TAGS$1$iterator$1$1":I
    invoke-interface {v13, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    goto :goto_1

    .line 172
    .end local v17    # "item$iv$iv":Ljava/lang/Object;
    :cond_0
    nop

    .end local v13    # "destination$iv$iv":Ljava/util/Collection;
    .end local v14    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v15    # "$i$f$mapTo":I
    move-object v0, v13

    check-cast v0, Ljava/util/List;

    .line 169
    nop

    .line 19
    .end local v11    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v12    # "$i$f$map":I
    nop

    .line 168
    .end local v8    # "$i$a$-flatMap-ImagePickerConstants$EXIF_TAGS$1$iterator$1":I
    .end local v9    # "type":Ljava/lang/String;
    .end local v10    # "tags":Ljava/util/List;
    check-cast v0, Ljava/lang/Iterable;

    .line 173
    .local v0, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v3, v0}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    move-object/from16 v0, p0

    goto :goto_0

    .line 175
    .end local v0    # "list$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "element$iv$iv":Ljava/util/Map$Entry;
    :cond_1
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$flatMapTo$iv$iv":Ljava/util/Map;
    .end local v5    # "$i$f$flatMapTo":I
    move-object v0, v3

    check-cast v0, Ljava/util/List;

    .line 166
    nop

    .line 20
    .end local v1    # "$this$flatMap$iv":Ljava/util/Map;
    .end local v2    # "$i$f$flatMap":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
