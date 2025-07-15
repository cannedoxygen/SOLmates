.class public final Lexpo/modules/device/DeviceModule$Companion;
.super Ljava/lang/Object;
.source "DeviceModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/device/DeviceModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\n\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u0010\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0002R\u0014\u0010\u0003\u001a\u00020\u00048BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0003\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "Lexpo/modules/device/DeviceModule$Companion;",
        "",
        "()V",
        "isRunningOnEmulator",
        "",
        "()Z",
        "getDeviceType",
        "Lexpo/modules/device/DeviceModule$DeviceType;",
        "context",
        "Landroid/content/Context;",
        "getDeviceTypeFromPhysicalSize",
        "getDeviceTypeFromResourceConfiguration",
        "expo-device_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/device/DeviceModule$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getDeviceType(Lexpo/modules/device/DeviceModule$Companion;Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/device/DeviceModule$Companion;
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    invoke-direct {p0, p1}, Lexpo/modules/device/DeviceModule$Companion;->getDeviceType(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$isRunningOnEmulator(Lexpo/modules/device/DeviceModule$Companion;)Z
    .locals 1
    .param p0, "$this"    # Lexpo/modules/device/DeviceModule$Companion;

    .line 131
    invoke-direct {p0}, Lexpo/modules/device/DeviceModule$Companion;->isRunningOnEmulator()Z

    move-result v0

    return v0
.end method

.method private final getDeviceType(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "amazon.hardware.fire_tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->TV:Lexpo/modules/device/DeviceModule$DeviceType;

    return-object v0

    .line 141
    :cond_0
    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 142
    .local v0, "uiManager":Landroid/app/UiModeManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 143
    sget-object v1, Lexpo/modules/device/DeviceModule$DeviceType;->TV:Lexpo/modules/device/DeviceModule$DeviceType;

    return-object v1

    .line 146
    :cond_1
    invoke-direct {p0, p1}, Lexpo/modules/device/DeviceModule$Companion;->getDeviceTypeFromResourceConfiguration(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;

    move-result-object v1

    .line 147
    .local v1, "deviceTypeFromResourceConfiguration":Lexpo/modules/device/DeviceModule$DeviceType;
    sget-object v2, Lexpo/modules/device/DeviceModule$DeviceType;->UNKNOWN:Lexpo/modules/device/DeviceModule$DeviceType;

    if-eq v1, v2, :cond_2

    .line 148
    move-object v2, v1

    goto :goto_0

    .line 150
    :cond_2
    invoke-direct {p0, p1}, Lexpo/modules/device/DeviceModule$Companion;->getDeviceTypeFromPhysicalSize(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;

    move-result-object v2

    .line 147
    :goto_0
    return-object v2
.end method

.method private final getDeviceTypeFromPhysicalSize(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 170
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lexpo/modules/device/DeviceModule$DeviceType;->UNKNOWN:Lexpo/modules/device/DeviceModule$DeviceType;

    return-object v0

    .line 174
    .local v0, "windowManager":Landroid/view/WindowManager;
    :cond_0
    const-wide/16 v1, 0x0

    .line 175
    .local v1, "widthInches":D
    const-wide/16 v3, 0x0

    .line 178
    .local v3, "heightInches":D
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-lt v5, v6, :cond_1

    .line 179
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const-string v6, "getBounds(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    .local v5, "windowBounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->densityDpi:I

    .line 181
    .local v6, "densityDpi":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-double v7, v7

    int-to-double v9, v6

    div-double/2addr v7, v9

    .line 182
    .end local v1    # "widthInches":D
    .local v7, "widthInches":D
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-double v1, v1

    int-to-double v9, v6

    div-double/2addr v1, v9

    .end local v3    # "heightInches":D
    .end local v5    # "windowBounds":Landroid/graphics/Rect;
    .end local v6    # "densityDpi":I
    .local v1, "heightInches":D
    goto :goto_0

    .line 184
    .end local v7    # "widthInches":D
    .local v1, "widthInches":D
    .restart local v3    # "heightInches":D
    :cond_1
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 186
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 187
    iget v6, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v6, v6

    iget v8, v5, Landroid/util/DisplayMetrics;->xdpi:F

    float-to-double v8, v8

    div-double v7, v6, v8

    .line 188
    .end local v1    # "widthInches":D
    .restart local v7    # "widthInches":D
    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v1, v1

    iget v6, v5, Landroid/util/DisplayMetrics;->ydpi:F

    float-to-double v9, v6

    div-double/2addr v1, v9

    .line 192
    .end local v3    # "heightInches":D
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .local v1, "heightInches":D
    :goto_0
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    .line 194
    .local v3, "diagonalSizeInches":D
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpg-double v5, v5, v3

    const-wide v9, 0x401b99999999999aL    # 6.9

    const/4 v6, 0x0

    if-gtz v5, :cond_2

    cmpg-double v5, v3, v9

    if-gtz v5, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-eqz v6, :cond_3

    .line 196
    sget-object v5, Lexpo/modules/device/DeviceModule$DeviceType;->PHONE:Lexpo/modules/device/DeviceModule$DeviceType;

    goto :goto_1

    .line 197
    :cond_3
    cmpl-double v5, v3, v9

    if-lez v5, :cond_4

    const-wide/high16 v5, 0x4032000000000000L    # 18.0

    cmpg-double v5, v3, v5

    if-gtz v5, :cond_4

    .line 199
    sget-object v5, Lexpo/modules/device/DeviceModule$DeviceType;->TABLET:Lexpo/modules/device/DeviceModule$DeviceType;

    goto :goto_1

    .line 202
    :cond_4
    sget-object v5, Lexpo/modules/device/DeviceModule$DeviceType;->UNKNOWN:Lexpo/modules/device/DeviceModule$DeviceType;

    .line 194
    :goto_1
    return-object v5
.end method

.method private final getDeviceTypeFromResourceConfiguration(Landroid/content/Context;)Lexpo/modules/device/DeviceModule$DeviceType;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 159
    .local v0, "smallestScreenWidthDp":I
    if-nez v0, :cond_0

    .line 160
    sget-object v1, Lexpo/modules/device/DeviceModule$DeviceType;->UNKNOWN:Lexpo/modules/device/DeviceModule$DeviceType;

    goto :goto_0

    .line 161
    :cond_0
    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    .line 162
    sget-object v1, Lexpo/modules/device/DeviceModule$DeviceType;->TABLET:Lexpo/modules/device/DeviceModule$DeviceType;

    goto :goto_0

    .line 164
    :cond_1
    sget-object v1, Lexpo/modules/device/DeviceModule$DeviceType;->PHONE:Lexpo/modules/device/DeviceModule$DeviceType;

    .line 159
    :goto_0
    return-object v1
.end method

.method private final isRunningOnEmulator()Z
    .locals 1

    .line 133
    sget-object v0, Lexpo/modules/core/utilities/EmulatorUtilities;->INSTANCE:Lexpo/modules/core/utilities/EmulatorUtilities;

    invoke-virtual {v0}, Lexpo/modules/core/utilities/EmulatorUtilities;->isRunningOnEmulator()Z

    move-result v0

    return v0
.end method
