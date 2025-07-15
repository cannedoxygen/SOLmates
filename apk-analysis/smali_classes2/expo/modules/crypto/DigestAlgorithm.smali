.class public final enum Lexpo/modules/crypto/DigestAlgorithm;
.super Ljava/lang/Enum;
.source "DigestAlgorithm.kt"

# interfaces
.implements Lexpo/modules/kotlin/types/Enumerable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lexpo/modules/crypto/DigestAlgorithm;",
        ">;",
        "Lexpo/modules/kotlin/types/Enumerable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u000f\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/crypto/DigestAlgorithm;",
        "",
        "Lexpo/modules/kotlin/types/Enumerable;",
        "value",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getValue",
        "()Ljava/lang/String;",
        "MD5",
        "SHA1",
        "SHA256",
        "SHA384",
        "SHA512",
        "expo-crypto_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lexpo/modules/crypto/DigestAlgorithm;

.field public static final enum MD5:Lexpo/modules/crypto/DigestAlgorithm;

.field public static final enum SHA1:Lexpo/modules/crypto/DigestAlgorithm;

.field public static final enum SHA256:Lexpo/modules/crypto/DigestAlgorithm;

.field public static final enum SHA384:Lexpo/modules/crypto/DigestAlgorithm;

.field public static final enum SHA512:Lexpo/modules/crypto/DigestAlgorithm;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lexpo/modules/crypto/DigestAlgorithm;
    .locals 5

    sget-object v0, Lexpo/modules/crypto/DigestAlgorithm;->MD5:Lexpo/modules/crypto/DigestAlgorithm;

    sget-object v1, Lexpo/modules/crypto/DigestAlgorithm;->SHA1:Lexpo/modules/crypto/DigestAlgorithm;

    sget-object v2, Lexpo/modules/crypto/DigestAlgorithm;->SHA256:Lexpo/modules/crypto/DigestAlgorithm;

    sget-object v3, Lexpo/modules/crypto/DigestAlgorithm;->SHA384:Lexpo/modules/crypto/DigestAlgorithm;

    sget-object v4, Lexpo/modules/crypto/DigestAlgorithm;->SHA512:Lexpo/modules/crypto/DigestAlgorithm;

    filled-new-array {v0, v1, v2, v3, v4}, [Lexpo/modules/crypto/DigestAlgorithm;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 6
    new-instance v0, Lexpo/modules/crypto/DigestAlgorithm;

    const-string v1, "MD5"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lexpo/modules/crypto/DigestAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/crypto/DigestAlgorithm;->MD5:Lexpo/modules/crypto/DigestAlgorithm;

    .line 7
    new-instance v0, Lexpo/modules/crypto/DigestAlgorithm;

    const/4 v1, 0x1

    const-string v2, "SHA-1"

    const-string v3, "SHA1"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/crypto/DigestAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/crypto/DigestAlgorithm;->SHA1:Lexpo/modules/crypto/DigestAlgorithm;

    .line 8
    new-instance v0, Lexpo/modules/crypto/DigestAlgorithm;

    const/4 v1, 0x2

    const-string v2, "SHA-256"

    const-string v3, "SHA256"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/crypto/DigestAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/crypto/DigestAlgorithm;->SHA256:Lexpo/modules/crypto/DigestAlgorithm;

    .line 9
    new-instance v0, Lexpo/modules/crypto/DigestAlgorithm;

    const/4 v1, 0x3

    const-string v2, "SHA-384"

    const-string v3, "SHA384"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/crypto/DigestAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/crypto/DigestAlgorithm;->SHA384:Lexpo/modules/crypto/DigestAlgorithm;

    .line 10
    new-instance v0, Lexpo/modules/crypto/DigestAlgorithm;

    const/4 v1, 0x4

    const-string v2, "SHA-512"

    const-string v3, "SHA512"

    invoke-direct {v0, v3, v1, v2}, Lexpo/modules/crypto/DigestAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lexpo/modules/crypto/DigestAlgorithm;->SHA512:Lexpo/modules/crypto/DigestAlgorithm;

    invoke-static {}, Lexpo/modules/crypto/DigestAlgorithm;->$values()[Lexpo/modules/crypto/DigestAlgorithm;

    move-result-object v0

    sput-object v0, Lexpo/modules/crypto/DigestAlgorithm;->$VALUES:[Lexpo/modules/crypto/DigestAlgorithm;

    sget-object v0, Lexpo/modules/crypto/DigestAlgorithm;->$VALUES:[Lexpo/modules/crypto/DigestAlgorithm;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lexpo/modules/crypto/DigestAlgorithm;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lexpo/modules/crypto/DigestAlgorithm;->value:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lexpo/modules/crypto/DigestAlgorithm;",
            ">;"
        }
    .end annotation

    sget-object v0, Lexpo/modules/crypto/DigestAlgorithm;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lexpo/modules/crypto/DigestAlgorithm;
    .locals 1

    const-class v0, Lexpo/modules/crypto/DigestAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lexpo/modules/crypto/DigestAlgorithm;

    return-object v0
.end method

.method public static values()[Lexpo/modules/crypto/DigestAlgorithm;
    .locals 1

    sget-object v0, Lexpo/modules/crypto/DigestAlgorithm;->$VALUES:[Lexpo/modules/crypto/DigestAlgorithm;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lexpo/modules/crypto/DigestAlgorithm;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lexpo/modules/crypto/DigestAlgorithm;->value:Ljava/lang/String;

    return-object v0
.end method
