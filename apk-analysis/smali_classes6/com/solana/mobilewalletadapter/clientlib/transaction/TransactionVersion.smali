.class public Lcom/solana/mobilewalletadapter/clientlib/transaction/TransactionVersion;
.super Ljava/lang/Object;
.source "TransactionVersion.java"


# static fields
.field public static final LEGACY:Ljava/lang/String; = "legacy"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "not constructable"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static supportsLegacy([Ljava/lang/Object;)Z
    .locals 6
    .param p0, "supportedTransactionVersions"    # [Ljava/lang/Object;

    .line 13
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 14
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    const-string v4, "legacy"

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 16
    const/4 v0, 0x1

    return v0

    .line 13
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_2
    return v1
.end method

.method public static supportsVersion([Ljava/lang/Object;I)Z
    .locals 5
    .param p0, "supportedTransactionVersions"    # [Ljava/lang/Object;
    .param p1, "version"    # I

    .line 23
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 24
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_0

    goto :goto_1

    .line 25
    :cond_0
    move-object v4, v3

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 26
    const/4 v0, 0x1

    return v0

    .line 23
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_2
    return v1
.end method
