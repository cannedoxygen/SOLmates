.class public abstract Lcom/solana/mobilewalletadapter/clientlib/scenario/Scenario;
.super Ljava/lang/Object;
.source "Scenario.java"


# static fields
.field public static final DEFAULT_CLIENT_TIMEOUT_MS:I = 0x15f90


# instance fields
.field protected final mMobileWalletAdapterClient:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;


# direct methods
.method protected constructor <init>(I)V
    .locals 1
    .param p1, "clientTimeoutMs"    # I

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;

    invoke-direct {v0, p1}, Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;-><init>(I)V

    iput-object v0, p0, Lcom/solana/mobilewalletadapter/clientlib/scenario/Scenario;->mMobileWalletAdapterClient:Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;

    .line 21
    return-void
.end method


# virtual methods
.method public abstract close()Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract start()Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/solana/mobilewalletadapter/common/util/NotifyOnCompleteFuture<",
            "Lcom/solana/mobilewalletadapter/clientlib/protocol/MobileWalletAdapterClient;",
            ">;"
        }
    .end annotation
.end method
