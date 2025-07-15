.class public Lcom/facebook/react/modules/network/ForwardingCookieHandler;
.super Ljava/net/CookieHandler;
.source "ForwardingCookieHandler.java"


# static fields
.field private static final COOKIE_HEADER:Ljava/lang/String; = "Cookie"

.field private static final VERSION_ONE_HEADER:Ljava/lang/String; = "Set-cookie2"

.field private static final VERSION_ZERO_HEADER:Ljava/lang/String; = "Set-cookie"


# instance fields
.field private final mContext:Lcom/facebook/react/bridge/ReactContext;

.field private mCookieManager:Landroid/webkit/CookieManager;


# direct methods
.method public constructor <init>(Lcom/facebook/react/bridge/ReactContext;)V
    .locals 0
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactContext;

    .line 36
    invoke-direct {p0}, Ljava/net/CookieHandler;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mContext:Lcom/facebook/react/bridge/ReactContext;

    .line 38
    return-void
.end method

.method private addCookieAsync(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 86
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-eqz v0, :cond_0

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 89
    :cond_0
    return-void
.end method

.method private getCookieManager()Landroid/webkit/CookieManager;
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieManager:Landroid/webkit/CookieManager;

    if-nez v0, :cond_0

    .line 102
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieManager:Landroid/webkit/CookieManager;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    .line 118
    .local v1, "exception":Ljava/lang/Exception;
    return-object v0

    .line 103
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 105
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    return-object v0

    .line 122
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->mCookieManager:Landroid/webkit/CookieManager;

    return-object v0
.end method

.method private static isCookieHeader(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 92
    const-string v0, "Set-cookie"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Set-cookie2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic lambda$clearCookies$0(Lcom/facebook/react/bridge/Callback;Ljava/lang/Boolean;)V
    .locals 1
    .param p0, "callback"    # Lcom/facebook/react/bridge/Callback;
    .param p1, "value"    # Ljava/lang/Boolean;

    .line 68
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addCookies(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 76
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 79
    .local v2, "cookie":Ljava/lang/String;
    invoke-direct {p0, p1, v2}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->addCookieAsync(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .end local v2    # "cookie":Ljava/lang/String;
    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/CookieManager;->flush()V

    .line 82
    return-void
.end method

.method public clearCookies(Lcom/facebook/react/bridge/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;

    .line 66
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 67
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-eqz v0, :cond_0

    .line 68
    new-instance v1, Lcom/facebook/react/modules/network/ForwardingCookieHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/bridge/Callback;)V

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 70
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 72
    return-void
.end method

.method public get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->getCookieManager()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 44
    .local v0, "cookieManager":Landroid/webkit/CookieManager;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 46
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "cookies":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 51
    :cond_1
    const-string v2, "Cookie"

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method public put(Ljava/net/URI;Ljava/util/Map;)V
    .locals 5
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "url":Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 58
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 59
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->isCookieHeader(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->addCookies(Ljava/lang/String;Ljava/util/List;)V

    .line 62
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method
