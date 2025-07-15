.class public Lcom/neovisionaries/ws/client/WebSocketExtension;
.super Ljava/lang/Object;
.source "WebSocketExtension.java"


# static fields
.field public static final PERMESSAGE_DEFLATE:Ljava/lang/String; = "permessage-deflate"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/neovisionaries/ws/client/WebSocketExtension;)V
    .locals 2
    .param p1, "source"    # Lcom/neovisionaries/ws/client/WebSocketExtension;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketExtension;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mName:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/neovisionaries/ws/client/WebSocketExtension;->getParameters()Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    .line 88
    return-void

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'source\' is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iput-object p1, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mName:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    .line 64
    return-void

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'name\' is not a valid token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createInstance(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 327
    const-string v0, "permessage-deflate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    new-instance v0, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/PerMessageDeflateExtension;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 332
    :cond_0
    new-instance v0, Lcom/neovisionaries/ws/client/WebSocketExtension;

    invoke-direct {v0, p0}, Lcom/neovisionaries/ws/client/WebSocketExtension;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static extractValue([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "pair"    # [Ljava/lang/String;

    .line 316
    array-length v0, p0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 318
    const/4 v0, 0x0

    return-object v0

    .line 321
    :cond_0
    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-static {v0}, Lcom/neovisionaries/ws/client/Token;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;
    .locals 9
    .param p0, "string"    # Ljava/lang/String;

    .line 244
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 246
    return-object v0

    .line 250
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\s*;\\s*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "elements":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_1

    .line 255
    return-object v0

    .line 259
    :cond_1
    const/4 v2, 0x0

    aget-object v3, v1, v2

    .line 261
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 264
    return-object v0

    .line 268
    :cond_2
    invoke-static {v3}, Lcom/neovisionaries/ws/client/WebSocketExtension;->createInstance(Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;

    move-result-object v0

    .line 271
    .local v0, "extension":Lcom/neovisionaries/ws/client/WebSocketExtension;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_7

    .line 274
    aget-object v5, v1, v4

    const-string v6, "\\s*=\\s*"

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "pair":[Ljava/lang/String;
    array-length v6, v5

    if-eqz v6, :cond_6

    aget-object v6, v5, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 280
    goto :goto_1

    .line 284
    :cond_3
    aget-object v6, v5, v2

    .line 286
    .local v6, "key":Ljava/lang/String;
    invoke-static {v6}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 290
    goto :goto_1

    .line 294
    :cond_4
    invoke-static {v5}, Lcom/neovisionaries/ws/client/WebSocketExtension;->extractValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, "value":Ljava/lang/String;
    if-eqz v7, :cond_5

    .line 298
    invoke-static {v7}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 302
    goto :goto_1

    .line 307
    :cond_5
    invoke-virtual {v0, v6, v7}, Lcom/neovisionaries/ws/client/WebSocketExtension;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;

    .line 271
    .end local v5    # "pair":[Ljava/lang/String;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 310
    .end local v4    # "i":I
    :cond_7
    return-object v0
.end method


# virtual methods
.method public containsParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    return-object v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/neovisionaries/ws/client/WebSocketExtension;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 170
    invoke-static {p1}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    if-eqz p2, :cond_1

    .line 180
    invoke-static {p2}, Lcom/neovisionaries/ws/client/Token;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'value\' is not a valid token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    return-object p0

    .line 173
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'key\' is not a valid token."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/neovisionaries/ws/client/WebSocketExtension;->mParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 204
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 208
    .local v3, "value":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 211
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "value":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/neovisionaries/ws/client/WebSocketException;
        }
    .end annotation

    .line 224
    return-void
.end method
