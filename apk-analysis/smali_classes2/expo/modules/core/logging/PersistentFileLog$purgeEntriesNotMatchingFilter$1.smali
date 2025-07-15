.class final Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PersistentFileLog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/core/logging/PersistentFileLog;->purgeEntriesNotMatchingFilter(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPersistentFileLog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PersistentFileLog.kt\nexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,145:1\n766#2:146\n857#2,2:147\n*S KotlinDebug\n*F\n+ 1 PersistentFileLog.kt\nexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1\n*L\n71#1:146\n71#1:147,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $completionHandler:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $filter:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lexpo/modules/core/logging/PersistentFileLog;


# direct methods
.method constructor <init>(Lexpo/modules/core/logging/PersistentFileLog;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/core/logging/PersistentFileLog;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Exception;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;->this$0:Lexpo/modules/core/logging/PersistentFileLog;

    iput-object p2, p0, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;->$filter:Lkotlin/jvm/functions/Function1;

    iput-object p3, p0, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;->$completionHandler:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 10

    .line 68
    nop

    .line 69
    :try_start_0
    iget-object v0, p0, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;->this$0:Lexpo/modules/core/logging/PersistentFileLog;

    invoke-static {v0}, Lexpo/modules/core/logging/PersistentFileLog;->access$ensureFileExists(Lexpo/modules/core/logging/PersistentFileLog;)V

    .line 70
    iget-object v0, p0, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;->this$0:Lexpo/modules/core/logging/PersistentFileLog;

    invoke-static {v0}, Lexpo/modules/core/logging/PersistentFileLog;->access$readFileLinesSync(Lexpo/modules/core/logging/PersistentFileLog;)Ljava/util/List;

    move-result-object v0

    .line 71
    .local v0, "contents":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    iget-object v2, p0, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;->$filter:Lkotlin/jvm/functions/Function1;

    .local v1, "$this$filter$iv":Ljava/lang/Iterable;
    .local v2, "predicate$iv":Lkotlin/jvm/functions/Function1;
    const/4 v3, 0x0

    .line 146
    .local v3, "$i$f$filter":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 147
    .local v6, "$i$f$filterTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .local v8, "element$iv$iv":Ljava/lang/Object;
    invoke-interface {v2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    .end local v8    # "element$iv$iv":Ljava/lang/Object;
    :cond_1
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$filterTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$filterTo":I
    check-cast v4, Ljava/util/List;

    .line 146
    nop

    .line 71
    .end local v1    # "$this$filter$iv":Ljava/lang/Iterable;
    .end local v2    # "predicate$iv":Lkotlin/jvm/functions/Function1;
    .end local v3    # "$i$f$filter":I
    move-object v1, v4

    .line 72
    .local v1, "reducedContents":Ljava/util/List;
    iget-object v2, p0, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;->this$0:Lexpo/modules/core/logging/PersistentFileLog;

    invoke-static {v2, v1}, Lexpo/modules/core/logging/PersistentFileLog;->access$writeFileLinesSync(Lexpo/modules/core/logging/PersistentFileLog;Ljava/util/List;)V

    .line 73
    iget-object v2, p0, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;->$completionHandler:Lkotlin/jvm/functions/Function1;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 74
    .end local v0    # "contents":Ljava/util/List;
    .end local v1    # "reducedContents":Ljava/util/List;
    :catchall_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog$purgeEntriesNotMatchingFilter$1;->$completionHandler:Lkotlin/jvm/functions/Function1;

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    return-void
.end method
