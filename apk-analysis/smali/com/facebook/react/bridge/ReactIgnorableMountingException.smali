.class public Lcom/facebook/react/bridge/ReactIgnorableMountingException;
.super Ljava/lang/RuntimeException;
.source "ReactIgnorableMountingException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 25
    return-void
.end method

.method public static isIgnorable(Ljava/lang/Throwable;)Z
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 28
    nop

    :goto_0
    if-eqz p0, :cond_1

    .line 29
    instance-of v0, p0, Lcom/facebook/react/bridge/ReactIgnorableMountingException;

    if-eqz v0, :cond_0

    .line 30
    const/4 v0, 0x1

    return v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    .line 34
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
