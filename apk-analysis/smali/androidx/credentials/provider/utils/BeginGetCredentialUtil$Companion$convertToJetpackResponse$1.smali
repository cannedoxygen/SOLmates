.class final Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToJetpackResponse$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BeginGetCredentialUtil.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion;->convertToJetpackResponse(Landroid/service/credentials/BeginGetCredentialResponse;)Landroidx/credentials/provider/BeginGetCredentialResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/service/credentials/CredentialEntry;",
        "Landroidx/credentials/provider/CredentialEntry;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Landroidx/credentials/provider/CredentialEntry;",
        "entry",
        "Landroid/service/credentials/CredentialEntry;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToJetpackResponse$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToJetpackResponse$1;

    invoke-direct {v0}, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToJetpackResponse$1;-><init>()V

    sput-object v0, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToJetpackResponse$1;->INSTANCE:Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToJetpackResponse$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/service/credentials/CredentialEntry;)Landroidx/credentials/provider/CredentialEntry;
    .locals 3
    .param p1, "entry"    # Landroid/service/credentials/CredentialEntry;

    .line 158
    sget-object v0, Landroidx/credentials/provider/CredentialEntry;->Companion:Landroidx/credentials/provider/CredentialEntry$Companion;

    invoke-virtual {p1}, Landroid/service/credentials/CredentialEntry;->getSlice()Landroid/app/slice/Slice;

    move-result-object v1

    const-string v2, "entry.slice"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/credentials/provider/CredentialEntry$Companion;->createFrom$credentials_release(Landroid/app/slice/Slice;)Landroidx/credentials/provider/CredentialEntry;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 158
    move-object v0, p1

    check-cast v0, Landroid/service/credentials/CredentialEntry;

    invoke-virtual {p0, v0}, Landroidx/credentials/provider/utils/BeginGetCredentialUtil$Companion$convertToJetpackResponse$1;->invoke(Landroid/service/credentials/CredentialEntry;)Landroidx/credentials/provider/CredentialEntry;

    move-result-object v0

    return-object v0
.end method
