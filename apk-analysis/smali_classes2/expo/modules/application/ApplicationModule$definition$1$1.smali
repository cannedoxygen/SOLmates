.class final Lexpo/modules/application/ApplicationModule$definition$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ApplicationModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/application/ApplicationModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
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
.field final synthetic this$0:Lexpo/modules/application/ApplicationModule;


# direct methods
.method constructor <init>(Lexpo/modules/application/ApplicationModule;)V
    .locals 1

    iput-object p1, p0, Lexpo/modules/application/ApplicationModule$definition$1$1;->this$0:Lexpo/modules/application/ApplicationModule;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lexpo/modules/application/ApplicationModule$definition$1$1;->invoke()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/Pair;

    iget-object v1, p0, Lexpo/modules/application/ApplicationModule$definition$1$1;->this$0:Lexpo/modules/application/ApplicationModule;

    invoke-static {v1}, Lexpo/modules/application/ApplicationModule;->access$getApplicationName(Lexpo/modules/application/ApplicationModule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationName"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 30
    iget-object v1, p0, Lexpo/modules/application/ApplicationModule$definition$1$1;->this$0:Lexpo/modules/application/ApplicationModule;

    invoke-static {v1}, Lexpo/modules/application/ApplicationModule;->access$getPackageName(Lexpo/modules/application/ApplicationModule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applicationId"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 29
    nop

    .line 31
    iget-object v1, p0, Lexpo/modules/application/ApplicationModule$definition$1$1;->this$0:Lexpo/modules/application/ApplicationModule;

    invoke-static {v1}, Lexpo/modules/application/ApplicationModule;->access$getVersionName(Lexpo/modules/application/ApplicationModule;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeApplicationVersion"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 29
    nop

    .line 32
    iget-object v1, p0, Lexpo/modules/application/ApplicationModule$definition$1$1;->this$0:Lexpo/modules/application/ApplicationModule;

    invoke-static {v1}, Lexpo/modules/application/ApplicationModule;->access$getVersionCode(Lexpo/modules/application/ApplicationModule;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "nativeBuildVersion"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 29
    nop

    .line 28
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
