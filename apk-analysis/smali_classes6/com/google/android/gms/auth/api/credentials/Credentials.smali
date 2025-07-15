.class public Lcom/google/android/gms/auth/api/credentials/Credentials;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@20.7.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClient(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 1
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    .end local p0    # "activity":Landroid/app/Activity;
    sget-object v1, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;->DEFAULT:Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;)V

    return-object v0
.end method

.method public static getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "options"    # Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    .end local p0    # "activity":Landroid/app/Activity;
    .end local p1    # "options":Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;)V

    return-object v0
.end method

.method public static getClient(Landroid/content/Context;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    .end local p0    # "context":Landroid/content/Context;
    sget-object v1, Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;->DEFAULT:Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;)V

    return-object v0
.end method

.method public static getClient(Landroid/content/Context;Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;)Lcom/google/android/gms/auth/api/credentials/CredentialsClient;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "options"    # Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;

    .line 4
    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "options":Lcom/google/android/gms/auth/api/credentials/CredentialsOptions;
    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialsClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;)V

    return-object v0
.end method
