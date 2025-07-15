.class final Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PersistentFileLog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/core/logging/PersistentFileLog;->appendEntry(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
            "Ljava/lang/Error;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $entry:Ljava/lang/String;

.field final synthetic this$0:Lexpo/modules/core/logging/PersistentFileLog;


# direct methods
.method constructor <init>(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/core/logging/PersistentFileLog;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Error;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->this$0:Lexpo/modules/core/logging/PersistentFileLog;

    iput-object p2, p0, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->$entry:Ljava/lang/String;

    iput-object p3, p0, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->$completionHandler:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 45
    nop

    .line 46
    :try_start_0
    iget-object v0, p0, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->this$0:Lexpo/modules/core/logging/PersistentFileLog;

    invoke-static {v0}, Lexpo/modules/core/logging/PersistentFileLog;->access$ensureFileExists(Lexpo/modules/core/logging/PersistentFileLog;)V

    .line 47
    iget-object v0, p0, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->this$0:Lexpo/modules/core/logging/PersistentFileLog;

    invoke-static {v0}, Lexpo/modules/core/logging/PersistentFileLog;->access$getFileSize(Lexpo/modules/core/logging/PersistentFileLog;)J

    move-result-wide v0

    .line 48
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->$entry:Ljava/lang/String;

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->$entry:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_0
    nop

    .line 53
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->this$0:Lexpo/modules/core/logging/PersistentFileLog;

    invoke-static {v1, v0}, Lexpo/modules/core/logging/PersistentFileLog;->access$appendTextToFile(Lexpo/modules/core/logging/PersistentFileLog;Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->$completionHandler:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    .end local v0    # "text":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->$completionHandler:Lkotlin/jvm/functions/Function1;

    new-instance v2, Ljava/lang/Error;

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 55
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/Error;
    iget-object v1, p0, Lexpo/modules/core/logging/PersistentFileLog$appendEntry$2;->$completionHandler:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .end local v0    # "e":Ljava/lang/Error;
    :goto_1
    return-void
.end method
