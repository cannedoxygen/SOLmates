.class public final Lexpo/modules/securestore/SecureStoreOptions;
.super Ljava/lang/Object;
.source "SecureStoreOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0018\u00002\u00020\u00012\u00020\u0002B#\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR$\u0010\u0005\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u000f\u0010\n\u001a\u0004\u0008\u0010\u0010\u000c\"\u0004\u0008\u0011\u0010\u000eR$\u0010\u0006\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\n\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/securestore/SecureStoreOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "authenticationPrompt",
        "",
        "keychainService",
        "requireAuthentication",
        "",
        "(Ljava/lang/String;Ljava/lang/String;Z)V",
        "getAuthenticationPrompt$annotations",
        "()V",
        "getAuthenticationPrompt",
        "()Ljava/lang/String;",
        "setAuthenticationPrompt",
        "(Ljava/lang/String;)V",
        "getKeychainService$annotations",
        "getKeychainService",
        "setKeychainService",
        "getRequireAuthentication$annotations",
        "getRequireAuthentication",
        "()Z",
        "setRequireAuthentication",
        "(Z)V",
        "expo-secure-store_debug"
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
.field private authenticationPrompt:Ljava/lang/String;

.field private keychainService:Ljava/lang/String;

.field private requireAuthentication:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lexpo/modules/securestore/SecureStoreOptions;-><init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "authenticationPrompt"    # Ljava/lang/String;
    .param p2, "keychainService"    # Ljava/lang/String;
    .param p3, "requireAuthentication"    # Z

    const-string v0, "authenticationPrompt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keychainService"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lexpo/modules/securestore/SecureStoreOptions;->authenticationPrompt:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lexpo/modules/securestore/SecureStoreOptions;->keychainService:Ljava/lang/String;

    .line 11
    iput-boolean p3, p0, Lexpo/modules/securestore/SecureStoreOptions;->requireAuthentication:Z

    .line 7
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 7
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 9
    const-string p1, " "

    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 10
    const-string p2, "key_v1"

    .line 7
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 11
    const/4 p3, 0x0

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/securestore/SecureStoreOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    return-void
.end method

.method public static synthetic getAuthenticationPrompt$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getKeychainService$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getRequireAuthentication$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getAuthenticationPrompt()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lexpo/modules/securestore/SecureStoreOptions;->authenticationPrompt:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeychainService()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/securestore/SecureStoreOptions;->keychainService:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequireAuthentication()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lexpo/modules/securestore/SecureStoreOptions;->requireAuthentication:Z

    return v0
.end method

.method public final setAuthenticationPrompt(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lexpo/modules/securestore/SecureStoreOptions;->authenticationPrompt:Ljava/lang/String;

    return-void
.end method

.method public final setKeychainService(Ljava/lang/String;)V
    .locals 1
    .param p1, "<set-?>"    # Ljava/lang/String;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lexpo/modules/securestore/SecureStoreOptions;->keychainService:Ljava/lang/String;

    return-void
.end method

.method public final setRequireAuthentication(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 11
    iput-boolean p1, p0, Lexpo/modules/securestore/SecureStoreOptions;->requireAuthentication:Z

    return-void
.end method
