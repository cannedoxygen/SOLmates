.class public Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;
.super Lcom/google/android/gms/common/api/ApiException;
.source "com.google.android.gms:play-services-auth-base@@18.0.4"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1, "status"    # Lcom/google/android/gms/common/api/Status;

    .line 1
    nop

    .end local p0    # "this":Lcom/google/android/gms/auth/api/accounttransfer/AccountTransferException;
    .end local p1    # "status":Lcom/google/android/gms/common/api/Status;
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
