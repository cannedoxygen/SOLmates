.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
.super Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;
.source "JsonRpc20Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonRpc20InvalidResponseException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/String;

    .line 288
    invoke-direct {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
