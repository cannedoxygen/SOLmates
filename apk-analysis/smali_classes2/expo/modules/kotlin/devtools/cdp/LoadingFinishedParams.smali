.class public final Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;
.super Ljava/lang/Object;
.source "CdpNetworkTypes.kt"

# interfaces
.implements Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\tB%\u0012\n\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006\u0012\n\u0010\n\u001a\u00060\u0003j\u0002`\u000b\u0012\u0006\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000eJ\r\u0010\u0015\u001a\u00060\u0005j\u0002`\u0006H\u00c6\u0003J\r\u0010\u0016\u001a\u00060\u0003j\u0002`\u000bH\u00c6\u0003J\t\u0010\u0017\u001a\u00020\rH\u00c6\u0003J/\u0010\u0018\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0004\u001a\u00060\u0005j\u0002`\u00062\u000c\u0008\u0002\u0010\n\u001a\u00060\u0003j\u0002`\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001J\u0008\u0010\u001f\u001a\u00020 H\u0016J\t\u0010!\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0015\u0010\u0004\u001a\u00060\u0005j\u0002`\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0015\u0010\n\u001a\u00060\u0003j\u0002`\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\""
    }
    d2 = {
        "Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;",
        "Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;",
        "now",
        "Ljava/math/BigDecimal;",
        "requestId",
        "",
        "Lexpo/modules/kotlin/devtools/cdp/RequestId;",
        "response",
        "Lokhttp3/Response;",
        "(Ljava/math/BigDecimal;Ljava/lang/String;Lokhttp3/Response;)V",
        "timestamp",
        "Lexpo/modules/kotlin/devtools/cdp/MonotonicTime;",
        "encodedDataLength",
        "",
        "(Ljava/lang/String;Ljava/math/BigDecimal;J)V",
        "getEncodedDataLength",
        "()J",
        "getRequestId",
        "()Ljava/lang/String;",
        "getTimestamp",
        "()Ljava/math/BigDecimal;",
        "component1",
        "component2",
        "component3",
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
.field private final encodedDataLength:J

.field private final requestId:Ljava/lang/String;

.field private final timestamp:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/math/BigDecimal;J)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "timestamp"    # Ljava/math/BigDecimal;
    .param p3, "encodedDataLength"    # J

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->requestId:Ljava/lang/String;

    .line 207
    iput-object p2, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->timestamp:Ljava/math/BigDecimal;

    .line 208
    iput-wide p3, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->encodedDataLength:J

    .line 205
    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;Ljava/lang/String;Lokhttp3/Response;)V
    .locals 2
    .param p1, "now"    # Ljava/math/BigDecimal;
    .param p2, "requestId"    # Ljava/lang/String;
    .param p3, "response"    # Lokhttp3/Response;

    const-string v0, "now"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    nop

    .line 211
    nop

    .line 212
    nop

    .line 213
    invoke-virtual {p3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 210
    :goto_0
    invoke-direct {p0, p2, p1, v0, v1}, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;J)V

    .line 214
    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;Ljava/lang/String;Ljava/math/BigDecimal;JILjava/lang/Object;)Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->requestId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->timestamp:Ljava/math/BigDecimal;

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->encodedDataLength:J

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->copy(Ljava/lang/String;Ljava/math/BigDecimal;J)Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/math/BigDecimal;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->timestamp:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->encodedDataLength:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/String;Ljava/math/BigDecimal;J)Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "timestamp"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;-><init>(Ljava/lang/String;Ljava/math/BigDecimal;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;

    iget-object v3, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->requestId:Ljava/lang/String;

    iget-object v4, v1, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->requestId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->timestamp:Ljava/math/BigDecimal;

    iget-object v4, v1, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->timestamp:Ljava/math/BigDecimal;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->encodedDataLength:J

    iget-wide v5, v1, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->encodedDataLength:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEncodedDataLength()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->encodedDataLength:J

    return-wide v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()Ljava/math/BigDecimal;
    .locals 1

    .line 207
    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->timestamp:Ljava/math/BigDecimal;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->requestId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->timestamp:Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->encodedDataLength:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 6

    .line 217
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .local v1, "$this$toJSONObject_u24lambda_u240":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 218
    .local v2, "$i$a$-apply-LoadingFinishedParams$toJSONObject$1":I
    const-string v3, "requestId"

    iget-object v4, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->requestId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v3, "timestamp"

    iget-object v4, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->timestamp:Ljava/math/BigDecimal;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v3, "encodedDataLength"

    iget-wide v4, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->encodedDataLength:J

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 221
    nop

    .line 217
    .end local v1    # "$this$toJSONObject_u24lambda_u240":Lorg/json/JSONObject;
    .end local v2    # "$i$a$-apply-LoadingFinishedParams$toJSONObject$1":I
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->requestId:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->timestamp:Ljava/math/BigDecimal;

    iget-wide v2, p0, Lexpo/modules/kotlin/devtools/cdp/LoadingFinishedParams;->encodedDataLength:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoadingFinishedParams(requestId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", timestamp="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", encodedDataLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
