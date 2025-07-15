.class public abstract Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client$JsonRpc20Exception;
.super Ljava/lang/Exception;
.source "JsonRpc20Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/protocol/JsonRpc20Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "JsonRpc20Exception"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "m"    # Ljava/lang/String;

    .line 284
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
