.class final Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LinearGradientModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/lineargradient/LinearGradientModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lexpo/modules/lineargradient/LinearGradientView;",
        "[F",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "view",
        "Lexpo/modules/lineargradient/LinearGradientView;",
        "locations",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$2;

    invoke-direct {v0}, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$2;-><init>()V

    sput-object v0, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$2;->INSTANCE:Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 15
    move-object v0, p1

    check-cast v0, Lexpo/modules/lineargradient/LinearGradientView;

    move-object v1, p2

    check-cast v1, [F

    invoke-virtual {p0, v0, v1}, Lexpo/modules/lineargradient/LinearGradientModule$definition$1$1$2;->invoke(Lexpo/modules/lineargradient/LinearGradientView;[F)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lexpo/modules/lineargradient/LinearGradientView;[F)V
    .locals 2
    .param p1, "view"    # Lexpo/modules/lineargradient/LinearGradientView;
    .param p2, "locations"    # [F

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    if-eqz p2, :cond_0

    move-object v0, p2

    .local v0, "it":[F
    const/4 v1, 0x0

    .line 17
    .local v1, "$i$a$-let-LinearGradientModule$definition$1$1$2$1":I
    invoke-virtual {p1, v0}, Lexpo/modules/lineargradient/LinearGradientView;->setLocations([F)V

    .line 18
    nop

    .line 16
    .end local v0    # "it":[F
    .end local v1    # "$i$a$-let-LinearGradientModule$definition$1$1$2$1":I
    nop

    .line 19
    :cond_0
    return-void
.end method
