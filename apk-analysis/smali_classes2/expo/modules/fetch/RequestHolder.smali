.class final Lexpo/modules/fetch/RequestHolder;
.super Ljava/lang/Object;
.source "NativeRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0082\u0008\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000b\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\t\u0010\u000f\u001a\u00020\u0010H\u00d6\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u00a8\u0006\u0011"
    }
    d2 = {
        "Lexpo/modules/fetch/RequestHolder;",
        "",
        "request",
        "Lokhttp3/Request;",
        "(Lokhttp3/Request;)V",
        "getRequest",
        "()Lokhttp3/Request;",
        "setRequest",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "expo_debug"
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
.field private request:Lokhttp3/Request;


# direct methods
.method public constructor <init>(Lokhttp3/Request;)V
    .locals 0
    .param p1, "request"    # Lokhttp3/Request;

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/fetch/RequestHolder;->request:Lokhttp3/Request;

    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/fetch/RequestHolder;Lokhttp3/Request;ILjava/lang/Object;)Lexpo/modules/fetch/RequestHolder;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lexpo/modules/fetch/RequestHolder;->request:Lokhttp3/Request;

    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/fetch/RequestHolder;->copy(Lokhttp3/Request;)Lexpo/modules/fetch/RequestHolder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lokhttp3/Request;
    .locals 1

    iget-object v0, p0, Lexpo/modules/fetch/RequestHolder;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public final copy(Lokhttp3/Request;)Lexpo/modules/fetch/RequestHolder;
    .locals 1

    new-instance v0, Lexpo/modules/fetch/RequestHolder;

    invoke-direct {v0, p1}, Lexpo/modules/fetch/RequestHolder;-><init>(Lokhttp3/Request;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/fetch/RequestHolder;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lexpo/modules/fetch/RequestHolder;

    iget-object v3, p0, Lexpo/modules/fetch/RequestHolder;->request:Lokhttp3/Request;

    iget-object v1, v1, Lexpo/modules/fetch/RequestHolder;->request:Lokhttp3/Request;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getRequest()Lokhttp3/Request;
    .locals 1

    .line 15
    iget-object v0, p0, Lexpo/modules/fetch/RequestHolder;->request:Lokhttp3/Request;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lexpo/modules/fetch/RequestHolder;->request:Lokhttp3/Request;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lexpo/modules/fetch/RequestHolder;->request:Lokhttp3/Request;

    invoke-virtual {v0}, Lokhttp3/Request;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final setRequest(Lokhttp3/Request;)V
    .locals 0
    .param p1, "<set-?>"    # Lokhttp3/Request;

    .line 15
    iput-object p1, p0, Lexpo/modules/fetch/RequestHolder;->request:Lokhttp3/Request;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lexpo/modules/fetch/RequestHolder;->request:Lokhttp3/Request;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RequestHolder(request="

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
