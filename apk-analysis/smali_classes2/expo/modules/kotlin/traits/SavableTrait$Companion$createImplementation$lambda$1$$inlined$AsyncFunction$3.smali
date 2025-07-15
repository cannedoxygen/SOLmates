.class public final Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/traits/SavableTrait$Companion;->createImplementation(Lexpo/modules/kotlin/AppContext;Lkotlin/jvm/functions/Function3;)Lexpo/modules/kotlin/objects/ObjectDefinitionData;
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
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 SavableTrait.kt\nexpo/modules/kotlin/traits/SavableTrait$Companion\n*L\n1#1,611:1\n15#2,4:612\n34#3,6:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n260#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u0005H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0xb0
.end annotation


# instance fields
.field final synthetic $appContextWeakRef$inlined:Ljava/lang/ref/WeakReference;

.field final synthetic $saveToFile$inlined:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;->$appContextWeakRef$inlined:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;->$saveToFile$inlined:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 259
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Lkotlin/Unit;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .local v0, "p0":Ljava/lang/Object;
    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 260
    .local p1, "p1":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 612
    .local v1, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 261
    .end local v1    # "$i$f$enforceType":I
    move-object v1, v0

    .local v1, "input":Ljava/lang/Object;
    move-object v2, p1

    .local v2, "options":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 616
    .local v3, "$i$a$-AsyncFunction-SavableTrait$Companion$createImplementation$1$1":I
    iget-object v4, p0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;->$appContextWeakRef$inlined:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lexpo/modules/kotlin/AppContext;

    if-eqz v4, :cond_0

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 617
    .local v4, "context":Lexpo/modules/kotlin/AppContext;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lexpo/modules/kotlin/AppContext;->getCacheDirectory()Ljava/io/File;

    move-result-object v6

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 618
    .local v5, "outputFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 620
    iget-object v6, p0, Lexpo/modules/kotlin/traits/SavableTrait$Companion$createImplementation$lambda$1$$inlined$AsyncFunction$3;->$saveToFile$inlined:Lkotlin/jvm/functions/Function3;

    invoke-interface {v6, v5, v1, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    nop

    .end local v1    # "input":Ljava/lang/Object;
    .end local v2    # "options":Ljava/lang/Object;
    .end local v3    # "$i$a$-AsyncFunction-SavableTrait$Companion$createImplementation$1$1":I
    .end local v4    # "context":Lexpo/modules/kotlin/AppContext;
    .end local v5    # "outputFile":Ljava/io/File;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 261
    return-object v1

    .line 616
    .restart local v1    # "input":Ljava/lang/Object;
    .restart local v2    # "options":Ljava/lang/Object;
    .restart local v3    # "$i$a$-AsyncFunction-SavableTrait$Companion$createImplementation$1$1":I
    :cond_0
    new-instance v4, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;

    invoke-direct {v4}, Lexpo/modules/kotlin/exception/Exceptions$AppContextLost;-><init>()V

    throw v4
.end method
