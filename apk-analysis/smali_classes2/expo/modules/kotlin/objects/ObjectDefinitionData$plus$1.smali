.class final Lexpo/modules/kotlin/objects/ObjectDefinitionData$plus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionData.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/objects/ObjectDefinitionData;->plus(Lexpo/modules/kotlin/objects/ObjectDefinitionData;)Lexpo/modules/kotlin/objects/ObjectDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $other:Lexpo/modules/kotlin/objects/ObjectDefinitionData;

.field final synthetic this$0:Lexpo/modules/kotlin/objects/ObjectDefinitionData;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/objects/ObjectDefinitionData;Lexpo/modules/kotlin/objects/ObjectDefinitionData;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionData$plus$1;->this$0:Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    iput-object p2, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionData$plus$1;->$other:Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lexpo/modules/kotlin/objects/ObjectDefinitionData$plus$1;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionData$plus$1;->this$0:Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    invoke-virtual {v0}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getLegacyConstantsProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lexpo/modules/kotlin/objects/ObjectDefinitionData$plus$1;->$other:Lexpo/modules/kotlin/objects/ObjectDefinitionData;

    invoke-virtual {v1}, Lexpo/modules/kotlin/objects/ObjectDefinitionData;->getLegacyConstantsProvider()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v0, v1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
