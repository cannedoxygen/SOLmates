.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$InsecureWalletEndpointUriException;
.super Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;
.source "MobileWalletAdapterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InsecureWalletEndpointUriException"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 381
    invoke-direct {p0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20InvalidResponseException;-><init>(Ljava/lang/String;)V

    return-void
.end method
