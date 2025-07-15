.class public Lcom/neovisionaries/ws/client/HostnameUnverifiedException;
.super Lcom/neovisionaries/ws/client/WebSocketException;
.source "HostnameUnverifiedException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mHostname:Ljava/lang/String;

.field private final mSSLSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V
    .locals 3
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;

    .line 57
    sget-object v0, Lcom/neovisionaries/ws/client/WebSocketError;->HOSTNAME_UNVERIFIED:Lcom/neovisionaries/ws/client/WebSocketError;

    .line 59
    invoke-static {p1}, Lcom/neovisionaries/ws/client/HostnameUnverifiedException;->stringifyPrincipal(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object v1

    .line 58
    const-string v2, "The certificate of the peer%s does not match the expected hostname (%s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/neovisionaries/ws/client/WebSocketException;-><init>(Lcom/neovisionaries/ws/client/WebSocketError;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/neovisionaries/ws/client/HostnameUnverifiedException;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    .line 62
    iput-object p2, p0, Lcom/neovisionaries/ws/client/HostnameUnverifiedException;->mHostname:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private static stringifyPrincipal(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 2
    .param p0, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 70
    :try_start_0
    const-string v0, " (%s)"

    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v1

    invoke-interface {v1}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method public getHostname()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HostnameUnverifiedException;->mHostname:Ljava/lang/String;

    return-object v0
.end method

.method public getSSLSocket()Ljavax/net/ssl/SSLSocket;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/neovisionaries/ws/client/HostnameUnverifiedException;->mSSLSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method
