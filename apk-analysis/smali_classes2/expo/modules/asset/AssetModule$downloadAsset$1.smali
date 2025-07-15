.class final Lexpo/modules/asset/AssetModule$downloadAsset$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AssetModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/asset/AssetModule;->downloadAsset(Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.asset.AssetModule"
    f = "AssetModule.kt"
    i = {}
    l = {
        0x38
    }
    m = "downloadAsset"
    n = {}
    s = {}
.end annotation


# instance fields
.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lexpo/modules/asset/AssetModule;


# direct methods
.method constructor <init>(Lexpo/modules/asset/AssetModule;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/asset/AssetModule;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/asset/AssetModule$downloadAsset$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->this$0:Lexpo/modules/asset/AssetModule;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->result:Ljava/lang/Object;

    iget v0, p0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->label:I

    iget-object v0, p0, Lexpo/modules/asset/AssetModule$downloadAsset$1;->this$0:Lexpo/modules/asset/AssetModule;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1, v1, v1, v2}, Lexpo/modules/asset/AssetModule;->access$downloadAsset(Lexpo/modules/asset/AssetModule;Lexpo/modules/kotlin/AppContext;Ljava/net/URI;Ljava/io/File;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
