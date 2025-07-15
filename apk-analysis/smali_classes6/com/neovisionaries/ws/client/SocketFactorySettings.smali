.class Lcom/neovisionaries/ws/client/SocketFactorySettings;
.super Ljava/lang/Object;
.source "SocketFactorySettings.java"


# instance fields
.field private mSSLContext:Ljavax/net/ssl/SSLContext;

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private mSocketFactory:Ljavax/net/SocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/neovisionaries/ws/client/SocketFactorySettings;)V
    .locals 1
    .param p1, "settings"    # Lcom/neovisionaries/ws/client/SocketFactorySettings;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iget-object v0, p1, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 36
    iget-object v0, p1, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 37
    iget-object v0, p1, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    .line 38
    return-void
.end method


# virtual methods
.method public getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public selectSocketFactory(Z)Ljavax/net/SocketFactory;
    .locals 1
    .param p1, "secure"    # Z

    .line 79
    if-eqz p1, :cond_2

    .line 81
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0

    .line 91
    :cond_1
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    if-eqz v0, :cond_3

    .line 96
    iget-object v0, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    return-object v0

    .line 99
    :cond_3
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public setSSLContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0
    .param p1, "context"    # Ljavax/net/ssl/SSLContext;

    .line 73
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLContext:Ljavax/net/ssl/SSLContext;

    .line 74
    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0
    .param p1, "factory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 61
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 62
    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)V
    .locals 0
    .param p1, "factory"    # Ljavax/net/SocketFactory;

    .line 49
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketFactorySettings;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 50
    return-void
.end method
