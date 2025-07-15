.class public final Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
.super Ljava/lang/Object;
.source "PrepareGetCredentialResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/credentials/PrepareGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PendingGetCredentialHandle"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;",
        "",
        "frameworkHandle",
        "Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;",
        "(Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;)V",
        "getFrameworkHandle",
        "()Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;",
        "credentials_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final frameworkHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;


# direct methods
.method public constructor <init>(Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;)V
    .locals 2
    .param p1, "frameworkHandle"    # Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->frameworkHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    .line 126
    nop

    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->frameworkHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    :cond_0
    nop

    .line 121
    return-void
.end method


# virtual methods
.method public final getFrameworkHandle()Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;
    .locals 1

    .line 123
    iget-object v0, p0, Landroidx/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;->frameworkHandle:Landroid/credentials/PrepareGetCredentialResponse$PendingGetCredentialHandle;

    return-object v0
.end method
