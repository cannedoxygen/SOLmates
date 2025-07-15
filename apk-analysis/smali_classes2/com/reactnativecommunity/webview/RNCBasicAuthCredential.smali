.class Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;
.super Ljava/lang/Object;
.source "RNCBasicAuthCredential.java"


# instance fields
.field password:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;->username:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/reactnativecommunity/webview/RNCBasicAuthCredential;->password:Ljava/lang/String;

    .line 10
    return-void
.end method
