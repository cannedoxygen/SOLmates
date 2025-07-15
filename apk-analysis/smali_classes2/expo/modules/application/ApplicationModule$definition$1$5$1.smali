.class public final Lexpo/modules/application/ApplicationModule$definition$1$5$1;
.super Ljava/lang/Object;
.source "ApplicationModule.kt"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/application/ApplicationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0010\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0006H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "expo/modules/application/ApplicationModule$definition$1$5$1",
        "Lcom/android/installreferrer/api/InstallReferrerStateListener;",
        "onInstallReferrerServiceDisconnected",
        "",
        "onInstallReferrerSetupFinished",
        "responseCode",
        "",
        "expo-application_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $installReferrer:Ljava/lang/StringBuilder;

.field final synthetic $promise:Lexpo/modules/kotlin/Promise;

.field final synthetic $referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Ljava/lang/StringBuilder;Lexpo/modules/kotlin/Promise;)V
    .locals 0
    .param p1, "$referrerClient"    # Lcom/android/installreferrer/api/InstallReferrerClient;
    .param p2, "$installReferrer"    # Ljava/lang/StringBuilder;
    .param p3, "$promise"    # Lexpo/modules/kotlin/Promise;

    iput-object p1, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p2, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$installReferrer:Ljava/lang/StringBuilder;

    iput-object p3, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 4

    .line 90
    iget-object v0, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    const-string v1, "Connection to install referrer service was lost."

    const/4 v2, 0x0

    const-string v3, "ERR_APPLICATION_INSTALL_REFERRER_SERVICE_DISCONNECTED"

    invoke-interface {v0, v3, v1, v2}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 5
    .param p1, "responseCode"    # I

    .line 65
    const-string v0, "General error retrieving the install referrer: response code "

    const-string v1, "ERR_APPLICATION_INSTALL_REFERRER"

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 84
    iget-object v3, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0, v2}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 79
    :pswitch_0
    iget-object v0, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    const-string v1, "ERR_APPLICATION_INSTALL_REFERRER_UNAVAILABLE"

    const-string v3, "The current Play Store app doesn\'t provide the installation referrer API, or the Play Store may not be installed."

    invoke-interface {v0, v1, v3, v2}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v3, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v1, v0, v2}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    :pswitch_2
    nop

    .line 69
    :try_start_0
    iget-object v0, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object v0

    .line 70
    .local v0, "response":Lcom/android/installreferrer/api/ReferrerDetails;
    iget-object v1, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$installReferrer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "response":Lcom/android/installreferrer/api/ReferrerDetails;
    iget-object v0, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    iget-object v1, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$installReferrer:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lexpo/modules/kotlin/Promise;->resolve(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$promise:Lexpo/modules/kotlin/Promise;

    const-string v2, "RemoteException getting install referrer information. This may happen if the process hosting the remote object is no longer available."

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    const-string v4, "ERR_APPLICATION_INSTALL_REFERRER_REMOTE_EXCEPTION"

    invoke-interface {v1, v4, v2, v3}, Lexpo/modules/kotlin/Promise;->reject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void

    .line 86
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lexpo/modules/application/ApplicationModule$definition$1$5$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 87
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
