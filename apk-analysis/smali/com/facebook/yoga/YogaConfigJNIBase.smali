.class public abstract Lcom/facebook/yoga/YogaConfigJNIBase;
.super Lcom/facebook/yoga/YogaConfig;
.source "YogaConfigJNIBase.java"


# instance fields
.field private mLogger:Lcom/facebook/yoga/YogaLogger;

.field mNativePointer:J


# direct methods
.method constructor <init>()V
    .locals 2

    .line 23
    invoke-static {}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigNewJNI()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/yoga/YogaConfigJNIBase;-><init>(J)V

    .line 24
    return-void
.end method

.method private constructor <init>(J)V
    .locals 2
    .param p1, "nativePointer"    # J

    .line 15
    invoke-direct {p0}, Lcom/facebook/yoga/YogaConfig;-><init>()V

    .line 16
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 19
    iput-wide p1, p0, Lcom/facebook/yoga/YogaConfigJNIBase;->mNativePointer:J

    .line 20
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to allocate native memory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Z)V
    .locals 2
    .param p1, "useVanillaJNI"    # Z

    .line 27
    invoke-static {}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigNewJNI()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/yoga/YogaConfigJNIBase;-><init>(J)V

    .line 28
    return-void
.end method


# virtual methods
.method public getErrata()Lcom/facebook/yoga/YogaErrata;
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfigJNIBase;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigGetErrataJNI(J)I

    move-result v0

    invoke-static {v0}, Lcom/facebook/yoga/YogaErrata;->fromInt(I)Lcom/facebook/yoga/YogaErrata;

    move-result-object v0

    return-object v0
.end method

.method public getLogger()Lcom/facebook/yoga/YogaLogger;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/facebook/yoga/YogaConfigJNIBase;->mLogger:Lcom/facebook/yoga/YogaLogger;

    return-object v0
.end method

.method protected getNativePointer()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfigJNIBase;->mNativePointer:J

    return-wide v0
.end method

.method public setErrata(Lcom/facebook/yoga/YogaErrata;)V
    .locals 3
    .param p1, "errata"    # Lcom/facebook/yoga/YogaErrata;

    .line 43
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfigJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaErrata;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetErrataJNI(JI)V

    .line 44
    return-void
.end method

.method public setExperimentalFeatureEnabled(Lcom/facebook/yoga/YogaExperimentalFeature;Z)V
    .locals 3
    .param p1, "feature"    # Lcom/facebook/yoga/YogaExperimentalFeature;
    .param p2, "enabled"    # Z

    .line 31
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfigJNIBase;->mNativePointer:J

    invoke-virtual {p1}, Lcom/facebook/yoga/YogaExperimentalFeature;->intValue()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetExperimentalFeatureEnabledJNI(JIZ)V

    .line 32
    return-void
.end method

.method public setLogger(Lcom/facebook/yoga/YogaLogger;)V
    .locals 2
    .param p1, "logger"    # Lcom/facebook/yoga/YogaLogger;

    .line 51
    iput-object p1, p0, Lcom/facebook/yoga/YogaConfigJNIBase;->mLogger:Lcom/facebook/yoga/YogaLogger;

    .line 52
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfigJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetLoggerJNI(JLcom/facebook/yoga/YogaLogger;)V

    .line 53
    return-void
.end method

.method public setPointScaleFactor(F)V
    .locals 2
    .param p1, "pixelsInPoint"    # F

    .line 39
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfigJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetPointScaleFactorJNI(JF)V

    .line 40
    return-void
.end method

.method public setUseWebDefaults(Z)V
    .locals 2
    .param p1, "useWebDefaults"    # Z

    .line 35
    iget-wide v0, p0, Lcom/facebook/yoga/YogaConfigJNIBase;->mNativePointer:J

    invoke-static {v0, v1, p1}, Lcom/facebook/yoga/YogaNative;->jni_YGConfigSetUseWebDefaultsJNI(JZ)V

    .line 36
    return-void
.end method
