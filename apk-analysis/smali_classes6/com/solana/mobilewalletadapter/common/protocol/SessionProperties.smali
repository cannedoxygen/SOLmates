.class public Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;
.super Ljava/lang/Object;
.source "SessionProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;
    }
.end annotation


# static fields
.field private static final PROTOCOL_VERSION_KEY:Ljava/lang/String; = "v"


# instance fields
.field public protocolVersion:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;


# direct methods
.method public constructor <init>(Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;)V
    .locals 0
    .param p1, "protocolVersion"    # Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;->protocolVersion:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    .line 19
    return-void
.end method

.method public static deserialize([B)Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;
    .locals 4
    .param p0, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 22
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 24
    .local v1, "protocolVersionString":Ljava/lang/String;
    new-instance v2, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;

    invoke-static {v1}, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->from(Ljava/lang/String;)Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;-><init>(Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;)V

    return-object v2
.end method


# virtual methods
.method public serialize()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    .local v0, "json":Lorg/json/JSONObject;
    const-string/jumbo v1, "v"

    iget-object v2, p0, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties;->protocolVersion:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method
