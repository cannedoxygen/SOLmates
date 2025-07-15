.class public final Lexpo/modules/devmenu/modules/DevMenuInternalModule$definition$lambda$13$$inlined$AsyncFunctionWithoutArgs$6;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devmenu/modules/DevMenuInternalModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$1\n+ 2 DevMenuInternalModule.kt\nexpo/modules/devmenu/modules/DevMenuInternalModule\n*L\n1#1,611:1\n32#2:612\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0003\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0010\u0010\u0002\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$1"
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
.field final synthetic $receiver$inlined:Lexpo/modules/devmenu/DevMenuManager;


# direct methods
.method public constructor <init>(Lexpo/modules/devmenu/DevMenuManager;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/devmenu/modules/DevMenuInternalModule$definition$lambda$13$$inlined$AsyncFunctionWithoutArgs$6;->$receiver$inlined:Lexpo/modules/devmenu/DevMenuManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 224
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/devmenu/modules/DevMenuInternalModule$definition$lambda$13$$inlined$AsyncFunctionWithoutArgs$6;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "it"    # [Ljava/lang/Object;

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$a$-AsyncFunctionWithoutArgs-DevMenuInternalModule$definition$1$7":I
    iget-object v1, p0, Lexpo/modules/devmenu/modules/DevMenuInternalModule$definition$lambda$13$$inlined$AsyncFunctionWithoutArgs$6;->$receiver$inlined:Lexpo/modules/devmenu/DevMenuManager;

    invoke-virtual {v1}, Lexpo/modules/devmenu/DevMenuManager;->toggleFastRefresh()V

    .end local v0    # "$i$a$-AsyncFunctionWithoutArgs-DevMenuInternalModule$definition$1$7":I
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 224
    return-object v0
.end method
