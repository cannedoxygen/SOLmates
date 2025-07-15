.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;
.super Ljava/lang/Object;
.source "MobileWalletAdapterClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetCapabilitiesResult"
.end annotation


# instance fields
.field public final maxMessagesPerSigningRequest:I

.field public final maxTransactionsPerSigningRequest:I

.field public final supportedOptionalFeatures:[Ljava/lang/String;

.field public final supportedTransactionVersions:[Ljava/lang/Object;

.field public final supportsCloneAuthorization:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public final supportsSignAndSendTransactions:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>(II[Ljava/lang/Object;[Ljava/lang/String;)V
    .locals 6
    .param p1, "maxTransactionsPerSigningRequest"    # I
    .param p2, "maxMessagesPerSigningRequest"    # I
    .param p3, "supportedTransactionVersions"    # [Ljava/lang/Object;
    .param p4, "supportedFeatures"    # [Ljava/lang/String;

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput p1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->maxTransactionsPerSigningRequest:I

    .line 567
    iput p2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->maxMessagesPerSigningRequest:I

    .line 568
    iput-object p3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->supportedTransactionVersions:[Ljava/lang/Object;

    .line 569
    iput-object p4, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->supportedOptionalFeatures:[Ljava/lang/String;

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "supportsCloneAuthorization":Z
    const/4 v1, 0x0

    .line 573
    .local v1, "supportsSignAndSendTransactions":Z
    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p4, v3

    .line 574
    .local v4, "featureId":Ljava/lang/String;
    if-nez v4, :cond_0

    goto :goto_1

    .line 575
    :cond_0
    const-string/jumbo v5, "solana:signAndSendTransaction"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 576
    const/4 v1, 0x1

    .line 578
    :cond_1
    const-string/jumbo v5, "solana:cloneAuthorization"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 579
    const/4 v0, 0x1

    .line 573
    .end local v4    # "featureId":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 582
    :cond_3
    iput-boolean v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->supportsCloneAuthorization:Z

    .line 583
    iput-boolean v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->supportsSignAndSendTransactions:Z

    .line 584
    return-void
.end method

.method synthetic constructor <init>(II[Ljava/lang/Object;[Ljava/lang/String;Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;-><init>(II[Ljava/lang/Object;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GetCapabilitiesResult{supportsCloneAuthorization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->supportsCloneAuthorization:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportsSignAndSendTransactions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->supportsSignAndSendTransactions:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxTransactionsPerSigningRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->maxTransactionsPerSigningRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxMessagesPerSigningRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->maxMessagesPerSigningRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedTransactionVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->supportedTransactionVersions:[Ljava/lang/Object;

    .line 594
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedOptionalFeatures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient$GetCapabilitiesResult;->supportedOptionalFeatures:[Ljava/lang/String;

    .line 595
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    return-object v0
.end method
