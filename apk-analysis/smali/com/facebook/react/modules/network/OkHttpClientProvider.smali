.class public Lcom/facebook/react/modules/network/OkHttpClientProvider;
.super Ljava/lang/Object;
.source "OkHttpClientProvider.java"


# static fields
.field private static sClient:Lokhttp3/OkHttpClient;

.field private static sFactory:Lcom/facebook/react/modules/network/OkHttpClientFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 41
    sget-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sFactory:Lcom/facebook/react/modules/network/OkHttpClientFactory;

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sFactory:Lcom/facebook/react/modules/network/OkHttpClientFactory;

    invoke-interface {v0}, Lcom/facebook/react/modules/network/OkHttpClientFactory;->createNewNetworkModuleClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 48
    sget-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sFactory:Lcom/facebook/react/modules/network/OkHttpClientFactory;

    if-eqz v0, :cond_0

    .line 49
    sget-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sFactory:Lcom/facebook/react/modules/network/OkHttpClientFactory;

    invoke-interface {v0}, Lcom/facebook/react/modules/network/OkHttpClientFactory;->createNewNetworkModuleClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    invoke-static {p0}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClientBuilder(Landroid/content/Context;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public static createClientBuilder()Lokhttp3/OkHttpClient$Builder;
    .locals 4

    .line 56
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 59
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 60
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/facebook/react/modules/network/ReactCookieJarContainer;

    invoke-direct {v1}, Lcom/facebook/react/modules/network/ReactCookieJarContainer;-><init>()V

    .line 61
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 63
    .local v0, "client":Lokhttp3/OkHttpClient$Builder;
    return-object v0
.end method

.method public static createClientBuilder(Landroid/content/Context;)Lokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 67
    const/high16 v0, 0xa00000

    .line 68
    .local v0, "cacheSize":I
    invoke-static {p0, v0}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClientBuilder(Landroid/content/Context;I)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    return-object v1
.end method

.method public static createClientBuilder(Landroid/content/Context;I)Lokhttp3/OkHttpClient$Builder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cacheSize"    # I

    .line 72
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClientBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 74
    .local v0, "client":Lokhttp3/OkHttpClient$Builder;
    if-nez p1, :cond_0

    .line 75
    return-object v0

    .line 78
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "http-cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .local v1, "cacheDirectory":Ljava/io/File;
    new-instance v2, Lokhttp3/Cache;

    int-to-long v3, p1

    invoke-direct {v2, v1, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    .line 81
    .local v2, "cache":Lokhttp3/Cache;
    invoke-virtual {v0, v2}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    return-object v3
.end method

.method public static getOkHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    .line 34
    sget-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sClient:Lokhttp3/OkHttpClient;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    sput-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sClient:Lokhttp3/OkHttpClient;

    .line 37
    :cond_0
    sget-object v0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public static setOkHttpClientFactory(Lcom/facebook/react/modules/network/OkHttpClientFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/facebook/react/modules/network/OkHttpClientFactory;

    .line 30
    sput-object p0, Lcom/facebook/react/modules/network/OkHttpClientProvider;->sFactory:Lcom/facebook/react/modules/network/OkHttpClientFactory;

    .line 31
    return-void
.end method
