.class final Lexpo/modules/securestore/SecureStoreModule$setItemImpl$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SecureStoreModule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/securestore/SecureStoreModule;->setItemImpl(Ljava/lang/String;Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "expo.modules.securestore.SecureStoreModule"
    f = "SecureStoreModule.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0,
        0x0
    }
    l = {
        0xcc,
        0xd7
    }
    m = "setItemImpl"
    n = {
        "this",
        "key",
        "value",
        "options",
        "keychainAwareKey",
        "prefs",
        "keyIsInvalidated"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$4",
        "L$5",
        "Z$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field Z$0:Z

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lexpo/modules/securestore/SecureStoreModule;


# direct methods
.method constructor <init>(Lexpo/modules/securestore/SecureStoreModule;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/securestore/SecureStoreModule;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/securestore/SecureStoreModule$setItemImpl$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/securestore/SecureStoreModule$setItemImpl$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lexpo/modules/securestore/SecureStoreModule$setItemImpl$1;->result:Ljava/lang/Object;

    iget v0, p0, Lexpo/modules/securestore/SecureStoreModule$setItemImpl$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lexpo/modules/securestore/SecureStoreModule$setItemImpl$1;->label:I

    iget-object v1, p0, Lexpo/modules/securestore/SecureStoreModule$setItemImpl$1;->this$0:Lexpo/modules/securestore/SecureStoreModule;

    const/4 v5, 0x0

    move-object v6, p0

    check-cast v6, Lkotlin/coroutines/Continuation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lexpo/modules/securestore/SecureStoreModule;->access$setItemImpl(Lexpo/modules/securestore/SecureStoreModule;Ljava/lang/String;Ljava/lang/String;Lexpo/modules/securestore/SecureStoreOptions;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
