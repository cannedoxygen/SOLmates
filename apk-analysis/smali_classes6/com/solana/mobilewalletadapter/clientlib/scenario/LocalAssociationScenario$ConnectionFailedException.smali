.class public Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario$ConnectionFailedException;
.super Ljava/lang/RuntimeException;
.source "LocalAssociationScenario.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/solana/mobilewalletadapter/clientlib/scenario/LocalAssociationScenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectionFailedException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 362
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
