.class public Lexpo/modules/notifications/notifications/channels/InvalidVibrationPatternException;
.super Lexpo/modules/core/errors/CodedRuntimeException;
.source "InvalidVibrationPatternException.java"


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 2
    .param p1, "invalidValueKey"    # I
    .param p2, "invalidValue"    # Ljava/lang/Object;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid value in vibration pattern, expected all elements to be numbers, got: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " under "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/core/errors/CodedRuntimeException;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 12
    const-string v0, "ERR_INVALID_VIBRATION_PATTERN"

    return-object v0
.end method
