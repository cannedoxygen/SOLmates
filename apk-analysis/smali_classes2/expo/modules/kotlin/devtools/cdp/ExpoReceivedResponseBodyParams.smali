.class public final Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;
.super Ljava/lang/Object;
.source "CdpNetworkTypes.kt"

# interfaces
.implements Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007B!\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\r\u0010\u0014\u001a\u00060\u0003j\u0002`\u0004H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\tH\u00c6\u0003J+\u0010\u0017\u001a\u00020\u00002\u000c\u0008\u0002\u0010\u0002\u001a\u00060\u0003j\u0002`\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\u0008\u0010\u001d\u001a\u00020\u001eH\u0016J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001R\u001a\u0010\u0008\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0015\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0010\u00a8\u0006 "
    }
    d2 = {
        "Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;",
        "Lexpo/modules/kotlin/devtools/cdp/JsonSerializable;",
        "requestId",
        "",
        "Lexpo/modules/kotlin/devtools/cdp/RequestId;",
        "body",
        "Lokhttp3/ResponseBody;",
        "(Ljava/lang/String;Lokhttp3/ResponseBody;)V",
        "base64Encoded",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Z)V",
        "getBase64Encoded",
        "()Z",
        "setBase64Encoded",
        "(Z)V",
        "getBody",
        "()Ljava/lang/String;",
        "setBody",
        "(Ljava/lang/String;)V",
        "getRequestId",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
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
.field private base64Encoded:Z

.field private body:Ljava/lang/String;

.field private final requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;
    .param p3, "base64Encoded"    # Z

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput-object p1, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->requestId:Ljava/lang/String;

    .line 227
    iput-object p2, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->body:Ljava/lang/String;

    .line 228
    iput-boolean p3, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->base64Encoded:Z

    .line 225
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokhttp3/ResponseBody;)V
    .locals 5
    .param p1, "requestId"    # Ljava/lang/String;
    .param p2, "body"    # Lokhttp3/ResponseBody;

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    nop

    .line 234
    nop

    .line 235
    nop

    .line 236
    nop

    .line 233
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    .line 239
    .local v0, "contentType":Lokhttp3/MediaType;
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v4, "text"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/MediaType;->type()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v3, "application"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lokhttp3/MediaType;->subtype()Ljava/lang/String;

    move-result-object v2

    const-string v3, "json"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v4

    .line 240
    .local v2, "isText":Z
    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_4
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v3

    invoke-interface {v3}, Lokio/BufferedSource;->readByteString()Lokio/ByteString;

    move-result-object v3

    invoke-virtual {v3}, Lokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, "bodyString":Ljava/lang/String;
    :goto_3
    iput-object v3, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->body:Ljava/lang/String;

    .line 243
    if-nez v2, :cond_5

    move v1, v4

    :cond_5
    iput-boolean v1, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->base64Encoded:Z

    .line 244
    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->requestId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->body:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->base64Encoded:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->copy(Ljava/lang/String;Ljava/lang/String;Z)Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->base64Encoded:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Z)Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "body"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;

    iget-object v3, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->requestId:Ljava/lang/String;

    iget-object v4, v1, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->requestId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->body:Ljava/lang/String;

    iget-object v4, v1, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->body:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->base64Encoded:Z

    iget-boolean v1, v1, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->base64Encoded:Z

    if-eq v3, v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getBase64Encoded()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->base64Encoded:Z

    return v0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 1

    .line 227
    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->body:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->requestId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->body:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->base64Encoded:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    return v0
.end method

.method public final setBase64Encoded(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 228
    iput-boolean p1, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->base64Encoded:Z

    return-void
.end method

.method public final setBody(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    iput-object p1, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->body:Ljava/lang/String;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 5

    .line 246
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v0

    .local v1, "$this$toJSONObject_u24lambda_u240":Lorg/json/JSONObject;
    const/4 v2, 0x0

    .line 247
    .local v2, "$i$a$-apply-ExpoReceivedResponseBodyParams$toJSONObject$1":I
    const-string v3, "requestId"

    iget-object v4, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->requestId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 248
    const-string v3, "body"

    iget-object v4, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->body:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    const-string v3, "base64Encoded"

    iget-boolean v4, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->base64Encoded:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 250
    nop

    .line 246
    .end local v1    # "$this$toJSONObject_u24lambda_u240":Lorg/json/JSONObject;
    .end local v2    # "$i$a$-apply-ExpoReceivedResponseBodyParams$toJSONObject$1":I
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->requestId:Ljava/lang/String;

    iget-object v1, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->body:Ljava/lang/String;

    iget-boolean v2, p0, Lexpo/modules/kotlin/devtools/cdp/ExpoReceivedResponseBodyParams;->base64Encoded:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ExpoReceivedResponseBodyParams(requestId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", body="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", base64Encoded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
