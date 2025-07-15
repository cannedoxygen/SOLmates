.class public Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationIntentCreator;
.super Ljava/lang/Object;
.source "LocalAssociationIntentCreator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAssociationIntent(Landroid/net/Uri;ILcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;)Landroid/content/Intent;
    .locals 4
    .param p0, "endpointPrefix"    # Landroid/net/Uri;
    .param p1, "port"    # I
    .param p2, "session"    # Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;

    .line 31
    invoke-virtual {p2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->getEncodedAssociationPublicKey()[B

    move-result-object v0

    .line 32
    .local v0, "associationPublicKey":[B
    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, "associationToken":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 35
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 36
    const-string v3, "android.intent.category.BROWSABLE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 38
    invoke-virtual {p2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterSession;->getSupportedProtocolVersions()Ljava/util/Set;

    move-result-object v3

    .line 37
    invoke-static {p0, p1, v1, v3}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationIntentCreator;->createAssociationUri(Landroid/net/Uri;ILjava/lang/String;Ljava/util/Set;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    .line 34
    return-object v2
.end method

.method private static createAssociationUri(Landroid/net/Uri;ILjava/lang/String;Ljava/util/Set;)Landroid/net/Uri;
    .locals 5
    .param p0, "endpointPrefix"    # Landroid/net/Uri;
    .param p1, "port"    # I
    .param p2, "associationToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .line 55
    .local p3, "supportedProtocolVersions":Ljava/util/Set;, "Ljava/util/Set<Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;>;"
    if-eqz p0, :cond_1

    const-string v0, "https"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Endpoint-specific URI prefix must be absolute with scheme \'https\' and hierarchical"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 62
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .local v0, "dataUriBuilder":Landroid/net/Uri$Builder;
    goto :goto_1

    .line 66
    .end local v0    # "dataUriBuilder":Landroid/net/Uri$Builder;
    :cond_2
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 67
    const-string/jumbo v1, "solana-wallet"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 70
    .restart local v0    # "dataUriBuilder":Landroid/net/Uri$Builder;
    :goto_1
    const-string/jumbo v1, "v1/associate/local"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 71
    const-string v2, "association"

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 73
    const-string v3, "port"

    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 76
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    .line 77
    .local v2, "version":Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;
    sget-object v3, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->LEGACY:Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;

    if-eq v2, v3, :cond_3

    .line 78
    nop

    .line 79
    invoke-virtual {v2}, Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;->toString()Ljava/lang/String;

    move-result-object v3

    .line 78
    const-string/jumbo v4, "v"

    invoke-virtual {v0, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 80
    .end local v2    # "version":Lcom/solana/mobilewalletadapter/common/protocol/SessionProperties$ProtocolVersion;
    :cond_3
    goto :goto_2

    .line 82
    :cond_4
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static isWalletEndpointAvailable(Landroid/content/pm/PackageManager;)Z
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;

    .line 42
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 43
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 44
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v2, v3, v4, v1}, Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationIntentCreator;->createAssociationUri(Landroid/net/Uri;ILjava/lang/String;Ljava/util/Set;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 47
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method
