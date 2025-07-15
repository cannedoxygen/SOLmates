.class public Lcom/facebook/soloader/recovery/CompositeRecoveryStrategy;
.super Ljava/lang/Object;
.source "CompositeRecoveryStrategy.java"

# interfaces
.implements Lcom/facebook/soloader/recovery/RecoveryStrategy;


# instance fields
.field private mCurrentStrategy:I

.field private final mStrategies:[Lcom/facebook/soloader/recovery/RecoveryStrategy;


# direct methods
.method public varargs constructor <init>([Lcom/facebook/soloader/recovery/RecoveryStrategy;)V
    .locals 1
    .param p1, "strategies"    # [Lcom/facebook/soloader/recovery/RecoveryStrategy;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/soloader/recovery/CompositeRecoveryStrategy;->mStrategies:[Lcom/facebook/soloader/recovery/RecoveryStrategy;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/soloader/recovery/CompositeRecoveryStrategy;->mCurrentStrategy:I

    .line 28
    return-void
.end method


# virtual methods
.method public recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z
    .locals 3
    .param p1, "e"    # Ljava/lang/UnsatisfiedLinkError;
    .param p2, "soSources"    # [Lcom/facebook/soloader/SoSource;

    .line 32
    nop

    :goto_0
    iget v0, p0, Lcom/facebook/soloader/recovery/CompositeRecoveryStrategy;->mCurrentStrategy:I

    iget-object v1, p0, Lcom/facebook/soloader/recovery/CompositeRecoveryStrategy;->mStrategies:[Lcom/facebook/soloader/recovery/RecoveryStrategy;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 33
    iget-object v0, p0, Lcom/facebook/soloader/recovery/CompositeRecoveryStrategy;->mStrategies:[Lcom/facebook/soloader/recovery/RecoveryStrategy;

    iget v1, p0, Lcom/facebook/soloader/recovery/CompositeRecoveryStrategy;->mCurrentStrategy:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/facebook/soloader/recovery/CompositeRecoveryStrategy;->mCurrentStrategy:I

    aget-object v0, v0, v1

    .line 34
    .local v0, "currentStrategy":Lcom/facebook/soloader/recovery/RecoveryStrategy;
    invoke-interface {v0, p1, p2}, Lcom/facebook/soloader/recovery/RecoveryStrategy;->recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35
    const/4 v1, 0x1

    return v1

    .line 37
    .end local v0    # "currentStrategy":Lcom/facebook/soloader/recovery/RecoveryStrategy;
    :cond_0
    goto :goto_0

    .line 38
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
