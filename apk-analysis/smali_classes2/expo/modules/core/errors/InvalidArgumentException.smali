.class public Lexpo/modules/core/errors/InvalidArgumentException;
.super Lexpo/modules/core/errors/CodedRuntimeException;
.source "InvalidArgumentException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 11
    invoke-direct {p0, p1}, Lexpo/modules/core/errors/CodedRuntimeException;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 19
    invoke-direct {p0, p1, p2}, Lexpo/modules/core/errors/CodedRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 15
    invoke-direct {p0, p1}, Lexpo/modules/core/errors/CodedRuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 24
    const-string v0, "ERR_INVALID_ARGUMENT"

    return-object v0
.end method
