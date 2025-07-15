.class public final Lcom/facebook/react/modules/network/NetworkingModule;
.super Lcom/facebook/fbreact/specs/NativeNetworkingAndroidSpec;
.source "NetworkingModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "Networking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;,
        Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;,
        Lcom/facebook/react/modules/network/NetworkingModule$CustomClientBuilder;,
        Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;
    }
.end annotation


# static fields
.field private static final CHUNK_TIMEOUT_NS:I = 0x5f5e100

.field private static final CONTENT_ENCODING_HEADER_NAME:Ljava/lang/String; = "content-encoding"

.field private static final CONTENT_TYPE_HEADER_NAME:Ljava/lang/String; = "content-type"

.field private static final MAX_CHUNK_SIZE_BETWEEN_FLUSHES:I = 0x2000

.field private static final REQUEST_BODY_KEY_BASE64:Ljava/lang/String; = "base64"

.field private static final REQUEST_BODY_KEY_FORMDATA:Ljava/lang/String; = "formData"

.field private static final REQUEST_BODY_KEY_STRING:Ljava/lang/String; = "string"

.field private static final REQUEST_BODY_KEY_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "Networking"

.field private static final USER_AGENT_HEADER_NAME:Ljava/lang/String; = "user-agent"

.field private static customClientBuilder:Lcom/facebook/react/modules/network/CustomClientBuilder;


# instance fields
.field private final mClient:Lokhttp3/OkHttpClient;

.field private final mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

.field private final mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

.field private final mDefaultUserAgent:Ljava/lang/String;

.field private final mRequestBodyHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponseHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mShuttingDown:Z

.field private final mUriHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$iYO5sI7d-BLgkQ_xuUT8eyrinkE(Lcom/facebook/react/modules/network/NetworkingModule;Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;ILokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/react/modules/network/NetworkingModule;->lambda$sendRequestInternal$0(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;ILokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClient(Lcom/facebook/react/modules/network/NetworkingModule;)Lokhttp3/OkHttpClient;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResponseHandlers(Lcom/facebook/react/modules/network/NetworkingModule;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShuttingDown(Lcom/facebook/react/modules/network/NetworkingModule;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mShuttingDown:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mreadWithProgress(Lcom/facebook/react/modules/network/NetworkingModule;ILokhttp3/ResponseBody;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/facebook/react/modules/network/NetworkingModule;->readWithProgress(ILokhttp3/ResponseBody;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveRequest(Lcom/facebook/react/modules/network/NetworkingModule;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/facebook/react/modules/network/NetworkingModule;->removeRequest(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smshouldDispatch(JJ)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/modules/network/NetworkingModule;->shouldDispatch(JJ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smtranslateHeaders(Lokhttp3/Headers;)Lcom/facebook/react/bridge/WritableMap;
    .locals 0

    invoke-static {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->translateHeaders(Lokhttp3/Headers;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/react/modules/network/NetworkingModule;->customClientBuilder:Lcom/facebook/react/modules/network/CustomClientBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    .line 146
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "defaultUserAgent"    # Ljava/lang/String;

    .line 165
    invoke-static {p1}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V

    .line 166
    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;)V
    .locals 1
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "defaultUserAgent"    # Ljava/lang/String;
    .param p3, "client"    # Lokhttp3/OkHttpClient;

    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V
    .locals 4
    .param p1, "reactContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p2, "defaultUserAgent"    # Ljava/lang/String;
    .param p3, "client"    # Lokhttp3/OkHttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/lang/String;",
            "Lokhttp3/OkHttpClient;",
            "Ljava/util/List<",
            "Lcom/facebook/react/modules/network/NetworkInterceptorCreator;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p4, "networkInterceptorCreators":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/modules/network/NetworkInterceptorCreator;>;"
    invoke-direct {p0, p1}, Lcom/facebook/fbreact/specs/NativeNetworkingAndroidSpec;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    .line 116
    if-eqz p4, :cond_1

    .line 117
    invoke-virtual {p3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 118
    .local v0, "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/network/NetworkInterceptorCreator;

    .line 119
    .local v2, "networkInterceptorCreator":Lcom/facebook/react/modules/network/NetworkInterceptorCreator;
    invoke-interface {v2}, Lcom/facebook/react/modules/network/NetworkInterceptorCreator;->create()Lokhttp3/Interceptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 120
    .end local v2    # "networkInterceptorCreator":Lcom/facebook/react/modules/network/NetworkInterceptorCreator;
    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p3

    .line 123
    .end local v0    # "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    :cond_1
    iput-object p3, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    .line 124
    new-instance v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    .line 125
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/network/CookieJarContainer;

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mShuttingDown:Z

    .line 127
    iput-object p2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mDefaultUserAgent:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List<",
            "Lcom/facebook/react/modules/network/NetworkInterceptorCreator;",
            ">;)V"
        }
    .end annotation

    .line 156
    .local p2, "networkInterceptorCreators":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/react/modules/network/NetworkInterceptorCreator;>;"
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V

    .line 157
    return-void
.end method

.method private declared-synchronized addRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    monitor-enter p0

    .line 632
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    monitor-exit p0

    return-void

    .line 631
    .end local p0    # "this":Lcom/facebook/react/modules/network/NetworkingModule;
    .end local p1    # "requestId":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private static applyCustomBuilder(Lokhttp3/OkHttpClient$Builder;)V
    .locals 1
    .param p0, "builder"    # Lokhttp3/OkHttpClient$Builder;

    .line 182
    sget-object v0, Lcom/facebook/react/modules/network/NetworkingModule;->customClientBuilder:Lcom/facebook/react/modules/network/CustomClientBuilder;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/facebook/react/modules/network/NetworkingModule;->customClientBuilder:Lcom/facebook/react/modules/network/CustomClientBuilder;

    invoke-interface {v0, p0}, Lcom/facebook/react/modules/network/CustomClientBuilder;->apply(Lokhttp3/OkHttpClient$Builder;)V

    .line 185
    :cond_0
    return-void
.end method

.method private declared-synchronized cancelAllRequests()V
    .locals 3

    monitor-enter p0

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 641
    .local v1, "requestId":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/facebook/react/modules/network/NetworkingModule;->cancelRequest(I)V

    .line 642
    .end local v1    # "requestId":Ljava/lang/Integer;
    goto :goto_0

    .line 643
    .end local p0    # "this":Lcom/facebook/react/modules/network/NetworkingModule;
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    monitor-exit p0

    return-void

    .line 639
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private cancelRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .line 671
    new-instance v0, Lcom/facebook/react/modules/network/NetworkingModule$4;

    invoke-virtual {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/react/modules/network/NetworkingModule$4;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;Lcom/facebook/react/bridge/ReactContext;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 676
    invoke-virtual {v0, v1}, Lcom/facebook/react/modules/network/NetworkingModule$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 677
    return-void
.end method

.method private constructMultipartBody(Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;I)Lokhttp3/MultipartBody$Builder;
    .locals 16
    .param p1, "body"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "requestId"    # I

    .line 692
    move/from16 v0, p3

    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 693
    .local v1, "multipartBuilder":Lokhttp3/MultipartBody$Builder;
    invoke-static/range {p2 .. p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 695
    nop

    .line 696
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v2

    .line 698
    .local v2, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface/range {p1 .. p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_6

    .line 699
    move-object/from16 v5, p1

    invoke-interface {v5, v3}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v6

    .line 702
    .local v6, "bodyPart":Lcom/facebook/react/bridge/ReadableMap;
    const-string v7, "headers"

    invoke-interface {v6, v7}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v7

    .line 703
    .local v7, "headersArray":Lcom/facebook/react/bridge/ReadableArray;
    const/4 v8, 0x0

    move-object/from16 v9, p0

    invoke-direct {v9, v7, v8}, Lcom/facebook/react/modules/network/NetworkingModule;->extractHeaders(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lokhttp3/Headers;

    move-result-object v10

    .line 704
    .local v10, "headers":Lokhttp3/Headers;
    if-nez v10, :cond_0

    .line 705
    const-string v11, "Missing or invalid header format for FormData part."

    invoke-static {v2, v0, v11, v8}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 710
    return-object v8

    .line 712
    :cond_0
    const/4 v11, 0x0

    .line 713
    .local v11, "partContentType":Lokhttp3/MediaType;
    const-string v12, "content-type"

    invoke-virtual {v10, v12}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 714
    .local v13, "partContentTypeStr":Ljava/lang/String;
    if-eqz v13, :cond_1

    .line 715
    invoke-static {v13}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v11

    .line 718
    invoke-virtual {v10}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v14

    invoke-virtual {v14, v12}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v12

    invoke-virtual {v12}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v10

    .line 721
    :cond_1
    const-string/jumbo v12, "string"

    invoke-interface {v6, v12}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 722
    invoke-interface {v6, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 723
    .local v8, "bodyValue":Ljava/lang/String;
    invoke-static {v11, v8}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v12

    invoke-virtual {v1, v10, v12}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 724
    .end local v8    # "bodyValue":Ljava/lang/String;
    goto :goto_1

    :cond_2
    const-string/jumbo v12, "uri"

    invoke-interface {v6, v12}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 725
    if-nez v11, :cond_3

    .line 726
    const-string v12, "Binary FormData part needs a content-type header."

    invoke-static {v2, v0, v12, v8}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 731
    return-object v8

    .line 733
    :cond_3
    invoke-interface {v6, v12}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 734
    .local v12, "fileContentUriStr":Ljava/lang/String;
    nop

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v14

    invoke-static {v14, v12}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 736
    .local v14, "fileInputStream":Ljava/io/InputStream;
    if-nez v14, :cond_4

    .line 737
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not retrieve file for uri "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v15, 0x0

    invoke-static {v2, v0, v8, v15}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 742
    return-object v15

    .line 744
    :cond_4
    invoke-static {v11, v14}, Lcom/facebook/react/modules/network/RequestBodyUtil;->create(Lokhttp3/MediaType;Ljava/io/InputStream;)Lokhttp3/RequestBody;

    move-result-object v8

    invoke-virtual {v1, v10, v8}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 745
    .end local v12    # "fileContentUriStr":Ljava/lang/String;
    .end local v14    # "fileInputStream":Ljava/io/InputStream;
    goto :goto_1

    .line 746
    :cond_5
    move-object v15, v8

    const-string v8, "Unrecognized FormData part."

    invoke-static {v2, v0, v8, v15}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 698
    .end local v6    # "bodyPart":Lcom/facebook/react/bridge/ReadableMap;
    .end local v7    # "headersArray":Lcom/facebook/react/bridge/ReadableArray;
    .end local v10    # "headers":Lokhttp3/Headers;
    .end local v11    # "partContentType":Lokhttp3/MediaType;
    .end local v13    # "partContentTypeStr":Ljava/lang/String;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v9, p0

    move-object/from16 v5, p1

    .line 750
    .end local v3    # "i":I
    .end local v4    # "size":I
    return-object v1
.end method

.method private extractHeaders(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lokhttp3/Headers;
    .locals 9
    .param p1, "headersArray"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p2, "requestData"    # Lcom/facebook/react/bridge/ReadableMap;

    .line 758
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 759
    return-object v0

    .line 761
    :cond_0
    new-instance v1, Lokhttp3/Headers$Builder;

    invoke-direct {v1}, Lokhttp3/Headers$Builder;-><init>()V

    .line 762
    .local v1, "headersBuilder":Lokhttp3/Headers$Builder;
    const/4 v2, 0x0

    .local v2, "headersIdx":I
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_5

    .line 763
    invoke-interface {p1, v2}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v6

    .line 764
    .local v6, "header":Lcom/facebook/react/bridge/ReadableArray;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    goto :goto_2

    .line 767
    :cond_1
    invoke-interface {v6, v4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/react/modules/network/HeaderUtil;->stripHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 768
    .local v4, "headerName":Ljava/lang/String;
    invoke-interface {v6, v5}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 769
    .local v5, "headerValue":Ljava/lang/String;
    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_1

    .line 772
    :cond_2
    invoke-virtual {v1, v4, v5}, Lokhttp3/Headers$Builder;->addUnsafeNonAscii(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 762
    .end local v4    # "headerName":Ljava/lang/String;
    .end local v5    # "headerValue":Ljava/lang/String;
    .end local v6    # "header":Lcom/facebook/react/bridge/ReadableArray;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 770
    .restart local v4    # "headerName":Ljava/lang/String;
    .restart local v5    # "headerValue":Ljava/lang/String;
    .restart local v6    # "header":Lcom/facebook/react/bridge/ReadableArray;
    :cond_3
    :goto_1
    return-object v0

    .line 765
    .end local v4    # "headerName":Ljava/lang/String;
    .end local v5    # "headerValue":Ljava/lang/String;
    :cond_4
    :goto_2
    return-object v0

    .line 774
    .end local v2    # "headersIdx":I
    .end local v3    # "size":I
    .end local v6    # "header":Lcom/facebook/react/bridge/ReadableArray;
    :cond_5
    const-string/jumbo v0, "user-agent"

    invoke-virtual {v1, v0}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mDefaultUserAgent:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 775
    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mDefaultUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 779
    :cond_6
    if-eqz p2, :cond_7

    const-string/jumbo v0, "string"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v4, v5

    :cond_7
    move v0, v4

    .line 780
    .local v0, "isGzipSupported":Z
    if-nez v0, :cond_8

    .line 781
    const-string v2, "content-encoding"

    invoke-virtual {v1, v2}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 784
    :cond_8
    invoke-virtual {v1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    return-object v2
.end method

.method private synthetic lambda$sendRequestInternal$0(Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;ILokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .param p1, "responseType"    # Ljava/lang/String;
    .param p2, "reactApplicationContext"    # Lcom/facebook/react/bridge/ReactApplicationContext;
    .param p3, "requestId"    # I
    .param p4, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    invoke-interface {p4}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p4, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v0

    .line 319
    .local v0, "originalResponse":Lokhttp3/Response;
    new-instance v1, Lcom/facebook/react/modules/network/ProgressResponseBody;

    .line 321
    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    new-instance v3, Lcom/facebook/react/modules/network/NetworkingModule$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/facebook/react/modules/network/NetworkingModule$1;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;I)V

    invoke-direct {v1, v2, v3}, Lcom/facebook/react/modules/network/ProgressResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/facebook/react/modules/network/ProgressListener;)V

    .line 342
    .local v1, "responseBody":Lcom/facebook/react/modules/network/ProgressResponseBody;
    invoke-virtual {v0}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    return-object v2
.end method

.method private readWithProgress(ILokhttp3/ResponseBody;)V
    .locals 16
    .param p1, "requestId"    # I
    .param p2, "responseBody"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 592
    const-wide/16 v1, -0x1

    .line 593
    .local v1, "totalBytesRead":J
    const-wide/16 v3, -0x1

    .line 595
    .local v3, "contentLength":J
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Lcom/facebook/react/modules/network/ProgressResponseBody;

    .line 596
    .local v0, "progressResponseBody":Lcom/facebook/react/modules/network/ProgressResponseBody;
    invoke-virtual {v0}, Lcom/facebook/react/modules/network/ProgressResponseBody;->totalBytesRead()J

    move-result-wide v5

    move-wide v1, v5

    .line 597
    invoke-virtual {v0}, Lcom/facebook/react/modules/network/ProgressResponseBody;->contentLength()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v3, v5

    .line 600
    .end local v0    # "progressResponseBody":Lcom/facebook/react/modules/network/ProgressResponseBody;
    goto :goto_0

    .line 598
    :catch_0
    move-exception v0

    .line 603
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 604
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_1

    .line 605
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v0

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v5}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    :goto_1
    move-object v12, v0

    .line 607
    .local v12, "charset":Ljava/nio/charset/Charset;
    new-instance v0, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;

    invoke-direct {v0, v12}, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;-><init>(Ljava/nio/charset/Charset;)V

    move-object v13, v0

    .line 608
    .local v13, "streamDecoder":Lcom/facebook/react/modules/network/ProgressiveStringDecoder;
    invoke-virtual/range {p2 .. p2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v14

    .line 610
    .local v14, "inputStream":Ljava/io/InputStream;
    const/16 v0, 0x2000

    :try_start_1
    new-array v0, v0, [B

    .line 612
    .local v0, "buffer":[B
    nop

    .line 613
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v5

    .line 614
    .local v5, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    :goto_2
    invoke-virtual {v14, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v15, v6

    .local v15, "read":I
    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 615
    nop

    .line 618
    invoke-virtual {v13, v0, v15}, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->decodeNext([BI)Ljava/lang/String;

    move-result-object v7

    .line 615
    move/from16 v6, p1

    move-wide v8, v1

    move-wide v10, v3

    invoke-static/range {v5 .. v11}, Lcom/facebook/react/modules/network/ResponseUtil;->onIncrementalDataReceived(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 623
    .end local v0    # "buffer":[B
    .end local v5    # "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    .end local v15    # "read":I
    :cond_1
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 624
    nop

    .line 625
    return-void

    .line 623
    :catchall_0
    move-exception v0

    invoke-virtual {v14}, Ljava/io/InputStream;->close()V

    .line 624
    throw v0
.end method

.method private declared-synchronized removeRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    monitor-enter p0

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    monitor-exit p0

    return-void

    .line 635
    .end local p0    # "this":Lcom/facebook/react/modules/network/NetworkingModule;
    .end local p1    # "requestId":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static setCustomClientBuilder(Lcom/facebook/react/modules/network/CustomClientBuilder;)V
    .locals 0
    .param p0, "ccb"    # Lcom/facebook/react/modules/network/CustomClientBuilder;

    .line 170
    sput-object p0, Lcom/facebook/react/modules/network/NetworkingModule;->customClientBuilder:Lcom/facebook/react/modules/network/CustomClientBuilder;

    .line 171
    return-void
.end method

.method private static shouldDispatch(JJ)Z
    .locals 2
    .param p0, "now"    # J
    .param p2, "last"    # J

    .line 628
    const-wide/32 v0, 0x5f5e100

    add-long/2addr v0, p2

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static translateHeaders(Lokhttp3/Headers;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5
    .param p0, "headers"    # Lokhttp3/Headers;

    .line 647
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 648
    .local v0, "responseHeaders":Landroid/os/Bundle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 649
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    .line 651
    .local v2, "headerName":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 652
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 655
    :cond_0
    invoke-virtual {p0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .end local v2    # "headerName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 658
    .end local v1    # "i":I
    :cond_1
    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    return-object v1
.end method

.method private wrapRequestBodyWithProgressEmitter(Lokhttp3/RequestBody;I)Lokhttp3/RequestBody;
    .locals 2
    .param p1, "requestBody"    # Lokhttp3/RequestBody;
    .param p2, "requestId"    # I

    .line 569
    if-nez p1, :cond_0

    .line 570
    const/4 v0, 0x0

    return-object v0

    .line 572
    :cond_0
    nop

    .line 573
    invoke-virtual {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    .line 574
    .local v0, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    new-instance v1, Lcom/facebook/react/modules/network/NetworkingModule$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/facebook/react/modules/network/NetworkingModule$3;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;Lcom/facebook/react/bridge/ReactApplicationContext;I)V

    invoke-static {p1, v1}, Lcom/facebook/react/modules/network/RequestBodyUtil;->createProgressRequest(Lokhttp3/RequestBody;Lcom/facebook/react/modules/network/ProgressListener;)Lcom/facebook/react/modules/network/ProgressRequestBody;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public abortRequest(D)V
    .locals 1
    .param p1, "requestIdAsDouble"    # D

    .line 663
    double-to-int v0, p1

    .line 664
    .local v0, "requestId":I
    invoke-direct {p0, v0}, Lcom/facebook/react/modules/network/NetworkingModule;->cancelRequest(I)V

    .line 665
    invoke-direct {p0, v0}, Lcom/facebook/react/modules/network/NetworkingModule;->removeRequest(I)V

    .line 666
    return-void
.end method

.method public addListener(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventName"    # Ljava/lang/String;

    .line 685
    return-void
.end method

.method public addRequestBodyHandler(Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;

    .line 210
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public addResponseHandler(Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;

    .line 214
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public addUriHandler(Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;

    .line 206
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public clearCookies(Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/facebook/react/bridge/Callback;
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .line 681
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->clearCookies(Lcom/facebook/react/bridge/Callback;)V

    .line 682
    return-void
.end method

.method public initialize()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

    new-instance v1, Lokhttp3/JavaNetCookieJar;

    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v1, v2}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    invoke-interface {v0, v1}, Lcom/facebook/react/modules/network/CookieJarContainer;->setCookieJar(Lokhttp3/CookieJar;)V

    .line 190
    return-void
.end method

.method public invalidate()V
    .locals 1

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mShuttingDown:Z

    .line 195
    invoke-direct {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->cancelAllRequests()V

    .line 197
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-virtual {v0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->destroy()V

    .line 198
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

    invoke-interface {v0}, Lcom/facebook/react/modules/network/CookieJarContainer;->removeCookieJar()V

    .line 200
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 202
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 203
    return-void
.end method

.method public removeListeners(D)V
    .locals 0
    .param p1, "count"    # D

    .line 688
    return-void
.end method

.method public removeRequestBodyHandler(Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;

    .line 222
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 223
    return-void
.end method

.method public removeResponseHandler(Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;

    .line 226
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 227
    return-void
.end method

.method public removeUriHandler(Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;)V
    .locals 1
    .param p1, "handler"    # Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;

    .line 218
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;DLcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ZDZ)V
    .locals 17
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestIdAsDouble"    # D
    .param p5, "headers"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p6, "data"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p7, "responseType"    # Ljava/lang/String;
    .param p8, "useIncrementalUpdates"    # Z
    .param p9, "timeoutAsDouble"    # D
    .param p11, "withCredentials"    # Z

    .line 240
    move-wide/from16 v1, p3

    double-to-int v13, v1

    .line 241
    .local v13, "requestId":I
    move-wide/from16 v14, p9

    double-to-int v12, v14

    .line 243
    .local v12, "timeout":I
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move v6, v13

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move v11, v12

    move/from16 v16, v12

    .end local v12    # "timeout":I
    .local v16, "timeout":I
    move/from16 v12, p11

    :try_start_0
    invoke-virtual/range {v3 .. v12}, Lcom/facebook/react/modules/network/NetworkingModule;->sendRequestInternal(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ZIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    move-object/from16 v4, p2

    goto :goto_0

    .line 253
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 254
    .local v0, "th":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send url request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Networking"

    invoke-static {v5, v3, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    nop

    .line 257
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 256
    invoke-static {v3, v13, v5, v0}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 259
    .end local v0    # "th":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public sendRequestInternal(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ZIZ)V
    .locals 23
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "requestId"    # I
    .param p4, "headers"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p5, "data"    # Lcom/facebook/react/bridge/ReadableMap;
    .param p6, "responseType"    # Ljava/lang/String;
    .param p7, "useIncrementalUpdates"    # Z
    .param p8, "timeout"    # I
    .param p9, "withCredentials"    # Z

    .line 274
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p8

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContextIfActiveOrWarn()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v13

    .line 277
    .local v13, "reactApplicationContext":Lcom/facebook/react/bridge/ReactApplicationContext;
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 280
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, v7, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;

    .line 281
    .local v2, "handler":Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;
    invoke-interface {v2, v0, v11}, Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;->supports(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 282
    invoke-interface {v2, v0}, Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;->fetch(Landroid/net/Uri;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 283
    .local v1, "res":Lcom/facebook/react/bridge/WritableMap;
    invoke-static {v13, v9, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onDataReceived(Lcom/facebook/react/bridge/ReactApplicationContext;ILcom/facebook/react/bridge/WritableMap;)V

    .line 284
    invoke-static {v13, v9}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestSuccess(Lcom/facebook/react/bridge/ReactApplicationContext;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 285
    return-void

    .line 287
    .end local v1    # "res":Lcom/facebook/react/bridge/WritableMap;
    .end local v2    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;
    :cond_0
    goto :goto_0

    .line 291
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    nop

    .line 295
    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v14, p2

    :try_start_2
    invoke-virtual {v0, v14}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 299
    .local v0, "requestBuilder":Lokhttp3/Request$Builder;
    nop

    .line 301
    if-eqz v9, :cond_2

    .line 302
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 305
    :cond_2
    iget-object v2, v7, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v15

    .line 307
    .local v15, "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    invoke-static {v15}, Lcom/facebook/react/modules/network/NetworkingModule;->applyCustomBuilder(Lokhttp3/OkHttpClient$Builder;)V

    .line 309
    if-nez p9, :cond_3

    .line 310
    sget-object v2, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    invoke-virtual {v15, v2}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 315
    :cond_3
    if-eqz p7, :cond_4

    .line 316
    new-instance v2, Lcom/facebook/react/modules/network/NetworkingModule$$ExternalSyntheticLambda0;

    invoke-direct {v2, v7, v11, v13, v9}, Lcom/facebook/react/modules/network/NetworkingModule$$ExternalSyntheticLambda0;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;Ljava/lang/String;Lcom/facebook/react/bridge/ReactApplicationContext;I)V

    invoke-virtual {v15, v2}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 350
    :cond_4
    iget-object v2, v7, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->callTimeoutMillis()I

    move-result v2

    if-eq v12, v2, :cond_5

    .line 351
    int-to-long v2, v12

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v15, v2, v3, v4}, Lokhttp3/OkHttpClient$Builder;->callTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 353
    :cond_5
    invoke-virtual {v15}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v6

    .line 355
    .local v6, "client":Lokhttp3/OkHttpClient;
    move-object/from16 v5, p4

    invoke-direct {v7, v5, v10}, Lcom/facebook/react/modules/network/NetworkingModule;->extractHeaders(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lokhttp3/Headers;

    move-result-object v4

    .line 356
    .local v4, "requestHeaders":Lokhttp3/Headers;
    if-nez v4, :cond_6

    .line 357
    const-string v2, "Unrecognized headers format"

    invoke-static {v13, v9, v2, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    return-void

    .line 361
    :cond_6
    const-string v2, "content-type"

    invoke-virtual {v4, v2}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 362
    .local v2, "contentType":Ljava/lang/String;
    const-string v3, "content-encoding"

    invoke-virtual {v4, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 363
    .local v16, "contentEncoding":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 366
    const/4 v3, 0x0

    .line 367
    .local v3, "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    if-eqz v10, :cond_8

    .line 368
    iget-object v1, v7, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v1

    move-object/from16 v1, v18

    check-cast v1, Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;

    .line 369
    .local v1, "curHandler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    invoke-interface {v1, v10}, Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;->supports(Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 370
    move-object v3, v1

    .line 371
    goto :goto_2

    .line 373
    .end local v1    # "curHandler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    :cond_7
    move-object/from16 v1, v19

    goto :goto_1

    .line 377
    :cond_8
    :goto_2
    if-eqz v10, :cond_19

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 378
    invoke-virtual {v8, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v18, v4

    .end local v4    # "requestHeaders":Lokhttp3/Headers;
    .local v18, "requestHeaders":Lokhttp3/Headers;
    const-string v4, "get"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 379
    invoke-virtual {v8, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "head"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v19, v3

    goto/16 :goto_5

    .line 381
    :cond_9
    if-eqz v3, :cond_a

    .line 382
    invoke-interface {v3, v10, v2}, Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;->toRequestBody(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    move-object v5, v1

    move-object/from16 v17, v2

    move-object/from16 v19, v3

    .local v1, "requestBody":Lokhttp3/RequestBody;
    goto/16 :goto_6

    .line 383
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    :cond_a
    const-string/jumbo v1, "string"

    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v19, v3

    .end local v3    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .local v19, "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    const-string v3, "Payload is set but no content-type header specified"

    if-eqz v4, :cond_f

    .line 384
    if-nez v2, :cond_b

    .line 385
    const/4 v1, 0x0

    invoke-static {v13, v9, v3, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 390
    return-void

    .line 392
    :cond_b
    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, "body":Ljava/lang/String;
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 394
    .local v3, "contentMediaType":Lokhttp3/MediaType;
    invoke-static/range {v16 .. v16}, Lcom/facebook/react/modules/network/RequestBodyUtil;->isGzipEncoding(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 395
    invoke-static {v3, v1}, Lcom/facebook/react/modules/network/RequestBodyUtil;->createGzip(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 396
    .local v4, "requestBody":Lokhttp3/RequestBody;
    if-nez v4, :cond_c

    .line 397
    move-object/from16 v20, v4

    .end local v4    # "requestBody":Lokhttp3/RequestBody;
    .local v20, "requestBody":Lokhttp3/RequestBody;
    const-string v4, "Failed to gzip request body"

    const/4 v5, 0x0

    invoke-static {v13, v9, v4, v5}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 399
    return-void

    .line 396
    .end local v20    # "requestBody":Lokhttp3/RequestBody;
    .restart local v4    # "requestBody":Lokhttp3/RequestBody;
    :cond_c
    move-object/from16 v20, v4

    .end local v4    # "requestBody":Lokhttp3/RequestBody;
    .restart local v20    # "requestBody":Lokhttp3/RequestBody;
    move-object/from16 v1, v20

    goto :goto_4

    .line 406
    .end local v20    # "requestBody":Lokhttp3/RequestBody;
    :cond_d
    if-nez v3, :cond_e

    .line 407
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    goto :goto_3

    .line 408
    :cond_e
    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v4

    :goto_3
    nop

    .line 409
    .local v4, "charset":Ljava/nio/charset/Charset;
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v3, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v5

    move-object v1, v5

    .line 411
    .end local v3    # "contentMediaType":Lokhttp3/MediaType;
    .end local v4    # "charset":Ljava/nio/charset/Charset;
    .local v1, "requestBody":Lokhttp3/RequestBody;
    :goto_4
    move-object v5, v1

    move-object/from16 v17, v2

    goto/16 :goto_6

    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    :cond_f
    const-string v1, "base64"

    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 412
    if-nez v2, :cond_10

    .line 413
    const/4 v1, 0x0

    invoke-static {v13, v9, v3, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    return-void

    .line 420
    :cond_10
    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, "base64String":Ljava/lang/String;
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 422
    .restart local v3    # "contentMediaType":Lokhttp3/MediaType;
    invoke-static {v1}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 423
    .end local v3    # "contentMediaType":Lokhttp3/MediaType;
    .local v1, "requestBody":Lokhttp3/RequestBody;
    move-object v5, v1

    move-object/from16 v17, v2

    goto/16 :goto_6

    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    :cond_11
    const-string/jumbo v1, "uri"

    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 424
    if-nez v2, :cond_12

    .line 425
    const/4 v1, 0x0

    invoke-static {v13, v9, v3, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 430
    return-void

    .line 432
    :cond_12
    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 433
    .local v1, "uri":Ljava/lang/String;
    nop

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 435
    .local v3, "fileInputStream":Ljava/io/InputStream;
    if-nez v3, :cond_13

    .line 436
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve file for uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v13, v9, v4, v5}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    return-void

    .line 440
    :cond_13
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/facebook/react/modules/network/RequestBodyUtil;->create(Lokhttp3/MediaType;Ljava/io/InputStream;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 441
    .end local v3    # "fileInputStream":Ljava/io/InputStream;
    .local v1, "requestBody":Lokhttp3/RequestBody;
    move-object v5, v1

    move-object/from16 v17, v2

    goto :goto_6

    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    :cond_14
    const-string v1, "formData"

    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 442
    if-nez v2, :cond_15

    .line 443
    const-string v2, "multipart/form-data"

    .line 445
    :cond_15
    invoke-interface {v10, v1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v1

    .line 446
    .local v1, "parts":Lcom/facebook/react/bridge/ReadableArray;
    nop

    .line 447
    invoke-direct {v7, v1, v2, v9}, Lcom/facebook/react/modules/network/NetworkingModule;->constructMultipartBody(Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;I)Lokhttp3/MultipartBody$Builder;

    move-result-object v3

    .line 448
    .local v3, "multipartBuilder":Lokhttp3/MultipartBody$Builder;
    if-nez v3, :cond_16

    .line 449
    return-void

    .line 451
    :cond_16
    invoke-virtual {v3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    .line 452
    .end local v3    # "multipartBuilder":Lokhttp3/MultipartBody$Builder;
    .local v1, "requestBody":Lokhttp3/RequestBody;
    move-object v5, v1

    move-object/from16 v17, v2

    goto :goto_6

    .line 454
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getEmptyBody(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    move-object v5, v1

    move-object/from16 v17, v2

    .restart local v1    # "requestBody":Lokhttp3/RequestBody;
    goto :goto_6

    .line 378
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    .end local v19    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .local v3, "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    :cond_18
    move-object/from16 v19, v3

    .end local v3    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .restart local v19    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    goto :goto_5

    .line 377
    .end local v18    # "requestHeaders":Lokhttp3/Headers;
    .end local v19    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .restart local v3    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .local v4, "requestHeaders":Lokhttp3/Headers;
    :cond_19
    move-object/from16 v19, v3

    move-object/from16 v18, v4

    .line 380
    .end local v3    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .end local v4    # "requestHeaders":Lokhttp3/Headers;
    .restart local v18    # "requestHeaders":Lokhttp3/Headers;
    .restart local v19    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    :goto_5
    invoke-static/range {p1 .. p1}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getEmptyBody(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    move-object v5, v1

    move-object/from16 v17, v2

    .line 457
    .end local v2    # "contentType":Ljava/lang/String;
    .local v5, "requestBody":Lokhttp3/RequestBody;
    .local v17, "contentType":Ljava/lang/String;
    :goto_6
    invoke-direct {v7, v5, v9}, Lcom/facebook/react/modules/network/NetworkingModule;->wrapRequestBodyWithProgressEmitter(Lokhttp3/RequestBody;I)Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 459
    invoke-direct {v7, v9}, Lcom/facebook/react/modules/network/NetworkingModule;->addRequest(I)V

    .line 460
    nop

    .line 461
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v6, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    new-instance v3, Lcom/facebook/react/modules/network/NetworkingModule$2;

    move-object v1, v3

    move-object/from16 v2, p0

    move-object/from16 v20, v0

    move-object v0, v3

    .end local v0    # "requestBuilder":Lokhttp3/Request$Builder;
    .local v20, "requestBuilder":Lokhttp3/Request$Builder;
    move/from16 v3, p3

    move-object v7, v4

    move-object v4, v13

    move-object/from16 v21, v5

    .end local v5    # "requestBody":Lokhttp3/RequestBody;
    .local v21, "requestBody":Lokhttp3/RequestBody;
    move-object/from16 v5, p6

    move-object/from16 v22, v6

    .end local v6    # "client":Lokhttp3/OkHttpClient;
    .local v22, "client":Lokhttp3/OkHttpClient;
    move/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/modules/network/NetworkingModule$2;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;ILcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Z)V

    .line 462
    invoke-interface {v7, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 565
    return-void

    .line 296
    .end local v15    # "clientBuilder":Lokhttp3/OkHttpClient$Builder;
    .end local v16    # "contentEncoding":Ljava/lang/String;
    .end local v17    # "contentType":Ljava/lang/String;
    .end local v18    # "requestHeaders":Lokhttp3/Headers;
    .end local v19    # "handler":Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;
    .end local v20    # "requestBuilder":Lokhttp3/Request$Builder;
    .end local v21    # "requestBody":Lokhttp3/RequestBody;
    .end local v22    # "client":Lokhttp3/OkHttpClient;
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v14, p2

    .line 297
    .local v0, "e":Ljava/lang/Exception;
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v13, v9, v1, v2}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    return-void

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    move-object/from16 v14, p2

    .line 289
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v9, v1, v0}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/bridge/ReactApplicationContext;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    return-void
.end method
