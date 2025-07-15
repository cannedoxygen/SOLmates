.class public Lcom/facebook/soloader/recovery/WaitForAsyncInit;
.super Ljava/lang/Object;
.source "WaitForAsyncInit.java"

# interfaces
.implements Lcom/facebook/soloader/recovery/RecoveryStrategy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public recover(Ljava/lang/UnsatisfiedLinkError;[Lcom/facebook/soloader/SoSource;)Z
    .locals 6
    .param p1, "e"    # Ljava/lang/UnsatisfiedLinkError;
    .param p2, "soSources"    # [Lcom/facebook/soloader/SoSource;

    .line 27
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 28
    .local v2, "soSource":Lcom/facebook/soloader/SoSource;
    instance-of v3, v2, Lcom/facebook/soloader/AsyncInitSoSource;

    if-eqz v3, :cond_0

    .line 29
    move-object v3, v2

    check-cast v3, Lcom/facebook/soloader/AsyncInitSoSource;

    .line 30
    .local v3, "source":Lcom/facebook/soloader/AsyncInitSoSource;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Waiting on SoSource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/facebook/soloader/SoSource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SoLoader"

    invoke-static {v5, v4}, Lcom/facebook/soloader/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-interface {v3}, Lcom/facebook/soloader/AsyncInitSoSource;->waitUntilInitCompleted()V

    .line 27
    .end local v2    # "soSource":Lcom/facebook/soloader/SoSource;
    .end local v3    # "source":Lcom/facebook/soloader/AsyncInitSoSource;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
