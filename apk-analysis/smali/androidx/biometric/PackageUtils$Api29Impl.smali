.class Landroidx/biometric/PackageUtils$Api29Impl;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/biometric/PackageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api29Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasSystemFeatureFace(Landroid/content/pm/PackageManager;)Z
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 107
    const-string v0, "android.hardware.biometrics.face"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static hasSystemFeatureIris(Landroid/content/pm/PackageManager;)Z
    .locals 1
    .param p0, "packageManager"    # Landroid/content/pm/PackageManager;

    .line 117
    const-string v0, "android.hardware.biometrics.iris"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
