.class public final Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;
.super Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;
.source "AppContextActivityResultRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;)Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher<",
        "TI;TO;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001J#\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00028\u00002\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00028\u00010\nH\u0016\u00a2\u0006\u0002\u0010\u000bR \u0010\u0002\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u000c"
    }
    d2 = {
        "expo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;",
        "contract",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;",
        "getContract",
        "()Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;",
        "launch",
        "",
        "input",
        "callback",
        "Landroidx/activity/result/ActivityResultCallback;",
        "(Ljava/io/Serializable;Landroidx/activity/result/ActivityResultCallback;)V",
        "expo-modules-core_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $contract:Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
            "TI;TO;>;"
        }
    .end annotation
.end field

.field final synthetic $fallbackCallback:Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback<",
            "TI;TO;>;"
        }
    .end annotation
.end field

.field final synthetic $key:Ljava/lang/String;

.field private final contract:Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
            "TI;TO;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;


# direct methods
.method constructor <init>(Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;Ljava/lang/String;Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;)V
    .locals 0
    .param p1, "$contract"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;
    .param p2, "$receiver"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;
    .param p3, "$key"    # Ljava/lang/String;
    .param p4, "$fallbackCallback"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
            "TI;TO;>;",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback<",
            "TI;TO;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$contract:Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    iput-object p2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->this$0:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    iput-object p3, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    iput-object p4, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$fallbackCallback:Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;

    .line 222
    invoke-direct {p0}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;-><init>()V

    .line 239
    iput-object p1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->contract:Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    .line 222
    return-void
.end method


# virtual methods
.method public getContract()Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
            "TI;TO;>;"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->contract:Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    return-object v0
.end method

.method public launch(Ljava/io/Serializable;Landroidx/activity/result/ActivityResultCallback;)V
    .locals 6
    .param p1, "input"    # Ljava/io/Serializable;
    .param p2, "callback"    # Landroidx/activity/result/ActivityResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Landroidx/activity/result/ActivityResultCallback<",
            "TO;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->this$0:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    invoke-static {v0}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->access$getKeyToRequestCode$p(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    .local v0, "requestCode":I
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->this$0:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    invoke-static {v1}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->access$getKeyToCallbacksAndContract$p(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    new-instance v3, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;

    iget-object v4, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$fallbackCallback:Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;

    iget-object v5, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$contract:Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    invoke-direct {v3, v4, p2, v5}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;-><init>(Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;Landroidx/activity/result/ActivityResultCallback;Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->this$0:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    invoke-static {v1}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->access$getKeyToInputParam$p(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->this$0:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    invoke-static {v1}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->access$getLaunchedKeys$p(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    nop

    .line 232
    :try_start_0
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->this$0:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$contract:Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    invoke-virtual {v1, v0, v2, p1}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->onLaunch(ILexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Ljava/io/Serializable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    return-void

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->this$0:Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    invoke-static {v2}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->access$getLaunchedKeys$p(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 235
    throw v1

    .line 225
    .end local v0    # "requestCode":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;->$contract:Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to launch an unregistered ActivityResultLauncher with contract "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and input "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". You must ensure the ActivityResultLauncher is registered before calling launch()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
