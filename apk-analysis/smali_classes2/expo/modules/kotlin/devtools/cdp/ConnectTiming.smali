.class public final Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;
.super Ljava/lang/Object;
.source "CdpNetworkTypes.kt"

# interfaces
.implements Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0002\u0010\u0005J\r\u0010\u0008\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0003J\u0017\u0010\t\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;",
        "Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;",
        "requestTime",
        "Ljava/math/BigDecimal;",
        "Lexpo/modules/kotlin/devtools/cdp/MonotonicTime;",
        "(Ljava/math/BigDecimal;)V",
        "getRequestTime",
        "()Ljava/math/BigDecimal;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toJSONObject",
        "Lorg/json/JSONObject;",
        "toString",
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


# instance fields
.field private final requestTime:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 1
    .param p1, "requestTime"    # Ljava/math/BigDecimal;

    const-string v0, "requestTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;->requestTime:Ljava/math/BigDecimal;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;Ljava/math/BigDecimal;ILjava/lang/Object;)Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;->requestTime:Ljava/math/BigDecimal;

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;->copy(Ljava/math/BigDecimal;)Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;->requestTime:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final copy(Ljava/math/BigDecimal;)Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;
    .locals 1

    const-string v0, "requestTime"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;-><init>(Ljava/math/BigDecimal;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;

    iget-object v3, p0, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;->requestTime:Ljava/math/BigDecimal;

    iget-object v1, v1, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;->requestTime:Ljava/math/BigDecimal;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getRequestTime()Ljava/math/BigDecimal;
    .locals 1

    .line 40
    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;->requestTime:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;->requestTime:Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->hashCode()I

    move-result v0

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .local v1, "$this$toJSONObject_u24lambda_u240":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 43
    .local v2, "$i$a$-apply-ConnectTiming$toJSONObject$1":I
    const-string v3, "requestTime"

    iget-object v4, p0, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;->requestTime:Ljava/math/BigDecimal;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    nop

    .line 42
    .end local v1    # "$this$toJSONObject_u24lambda_u240":Lorg/json/JSONObject;
    .end local v2    # "$i$a$-apply-ConnectTiming$toJSONObject$1":I
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/ConnectTiming;->requestTime:Ljava/math/BigDecimal;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectTiming(requestTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
