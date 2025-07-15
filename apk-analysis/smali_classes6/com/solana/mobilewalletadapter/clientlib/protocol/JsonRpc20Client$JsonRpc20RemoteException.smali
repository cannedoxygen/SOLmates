.class public Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;
.super Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;
.source "JsonRpc20Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JsonRpc20RemoteException"
.end annotation


# static fields
.field public static final SERVER_RESERVED_ERROR_MAX:I = -0x7d00

.field public static final SERVER_RESERVED_ERROR_MIN:I = -0x8000


# instance fields
.field public final code:I

.field public final data:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .line 300
    invoke-direct {p0, p2}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;-><init>(Ljava/lang/String;)V

    .line 301
    iput p1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->code:I

    .line 302
    iput-object p3, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->data:Ljava/lang/String;

    .line 303
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 3

    .line 312
    invoke-super {p0}, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 314
    iget v1, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 316
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isReservedError()Z
    .locals 2

    .line 306
    iget v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->code:I

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20RemoteException;->code:I

    const/16 v1, -0x7d00

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
