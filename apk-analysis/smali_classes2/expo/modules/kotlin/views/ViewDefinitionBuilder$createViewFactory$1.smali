.class final Lexpo/modules/kotlin/views/ViewDefinitionBuilder$createViewFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ViewDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->createViewFactory()Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/content/Context;",
        "Lexpo/modules/kotlin/AppContext;",
        "Landroid/view/View;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001\"\u0008\u0008\u0000\u0010\u0002*\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "Landroid/view/View;",
        "T",
        "context",
        "Landroid/content/Context;",
        "appContext",
        "Lexpo/modules/kotlin/AppContext;",
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
.field final synthetic this$0:Lexpo/modules/kotlin/views/ViewDefinitionBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/views/ViewDefinitionBuilder<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/views/ViewDefinitionBuilder<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/views/ViewDefinitionBuilder$createViewFactory$1;->this$0:Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)Landroid/view/View;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appContext"    # Lexpo/modules/kotlin/AppContext;

    .line 435
    nop

    .line 450
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 428
    nop

    .line 430
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lexpo/modules/kotlin/views/ViewDefinitionBuilder$createViewFactory$1;->this$0:Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    invoke-virtual {v3}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getViewClass()Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    const-class v5, Lexpo/modules/kotlin/AppContext;

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v3

    .line 432
    .local v3, "_":Ljava/lang/NoSuchMethodException;
    move-object v3, v2

    .line 428
    .end local v3    # "_":Ljava/lang/NoSuchMethodException;
    :goto_0
    nop

    .line 435
    .local v3, "fullConstructor":Ljava/lang/reflect/Constructor;
    if-eqz v3, :cond_0

    iget-object v0, p0, Lexpo/modules/kotlin/views/ViewDefinitionBuilder$createViewFactory$1;->this$0:Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    move-object v1, v3

    .local v1, "it":Ljava/lang/reflect/Constructor;
    const/4 v2, 0x0

    .line 436
    .local v2, "$i$a$-let-ViewDefinitionBuilder$createViewFactory$1$1":I
    nop

    .line 437
    :try_start_1
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 436
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v4, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 438
    :catchall_0
    move-exception v4

    .line 439
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, p1, p2, v4}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->access$handleFailureDuringViewCreation(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Ljava/lang/Throwable;)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    .line 436
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    return-object v4

    .end local v1    # "it":Ljava/lang/reflect/Constructor;
    .end local v2    # "$i$a$-let-ViewDefinitionBuilder$createViewFactory$1$1":I
    :cond_0
    nop

    .line 443
    nop

    .line 445
    :try_start_2
    iget-object v4, p0, Lexpo/modules/kotlin/views/ViewDefinitionBuilder$createViewFactory$1;->this$0:Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    invoke-virtual {v4}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getViewClass()Lkotlin/reflect/KClass;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getJavaClass(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v0, v1

    invoke-virtual {v4, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 446
    :catch_1
    move-exception v0

    .line 447
    .local v0, "_":Ljava/lang/NoSuchMethodException;
    nop

    .line 443
    .end local v0    # "_":Ljava/lang/NoSuchMethodException;
    :goto_2
    move-object v0, v2

    .line 450
    .local v0, "contextConstructor":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lexpo/modules/kotlin/views/ViewDefinitionBuilder$createViewFactory$1;->this$0:Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    move-object v2, v0

    .local v2, "it":Ljava/lang/reflect/Constructor;
    const/4 v4, 0x0

    .line 451
    .local v4, "$i$a$-let-ViewDefinitionBuilder$createViewFactory$1$2":I
    nop

    .line 452
    :try_start_3
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 451
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v5, Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 453
    :catchall_1
    move-exception v5

    .line 454
    .local v5, "e":Ljava/lang/Throwable;
    invoke-static {v1, p1, p2, v5}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->access$handleFailureDuringViewCreation(Lexpo/modules/kotlin/views/ViewDefinitionBuilder;Landroid/content/Context;Lexpo/modules/kotlin/AppContext;Ljava/lang/Throwable;)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    .line 451
    .end local v5    # "e":Ljava/lang/Throwable;
    :goto_3
    return-object v5

    .line 458
    .end local v2    # "it":Ljava/lang/reflect/Constructor;
    .end local v4    # "$i$a$-let-ViewDefinitionBuilder$createViewFactory$1$2":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lexpo/modules/kotlin/views/ViewDefinitionBuilder$createViewFactory$1;->this$0:Lexpo/modules/kotlin/views/ViewDefinitionBuilder;

    invoke-virtual {v2}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder;->getViewClass()Lkotlin/reflect/KClass;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Didn\'t find a correct constructor for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 427
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    move-object v1, p2

    check-cast v1, Lexpo/modules/kotlin/AppContext;

    invoke-virtual {p0, v0, v1}, Lexpo/modules/kotlin/views/ViewDefinitionBuilder$createViewFactory$1;->invoke(Landroid/content/Context;Lexpo/modules/kotlin/AppContext;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
