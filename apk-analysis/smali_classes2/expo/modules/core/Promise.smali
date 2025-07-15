.class public interface abstract Lexpo/modules/core/Promise;
.super Ljava/lang/Object;
.source "Promise.java"


# annotations
.annotation runtime Lkotlin/Deprecated;
    message = "AsyncFunction will crash when called. Use expo.modules.kotlin.Promise instead"
.end annotation


# static fields
.field public static final UNKNOWN_ERROR:Ljava/lang/String; = "E_UNKNOWN_ERROR"


# virtual methods
.method public reject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lexpo/modules/core/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    return-void
.end method

.method public abstract reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public reject(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 29
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, p2}, Lexpo/modules/core/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    return-void
.end method

.method public reject(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .line 16
    instance-of v0, p1, Lexpo/modules/core/interfaces/CodedThrowable;

    if-eqz v0, :cond_0

    .line 17
    move-object v0, p1

    check-cast v0, Lexpo/modules/core/interfaces/CodedThrowable;

    .line 18
    .local v0, "codedThrowable":Lexpo/modules/core/interfaces/CodedThrowable;
    invoke-interface {v0}, Lexpo/modules/core/interfaces/CodedThrowable;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lexpo/modules/core/interfaces/CodedThrowable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v1, v2, p1}, Lexpo/modules/core/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .end local v0    # "codedThrowable":Lexpo/modules/core/interfaces/CodedThrowable;
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "E_UNKNOWN_ERROR"

    invoke-interface {p0, v0, p1}, Lexpo/modules/core/Promise;->reject(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :goto_0
    return-void
.end method

.method public abstract resolve(Ljava/lang/Object;)V
.end method
