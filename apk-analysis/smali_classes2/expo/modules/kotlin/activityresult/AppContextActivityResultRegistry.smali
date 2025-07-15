.class public final Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;
.super Ljava/lang/Object;
.source "AppContextActivityResultRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;,
        Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;,
        Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppContextActivityResultRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppContextActivityResultRegistry.kt\nexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AndroidExtensions.kt\nexpo/modules/kotlin/AndroidExtensionsKt\n+ 4 KotlinUtilities.kt\nexpo/modules/core/utilities/KotlinUtilitiesKt\n+ 5 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 6 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,373:1\n1#2:374\n10#3,5:375\n19#3,5:390\n19#3,5:395\n12#4:380\n526#5:381\n511#5,6:382\n1855#6,2:388\n*S KotlinDebug\n*F\n+ 1 AppContextActivityResultRegistry.kt\nexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry\n*L\n121#1:375,5\n285#1:390,5\n192#1:395,5\n172#1:380\n250#1:381\n250#1:382,6\n267#1:388,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u000289B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\"\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00122\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0007JH\u0010!\u001a\u00020\"\"\u0008\u0008\u0000\u0010#*\u00020\u000e\"\u0004\u0008\u0001\u0010$2\u0006\u0010%\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u00122\u0008\u0010\u001f\u001a\u0004\u0018\u00010 2\u0014\u0010&\u001a\u0010\u0012\u0004\u0012\u0002H#\u0012\u0004\u0012\u0002H$\u0018\u00010\u000cH\u0002J\u0008\u0010\'\u001a\u00020\u0012H\u0002JC\u0010(\u001a\u00020\"\"\u0008\u0008\u0000\u0010#*\u00020\u000e\"\u0004\u0008\u0001\u0010$2\u0006\u0010\u001d\u001a\u00020\u00122\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u0002H#\u0012\u0004\u0012\u0002H$0*2\u0008\u0008\u0001\u0010+\u001a\u0002H#H\u0007\u00a2\u0006\u0002\u0010,J\u000e\u0010-\u001a\u00020\"2\u0006\u0010.\u001a\u00020/J\\\u00100\u001a\u000e\u0012\u0004\u0012\u0002H#\u0012\u0004\u0012\u0002H$01\"\u0008\u0008\u0000\u0010#*\u00020\u000e\"\u0004\u0008\u0001\u0010$2\u0006\u0010%\u001a\u00020\u000b2\u0006\u00102\u001a\u0002032\u0012\u0010)\u001a\u000e\u0012\u0004\u0012\u0002H#\u0012\u0004\u0012\u0002H$0*2\u0012\u00104\u001a\u000e\u0012\u0004\u0012\u0002H#\u0012\u0004\u0012\u0002H$05H\u0007J\u000e\u00106\u001a\u00020\"2\u0006\u0010.\u001a\u00020/J\u0010\u00107\u001a\u00020\"2\u0006\u0010%\u001a\u00020\u000bH\u0007R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\"\u0010\t\u001a\u0016\u0012\u0004\u0012\u00020\u000b\u0012\u000c\u0012\n\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u00030\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000e0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00100\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u00120\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u000b0\u0014j\u0008\u0012\u0004\u0012\u00020\u000b`\u0015X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u001a\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006:"
    }
    d2 = {
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;",
        "",
        "currentActivityProvider",
        "Lexpo/modules/kotlin/providers/CurrentActivityProvider;",
        "(Lexpo/modules/kotlin/providers/CurrentActivityProvider;)V",
        "activity",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "getActivity",
        "()Landroidx/appcompat/app/AppCompatActivity;",
        "keyToCallbacksAndContract",
        "",
        "",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;",
        "keyToInputParam",
        "Ljava/io/Serializable;",
        "keyToLifecycleContainers",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;",
        "keyToRequestCode",
        "",
        "launchedKeys",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "pendingResults",
        "Landroid/os/Bundle;",
        "random",
        "Ljava/util/Random;",
        "requestCodeToKey",
        "dispatchResult",
        "",
        "requestCode",
        "resultCode",
        "data",
        "Landroid/content/Intent;",
        "doDispatch",
        "",
        "I",
        "O",
        "key",
        "callbacksAndContract",
        "generateRandomNumber",
        "onLaunch",
        "contract",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;",
        "input",
        "(ILexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Ljava/io/Serializable;)V",
        "persistInstanceState",
        "context",
        "Landroid/content/Context;",
        "register",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;",
        "lifecycleOwner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "fallbackCallback",
        "Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;",
        "restoreInstanceState",
        "unregister",
        "CallbacksAndContract",
        "LifecycleContainer",
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
.field private final currentActivityProvider:Lexpo/modules/kotlin/providers/CurrentActivityProvider;

.field private final keyToCallbacksAndContract:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract<",
            "**>;>;"
        }
    .end annotation
.end field

.field private final keyToInputParam:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private final keyToLifecycleContainers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final keyToRequestCode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private launchedKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pendingResults:Landroid/os/Bundle;

.field private random:Ljava/util/Random;

.field private final requestCodeToKey:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CrssfjASVnp9RZJ4pagdggKGdUo(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->register$lambda$4(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Xd8W_gZLMZWbUpXNLHMjYph8z5A(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->onLaunch$lambda$1(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;ILandroid/content/IntentSender$SendIntentException;)V

    return-void
.end method

.method public constructor <init>(Lexpo/modules/kotlin/providers/CurrentActivityProvider;)V
    .locals 1
    .param p1, "currentActivityProvider"    # Lexpo/modules/kotlin/providers/CurrentActivityProvider;

    const-string v0, "currentActivityProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->currentActivityProvider:Lexpo/modules/kotlin/providers/CurrentActivityProvider;

    .line 68
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->random:Ljava/util/Random;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->requestCodeToKey:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToRequestCode:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToLifecycleContainers:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToCallbacksAndContract:Ljava/util/Map;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToInputParam:Ljava/util/Map;

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->pendingResults:Landroid/os/Bundle;

    .line 65
    return-void
.end method

.method public static final synthetic access$getKeyToCallbacksAndContract$p(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    .line 65
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToCallbacksAndContract:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getKeyToInputParam$p(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    .line 65
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToInputParam:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getKeyToRequestCode$p(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;)Ljava/util/Map;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    .line 65
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToRequestCode:Ljava/util/Map;

    return-object v0
.end method

.method public static final synthetic access$getLaunchedKeys$p(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "$this"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;

    .line 65
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    return-object v0
.end method

.method private final doDispatch(Ljava/lang/String;ILandroid/content/Intent;Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "callbacksAndContract"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Ljava/io/Serializable;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "I",
            "Landroid/content/Intent;",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract<",
            "TI;TO;>;)V"
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToLifecycleContainers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 321
    .local v0, "currentLifecycleState":Landroidx/lifecycle/Lifecycle$State;
    :goto_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;->getMainCallback()Landroidx/activity/result/ActivityResultCallback;

    move-result-object v1

    :cond_1
    const-string v2, "null cannot be cast to non-null type I of expo.modules.kotlin.activityresult.AppContextActivityResultRegistry.doDispatch"

    if-eqz v1, :cond_2

    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToInputParam:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/io/Serializable;

    .line 325
    .local v1, "input":Ljava/io/Serializable;
    invoke-virtual {p4}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;->getMainCallback()Landroidx/activity/result/ActivityResultCallback;

    move-result-object v2

    invoke-virtual {p4}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;->getContract()Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    move-result-object v3

    invoke-interface {v3, v1, p2, p3}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;->parseResult(Ljava/io/Serializable;ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    .line 326
    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 327
    .end local v1    # "input":Ljava/io/Serializable;
    :cond_2
    if-eqz v0, :cond_3

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p4, :cond_3

    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 330
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToInputParam:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/io/Serializable;

    .line 331
    .restart local v1    # "input":Ljava/io/Serializable;
    invoke-virtual {p4}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;->getFallbackCallback()Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;

    move-result-object v2

    invoke-virtual {p4}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;->getContract()Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    move-result-object v3

    invoke-interface {v3, v1, p2, p3}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;->parseResult(Ljava/io/Serializable;ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;->onActivityResult(Ljava/io/Serializable;Ljava/lang/Object;)V

    .line 332
    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    .end local v1    # "input":Ljava/io/Serializable;
    :cond_3
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->pendingResults:Landroid/os/Bundle;

    new-instance v2, Landroidx/activity/result/ActivityResult;

    invoke-direct {v2, p2, p3}, Landroidx/activity/result/ActivityResult;-><init>(ILandroid/content/Intent;)V

    check-cast v2, Landroid/os/Parcelable;

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 337
    :goto_1
    return-void
.end method

.method private final generateRandomNumber()I
    .locals 5

    .line 340
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->random:Ljava/util/Random;

    const/high16 v1, 0x7fff0000

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    .line 341
    .local v0, "number":I
    :goto_0
    iget-object v3, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->requestCodeToKey:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    iget-object v3, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->random:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int v0, v3, v2

    goto :goto_0

    .line 344
    :cond_0
    return v0
.end method

.method private final getActivity()Landroidx/appcompat/app/AppCompatActivity;
    .locals 2

    .line 90
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->currentActivityProvider:Lexpo/modules/kotlin/providers/CurrentActivityProvider;

    invoke-interface {v0}, Lexpo/modules/kotlin/providers/CurrentActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 374
    :cond_1
    const/4 v0, 0x0

    .line 90
    .local v0, "$i$a$-requireNotNull-AppContextActivityResultRegistry$activity$1":I
    nop

    .end local v0    # "$i$a$-requireNotNull-AppContextActivityResultRegistry$activity$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Current Activity is not available at the moment"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final onLaunch$lambda$1(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;ILandroid/content/IntentSender$SendIntentException;)V
    .locals 3
    .param p0, "this$0"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;
    .param p1, "$requestCode"    # I
    .param p2, "$e"    # Landroid/content/IntentSender$SendIntentException;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$e"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    nop

    .line 137
    nop

    .line 138
    nop

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 140
    const-string v1, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    move-object v2, p2

    check-cast v2, Ljava/io/Serializable;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 136
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->dispatchResult(IILandroid/content/Intent;)Z

    .line 142
    return-void
.end method

.method private static final register$lambda$4(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 7
    .param p0, "this$0"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;
    .param p1, "$key"    # Ljava/lang/String;
    .param p3, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "event"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object p2, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Landroidx/lifecycle/Lifecycle$Event;->ordinal()I

    move-result v0

    aget p2, p2, v0

    packed-switch p2, :pswitch_data_0

    .line 214
    goto :goto_2

    .line 211
    :pswitch_0
    invoke-virtual {p0, p1}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->unregister(Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :pswitch_1
    iget-object p2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToCallbacksAndContract:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;

    if-nez p2, :cond_0

    .line 188
    return-void

    .line 186
    :cond_0
    nop

    .line 192
    .local p2, "callbacksAndContract":Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->pendingResults:Landroid/os/Bundle;

    .local v0, "$this$safeGetParcelable$iv":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 395
    .local v1, "$i$f$safeGetParcelable":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_1

    .line 396
    const-class v2, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    goto :goto_0

    .line 399
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 395
    :goto_0
    nop

    .line 192
    .end local v0    # "$this$safeGetParcelable$iv":Landroid/os/Bundle;
    .end local v1    # "$i$f$safeGetParcelable":I
    move-object v0, v2

    check-cast v0, Landroidx/activity/result/ActivityResult;

    .line 193
    .local v0, "activityResult":Landroidx/activity/result/ActivityResult;
    if-eqz v0, :cond_3

    move-object v1, v0

    .local v1, "it":Landroidx/activity/result/ActivityResult;
    const/4 v2, 0x0

    .line 194
    .local v2, "$i$a$-let-AppContextActivityResultRegistry$register$observer$1$1":I
    iget-object v3, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->pendingResults:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 197
    iget-object v3, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToInputParam:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type I of expo.modules.kotlin.activityresult.AppContextActivityResultRegistry.register$lambda$4$lambda$3"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/io/Serializable;

    .line 198
    .local v3, "input":Ljava/io/Serializable;
    invoke-virtual {p2}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;->getContract()Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;

    move-result-object v4

    invoke-virtual {v1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    move-result v5

    invoke-virtual {v1}, Landroidx/activity/result/ActivityResult;->getData()Landroid/content/Intent;

    move-result-object v6

    invoke-interface {v4, v3, v5, v6}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;->parseResult(Ljava/io/Serializable;ILandroid/content/Intent;)Ljava/lang/Object;

    move-result-object v4

    .line 200
    .local v4, "result":Ljava/lang/Object;
    invoke-virtual {p2}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;->getMainCallback()Landroidx/activity/result/ActivityResultCallback;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 202
    invoke-virtual {p2}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;->getMainCallback()Landroidx/activity/result/ActivityResultCallback;

    move-result-object v5

    invoke-interface {v5, v4}, Landroidx/activity/result/ActivityResultCallback;->onActivityResult(Ljava/lang/Object;)V

    goto :goto_1

    .line 205
    :cond_2
    invoke-virtual {p2}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;->getFallbackCallback()Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;->onActivityResult(Ljava/io/Serializable;Ljava/lang/Object;)V

    .line 207
    :goto_1
    nop

    .line 193
    .end local v1    # "it":Landroidx/activity/result/ActivityResult;
    .end local v2    # "$i$a$-let-AppContextActivityResultRegistry$register$observer$1$1":I
    .end local v3    # "input":Ljava/io/Serializable;
    .end local v4    # "result":Ljava/lang/Object;
    nop

    .line 216
    .end local v0    # "activityResult":Landroidx/activity/result/ActivityResult;
    .end local p2    # "callbacksAndContract":Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;
    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final dispatchResult(IILandroid/content/Intent;)Z
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 301
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->requestCodeToKey:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 302
    .local v0, "key":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToCallbacksAndContract:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;

    .line 303
    .local v1, "callbacksAndContract":Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;
    invoke-direct {p0, v0, p2, p3, v1}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->doDispatch(Ljava/lang/String;ILandroid/content/Intent;Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;)V

    .line 304
    const/4 v2, 0x1

    return v2
.end method

.method public final onLaunch(ILexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Ljava/io/Serializable;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "contract"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;
    .param p3, "input"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Ljava/io/Serializable;",
            "O:",
            "Ljava/lang/Object;",
            ">(I",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
            "TI;TO;>;TI;)V"
        }
    .end annotation

    const-string v0, "contract"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-interface {p2, v0, p3}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;->createIntent(Landroid/content/Context;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 107
    .local v1, "optionsBundle":Landroid/os/Bundle;
    const-string v2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    .line 121
    :cond_1
    const-string v2, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .local v2, "name$iv":Ljava/lang/String;
    move-object v3, v0

    .local v3, "$this$safeGetParcelableExtra$iv":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 375
    .local v4, "$i$f$safeGetParcelableExtra":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x21

    if-lt v5, v6, :cond_2

    .line 376
    const-class v5, Landroidx/activity/result/IntentSenderRequest;

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    goto :goto_0

    .line 379
    :cond_2
    invoke-virtual {v3, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 375
    :goto_0
    nop

    .line 121
    .end local v2    # "name$iv":Ljava/lang/String;
    .end local v3    # "$this$safeGetParcelableExtra$iv":Landroid/content/Intent;
    .end local v4    # "$i$f$safeGetParcelableExtra":I
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v2, v5

    check-cast v2, Landroidx/activity/result/IntentSenderRequest;

    .line 122
    .local v2, "request":Landroidx/activity/result/IntentSenderRequest;
    nop

    .line 125
    :try_start_0
    invoke-direct {p0}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    .line 126
    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    .line 127
    nop

    .line 128
    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getFillInIntent()Landroid/content/Intent;

    move-result-object v6

    .line 129
    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsMask()I

    move-result v7

    .line 130
    invoke-virtual {v2}, Landroidx/activity/result/IntentSenderRequest;->getFlagsValues()I

    move-result v8

    .line 131
    nop

    .line 132
    nop

    .line 124
    const/4 v9, 0x0

    move v5, p1

    move-object v10, v1

    invoke-static/range {v3 .. v10}, Landroidx/core/app/ActivityCompat;->startIntentSenderForResult(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 134
    :catch_0
    move-exception v3

    .line 135
    .local v3, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v5, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p1, v3}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$$ExternalSyntheticLambda0;-><init>(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;ILandroid/content/IntentSender$SendIntentException;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 111
    .end local v2    # "request":Landroidx/activity/result/IntentSenderRequest;
    .end local v3    # "e":Landroid/content/IntentSender$SendIntentException;
    :sswitch_1
    const-string v3, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 114
    :cond_3
    nop

    .line 115
    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 114
    if-nez v2, :cond_4

    .line 116
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 114
    :cond_4
    nop

    .line 117
    .local v2, "permissions":[Ljava/lang/String;
    invoke-direct {p0}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3, v2, p1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .end local v2    # "permissions":[Ljava/lang/String;
    goto :goto_2

    .line 148
    :cond_5
    :goto_1
    invoke-direct {p0}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2, v0, p1, v1}, Landroidx/core/app/ActivityCompat;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 151
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d7fa55f -> :sswitch_1
        -0x233c44cb -> :sswitch_0
    .end sparse-switch
.end method

.method public final persistInstanceState(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/activityresult/DataPersistor;-><init>(Landroid/content/Context;)V

    .line 248
    const-string v1, "launchedKeys"

    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/activityresult/DataPersistor;->addStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lexpo/modules/kotlin/activityresult/DataPersistor;

    move-result-object v0

    .line 249
    const-string v1, "keyToRequestCode"

    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToRequestCode:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/activityresult/DataPersistor;->addStringToIntMap(Ljava/lang/String;Ljava/util/Map;)Lexpo/modules/kotlin/activityresult/DataPersistor;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToInputParam:Ljava/util/Map;

    .local v1, "$this$filter$iv":Ljava/util/Map;
    const/4 v2, 0x0

    .line 381
    .local v2, "$i$f$filter":I
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v3, Ljava/util/Map;

    .local v3, "destination$iv$iv":Ljava/util/Map;
    move-object v4, v1

    .local v4, "$this$filterTo$iv$iv":Ljava/util/Map;
    const/4 v5, 0x0

    .line 382
    .local v5, "$i$f$filterTo":I
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 383
    .local v7, "element$iv$iv":Ljava/util/Map$Entry;
    const/4 v8, 0x0

    .line 250
    .local v8, "$i$a$-filter-AppContextActivityResultRegistry$persistInstanceState$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "key":Ljava/lang/String;
    iget-object v10, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    .line 383
    .end local v8    # "$i$a$-filter-AppContextActivityResultRegistry$persistInstanceState$1":I
    .end local v9    # "key":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 384
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v3, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 387
    .end local v7    # "element$iv$iv":Ljava/util/Map$Entry;
    :cond_1
    nop

    .line 381
    .end local v3    # "destination$iv$iv":Ljava/util/Map;
    .end local v4    # "$this$filterTo$iv$iv":Ljava/util/Map;
    .end local v5    # "$i$f$filterTo":I
    nop

    .line 250
    .end local v1    # "$this$filter$iv":Ljava/util/Map;
    .end local v2    # "$i$f$filter":I
    const-string v1, "keyToParamsForFallbackCallback"

    invoke-virtual {v0, v1, v3}, Lexpo/modules/kotlin/activityresult/DataPersistor;->addStringToSerializableMap(Ljava/lang/String;Ljava/util/Map;)Lexpo/modules/kotlin/activityresult/DataPersistor;

    move-result-object v0

    .line 251
    const-string v1, "pendingResult"

    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->pendingResults:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/activityresult/DataPersistor;->addBundle(Ljava/lang/String;Landroid/os/Bundle;)Lexpo/modules/kotlin/activityresult/DataPersistor;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->random:Ljava/util/Random;

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "random"

    invoke-virtual {v0, v2, v1}, Lexpo/modules/kotlin/activityresult/DataPersistor;->addSerializable(Ljava/lang/String;Ljava/io/Serializable;)Lexpo/modules/kotlin/activityresult/DataPersistor;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lexpo/modules/kotlin/activityresult/DataPersistor;->persist()V

    .line 254
    return-void
.end method

.method public final register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;)Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "lifecycleOwner"    # Landroidx/lifecycle/LifecycleOwner;
    .param p3, "contract"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;
    .param p4, "fallbackCallback"    # Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Ljava/io/Serializable;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract<",
            "TI;TO;>;",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback<",
            "TI;TO;>;)",
            "Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher<",
            "TI;TO;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contract"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fallbackCallback"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-interface {p2}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    .line 171
    .local v0, "lifecycle":Landroidx/lifecycle/Lifecycle;
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToCallbacksAndContract:Ljava/util/Map;

    new-instance v2, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;

    const/4 v3, 0x0

    invoke-direct {v2, p4, v3, p3}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$CallbacksAndContract;-><init>(Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;Landroidx/activity/result/ActivityResultCallback;Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToRequestCode:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "$this$ifNull$iv":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 380
    .local v2, "$i$f$ifNull":I
    if-nez v1, :cond_0

    const/4 v3, 0x0

    .line 173
    .local v3, "$i$a$-ifNull-AppContextActivityResultRegistry$register$1":I
    invoke-direct {p0}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->generateRandomNumber()I

    move-result v4

    .local v4, "requestCode":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 174
    iget-object v6, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->requestCodeToKey:Ljava/util/Map;

    invoke-interface {v6, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 175
    iget-object v6, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToRequestCode:Ljava/util/Map;

    invoke-interface {v6, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    nop

    .end local v3    # "$i$a$-ifNull-AppContextActivityResultRegistry$register$1":I
    .end local v4    # "requestCode":I
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 380
    nop

    .line 178
    .end local v1    # "$this$ifNull$iv":Ljava/lang/Object;
    .end local v2    # "$i$f$ifNull":I
    :cond_0
    new-instance v1, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$$ExternalSyntheticLambda1;-><init>(Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;Ljava/lang/String;)V

    .line 218
    .local v1, "observer":Landroidx/lifecycle/LifecycleEventObserver;
    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToLifecycleContainers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;

    if-nez v2, :cond_1

    new-instance v2, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;

    invoke-direct {v2, v0}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;-><init>(Landroidx/lifecycle/Lifecycle;)V

    .line 219
    .local v2, "lifecycleContainer":Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;
    :cond_1
    invoke-virtual {v2, v1}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;->addObserver(Landroidx/lifecycle/LifecycleEventObserver;)V

    .line 220
    iget-object v3, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToLifecycleContainers:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v3, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;

    invoke-direct {v3, p3, p0, p1, p4}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$register$2;-><init>(Lexpo/modules/kotlin/activityresult/AppContextActivityResultContract;Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;Ljava/lang/String;Lexpo/modules/kotlin/activityresult/AppContextActivityResultFallbackCallback;)V

    check-cast v3, Lexpo/modules/kotlin/activityresult/AppContextActivityResultLauncher;

    return-object v3
.end method

.method public final restoreInstanceState(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    new-instance v0, Lexpo/modules/kotlin/activityresult/DataPersistor;

    invoke-direct {v0, p1}, Lexpo/modules/kotlin/activityresult/DataPersistor;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, "dataPersistor":Lexpo/modules/kotlin/activityresult/DataPersistor;
    const-string v1, "launchedKeys"

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/activityresult/DataPersistor;->retrieveStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 374
    .local v1, "it":Ljava/util/ArrayList;
    const/4 v2, 0x0

    .line 262
    .local v2, "$i$a$-let-AppContextActivityResultRegistry$restoreInstanceState$1":I
    iput-object v1, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    .line 263
    .end local v1    # "it":Ljava/util/ArrayList;
    .end local v2    # "$i$a$-let-AppContextActivityResultRegistry$restoreInstanceState$1":I
    :cond_0
    const-string v1, "keyToParamsForFallbackCallback"

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/activityresult/DataPersistor;->retrieveStringToSerializableMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 374
    .local v1, "it":Ljava/util/Map;
    const/4 v2, 0x0

    .line 263
    .local v2, "$i$a$-let-AppContextActivityResultRegistry$restoreInstanceState$2":I
    iget-object v3, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToInputParam:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 264
    .end local v1    # "it":Ljava/util/Map;
    .end local v2    # "$i$a$-let-AppContextActivityResultRegistry$restoreInstanceState$2":I
    :cond_1
    const-string v1, "pendingResult"

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/activityresult/DataPersistor;->retrieveBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 374
    .local v1, "it":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 264
    .local v2, "$i$a$-let-AppContextActivityResultRegistry$restoreInstanceState$3":I
    iget-object v3, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->pendingResults:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 265
    .end local v1    # "it":Landroid/os/Bundle;
    .end local v2    # "$i$a$-let-AppContextActivityResultRegistry$restoreInstanceState$3":I
    :cond_2
    const-string v1, "random"

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/activityresult/DataPersistor;->retrieveSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 374
    .local v1, "it":Ljava/io/Serializable;
    const/4 v2, 0x0

    .line 265
    .local v2, "$i$a$-let-AppContextActivityResultRegistry$restoreInstanceState$4":I
    move-object v3, v1

    check-cast v3, Ljava/util/Random;

    iput-object v3, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->random:Ljava/util/Random;

    .line 266
    .end local v1    # "it":Ljava/io/Serializable;
    .end local v2    # "$i$a$-let-AppContextActivityResultRegistry$restoreInstanceState$4":I
    :cond_3
    const-string v1, "keyToRequestCode"

    invoke-virtual {v0, v1}, Lexpo/modules/kotlin/activityresult/DataPersistor;->retrieveStringToIntMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5

    .local v1, "it":Ljava/util/Map;
    const/4 v2, 0x0

    .line 267
    .local v2, "$i$a$-let-AppContextActivityResultRegistry$restoreInstanceState$5":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 388
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Ljava/util/Map$Entry;

    const/4 v8, 0x0

    .line 267
    .local v8, "$i$a$-forEach-AppContextActivityResultRegistry$restoreInstanceState$5$1":I
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    .local v7, "requestCode":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 268
    iget-object v11, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToRequestCode:Ljava/util/Map;

    invoke-interface {v11, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 269
    iget-object v11, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->requestCodeToKey:Ljava/util/Map;

    invoke-interface {v11, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    nop

    .line 388
    .end local v7    # "requestCode":I
    .end local v8    # "$i$a$-forEach-AppContextActivityResultRegistry$restoreInstanceState$5$1":I
    .end local v9    # "key":Ljava/lang/String;
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 389
    :cond_4
    nop

    .line 271
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .line 266
    .end local v1    # "it":Ljava/util/Map;
    .end local v2    # "$i$a$-let-AppContextActivityResultRegistry$restoreInstanceState$5":I
    nop

    .line 272
    :cond_5
    return-void
.end method

.method public final unregister(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->launchedKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToRequestCode:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 374
    .local v0, "it":I
    const/4 v1, 0x0

    .line 281
    .local v1, "$i$a$-let-AppContextActivityResultRegistry$unregister$1":I
    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->requestCodeToKey:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 283
    .end local v0    # "it":I
    .end local v1    # "$i$a$-let-AppContextActivityResultRegistry$unregister$1":I
    :cond_0
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToCallbacksAndContract:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->pendingResults:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->pendingResults:Landroid/os/Bundle;

    .local v0, "$this$safeGetParcelable$iv":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 390
    .local v1, "$i$f$safeGetParcelable":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x21

    if-lt v2, v3, :cond_1

    .line 391
    const-class v2, Landroidx/activity/result/ActivityResult;

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 390
    :goto_0
    nop

    .end local v0    # "$this$safeGetParcelable$iv":Landroid/os/Bundle;
    .end local v1    # "$i$f$safeGetParcelable":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dropping pending result for request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string v1, "ActivityResultRegistry"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->pendingResults:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 288
    :cond_2
    iget-object v0, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToLifecycleContainers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;

    if-eqz v0, :cond_3

    .local v0, "it":Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;
    const/4 v1, 0x0

    .line 289
    .local v1, "$i$a$-let-AppContextActivityResultRegistry$unregister$2":I
    invoke-virtual {v0}, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;->clearObservers()V

    .line 290
    iget-object v2, p0, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry;->keyToLifecycleContainers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;

    .line 288
    .end local v0    # "it":Lexpo/modules/kotlin/activityresult/AppContextActivityResultRegistry$LifecycleContainer;
    .end local v1    # "$i$a$-let-AppContextActivityResultRegistry$unregister$2":I
    nop

    .line 292
    :cond_3
    return-void
.end method
