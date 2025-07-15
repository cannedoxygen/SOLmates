.class public final Lexpo/modules/kotlin/exception/ArgumentCastException$Companion;
.super Ljava/lang/Object;
.source "CodedException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/exception/ArgumentCastException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lexpo/modules/kotlin/exception/ArgumentCastException$Companion;",
        "",
        "()V",
        "formatOrdinalNumber",
        "",
        "number",
        "",
        "expo-modules-core_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/kotlin/exception/ArgumentCastException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final formatOrdinalNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # I

    .line 181
    nop

    .line 182
    rem-int/lit8 v0, p1, 0x64

    const/16 v1, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v1, v0, :cond_0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    move v3, v2

    :cond_0
    const-string v0, "th"

    if-eqz v3, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    rem-int/lit8 v1, p1, 0xa

    if-ne v1, v2, :cond_2

    const-string v0, "st"

    goto :goto_0

    .line 184
    :cond_2
    rem-int/lit8 v1, p1, 0xa

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    const-string v0, "nd"

    goto :goto_0

    .line 185
    :cond_3
    rem-int/lit8 v1, p1, 0xa

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    const-string v0, "rd"

    goto :goto_0

    .line 186
    :cond_4
    nop

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 187
    return-object v0
.end method
