.class public Lcom/neovisionaries/ws/client/StatusLine;
.super Ljava/lang/Object;
.source "StatusLine.java"


# instance fields
.field private final mHttpVersion:Ljava/lang/String;

.field private final mReasonPhrase:Ljava/lang/String;

.field private final mStatusCode:I

.field private final mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "line"    # Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const-string v0, " +"

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 72
    .local v0, "elements":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 77
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/neovisionaries/ws/client/StatusLine;->mHttpVersion:Ljava/lang/String;

    .line 78
    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/neovisionaries/ws/client/StatusLine;->mStatusCode:I

    .line 79
    array-length v2, v0

    if-ne v2, v1, :cond_0

    aget-object v1, v0, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/neovisionaries/ws/client/StatusLine;->mReasonPhrase:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/neovisionaries/ws/client/StatusLine;->mString:Ljava/lang/String;

    .line 81
    return-void

    .line 74
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method


# virtual methods
.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/neovisionaries/ws/client/StatusLine;->mHttpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/neovisionaries/ws/client/StatusLine;->mReasonPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .line 104
    iget v0, p0, Lcom/neovisionaries/ws/client/StatusLine;->mStatusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/neovisionaries/ws/client/StatusLine;->mString:Ljava/lang/String;

    return-object v0
.end method
