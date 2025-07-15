.class Lcom/neovisionaries/ws/client/SocketConnector$1;
.super Ljava/lang/Object;
.source "SocketConnector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neovisionaries/ws/client/SocketConnector;->resolveHostname()[Ljava/net/InetAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/net/InetAddress;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neovisionaries/ws/client/SocketConnector;


# direct methods
.method constructor <init>(Lcom/neovisionaries/ws/client/SocketConnector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/neovisionaries/ws/client/SocketConnector;

    .line 142
    iput-object p1, p0, Lcom/neovisionaries/ws/client/SocketConnector$1;->this$0:Lcom/neovisionaries/ws/client/SocketConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 142
    check-cast p1, Ljava/net/InetAddress;

    check-cast p2, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Lcom/neovisionaries/ws/client/SocketConnector$1;->compare(Ljava/net/InetAddress;Ljava/net/InetAddress;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/net/InetAddress;Ljava/net/InetAddress;)I
    .locals 2
    .param p1, "left"    # Ljava/net/InetAddress;
    .param p2, "right"    # Ljava/net/InetAddress;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 146
    const/4 v0, 0x0

    return v0

    .line 148
    :cond_0
    instance-of v0, p1, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 150
    const/4 v0, -0x1

    return v0

    .line 154
    :cond_1
    const/4 v0, 0x1

    return v0
.end method
