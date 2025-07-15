.class public Lcom/facebook/react/bridge/ReactSoftExceptionLogger;
.super Ljava/lang/Object;
.source "ReactSoftExceptionLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/bridge/ReactSoftExceptionLogger$ReactSoftExceptionListener;
    }
.end annotation


# static fields
.field private static final sListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/bridge/ReactSoftExceptionLogger$ReactSoftExceptionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->sListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcom/facebook/react/bridge/ReactSoftExceptionLogger$ReactSoftExceptionListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/facebook/react/bridge/ReactSoftExceptionLogger$ReactSoftExceptionListener;

    .line 28
    sget-object v0, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    sget-object v0, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method

.method public static clearListeners()V
    .locals 1

    .line 40
    sget-object v0, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 41
    return-void
.end method

.method private static logNoThrowSoftExceptionWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/facebook/react/bridge/ReactNoCrashSoftException;

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/ReactNoCrashSoftException;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method

.method public static logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 51
    sget-object v0, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 52
    sget-object v0, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->sListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/bridge/ReactSoftExceptionLogger$ReactSoftExceptionListener;

    .line 53
    .local v1, "listener":Lcom/facebook/react/bridge/ReactSoftExceptionLogger$ReactSoftExceptionListener;
    invoke-interface {v1, p0, p1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger$ReactSoftExceptionListener;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    .end local v1    # "listener":Lcom/facebook/react/bridge/ReactSoftExceptionLogger$ReactSoftExceptionListener;
    goto :goto_0

    :cond_0
    goto :goto_1

    .line 56
    :cond_1
    const-string v0, "Unhandled SoftException"

    invoke-static {p0, v0, p1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    :goto_1
    return-void
.end method

.method public static logSoftExceptionVerbose(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0, p1}, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->logSoftException(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    return-void
.end method

.method public static removeListener(Lcom/facebook/react/bridge/ReactSoftExceptionLogger$ReactSoftExceptionListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/facebook/react/bridge/ReactSoftExceptionLogger$ReactSoftExceptionListener;

    .line 35
    sget-object v0, Lcom/facebook/react/bridge/ReactSoftExceptionLogger;->sListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    return-void
.end method
