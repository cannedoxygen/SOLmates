.class final Lexpo/modules/kotlin/ExpoBridgeModule$installModules$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpoBridgeModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/ExpoBridgeModule;->installModules()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "()Ljava/lang/Boolean;"
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
.field final synthetic this$0:Lexpo/modules/kotlin/ExpoBridgeModule;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/ExpoBridgeModule;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/kotlin/ExpoBridgeModule$installModules$1;->this$0:Lexpo/modules/kotlin/ExpoBridgeModule;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Boolean;
    .locals 1

    .line 24
    iget-object v0, p0, Lexpo/modules/kotlin/ExpoBridgeModule$installModules$1;->this$0:Lexpo/modules/kotlin/ExpoBridgeModule;

    invoke-static {v0}, Lexpo/modules/kotlin/ExpoBridgeModule;->access$getReactApplicationContext(Lexpo/modules/kotlin/ExpoBridgeModule;)Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->hasActiveReactInstance()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lexpo/modules/kotlin/ExpoBridgeModule$installModules$1;->invoke()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
