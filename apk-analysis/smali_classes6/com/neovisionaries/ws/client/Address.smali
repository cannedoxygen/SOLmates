.class Lcom/neovisionaries/ws/client/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field private final mHost:Ljava/lang/String;

.field private final mPort:I

.field private transient mString:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/neovisionaries/ws/client/Address;->mHost:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/neovisionaries/ws/client/Address;->mPort:I

    .line 33
    return-void
.end method


# virtual methods
.method getHostname()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/neovisionaries/ws/client/Address;->mHost:Ljava/lang/String;

    return-object v0
.end method

.method getPort()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/neovisionaries/ws/client/Address;->mPort:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/neovisionaries/ws/client/Address;->mString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/neovisionaries/ws/client/Address;->mHost:Ljava/lang/String;

    iget v1, p0, Lcom/neovisionaries/ws/client/Address;->mPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s:%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neovisionaries/ws/client/Address;->mString:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/neovisionaries/ws/client/Address;->mString:Ljava/lang/String;

    return-object v0
.end method
