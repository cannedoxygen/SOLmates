.class public Lcom/facebook/imagepipeline/core/NativeCodeSetup;
.super Ljava/lang/Object;
.source "NativeCodeSetup.java"


# static fields
.field private static sUseNativeCode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/facebook/imagepipeline/core/NativeCodeSetup;->sUseNativeCode:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUseNativeCode()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/facebook/imagepipeline/core/NativeCodeSetup;->sUseNativeCode:Z

    return v0
.end method

.method public static setUseNativeCode(Z)V
    .locals 0
    .param p0, "useNativeCode"    # Z

    .line 26
    sput-boolean p0, Lcom/facebook/imagepipeline/core/NativeCodeSetup;->sUseNativeCode:Z

    .line 27
    return-void
.end method
