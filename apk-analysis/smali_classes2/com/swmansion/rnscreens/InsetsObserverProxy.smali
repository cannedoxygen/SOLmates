.class public final Lcom/swmansion/rnscreens/InsetsObserverProxy;
.super Ljava/lang/Object;
.source "InsetsObserverProxy.kt"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;
.implements Lcom/facebook/react/bridge/LifecycleEventListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInsetsObserverProxy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InsetsObserverProxy.kt\ncom/swmansion/rnscreens/InsetsObserverProxy\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,105:1\n1855#2,2:106\n1#3:108\n*S KotlinDebug\n*F\n+ 1 InsetsObserverProxy.kt\ncom/swmansion/rnscreens/InsetsObserverProxy\n*L\n42#1:106,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0001J\n\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0002J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u0016H\u0016J\u0008\u0010\u0019\u001a\u00020\u0012H\u0016J\u0008\u0010\u001a\u001a\u00020\u0012H\u0016J\u0008\u0010\u001b\u001a\u00020\u0012H\u0016J\u000e\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001d\u001a\u00020\nJ\u000e\u0010\u001e\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020 J\u000e\u0010!\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0001J\u0006\u0010\"\u001a\u00020\u0012R\u0014\u0010\u0004\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u00010\u000ej\u0008\u0012\u0004\u0012\u00020\u0001`\u000fX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/swmansion/rnscreens/InsetsObserverProxy;",
        "Landroidx/core/view/OnApplyWindowInsetsListener;",
        "Lcom/facebook/react/bridge/LifecycleEventListener;",
        "()V",
        "allowRegistration",
        "",
        "getAllowRegistration",
        "()Z",
        "eventSourceView",
        "Ljava/lang/ref/WeakReference;",
        "Landroid/view/View;",
        "hasBeenRegistered",
        "isObservingContextLifetime",
        "listeners",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "shouldForwardInsetsToView",
        "addOnApplyWindowInsetsListener",
        "",
        "listener",
        "getObservedView",
        "onApplyWindowInsets",
        "Landroidx/core/view/WindowInsetsCompat;",
        "v",
        "insets",
        "onHostDestroy",
        "onHostPause",
        "onHostResume",
        "registerOnView",
        "view",
        "registerWithContext",
        "context",
        "Lcom/facebook/react/bridge/ReactApplicationContext;",
        "removeOnApplyWindowInsetsListener",
        "unregister",
        "react-native-screens_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/swmansion/rnscreens/InsetsObserverProxy;

.field private static eventSourceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static hasBeenRegistered:Z

.field private static isObservingContextLifetime:Z

.field private static final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/core/view/OnApplyWindowInsetsListener;",
            ">;"
        }
    .end annotation
.end field

.field private static shouldForwardInsetsToView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;

    invoke-direct {v0}, Lcom/swmansion/rnscreens/InsetsObserverProxy;-><init>()V

    sput-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->INSTANCE:Lcom/swmansion/rnscreens/InsetsObserverProxy;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->listeners:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->eventSourceView:Ljava/lang/ref/WeakReference;

    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->shouldForwardInsetsToView:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getAllowRegistration()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->hasBeenRegistered:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->eventSourceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private final getObservedView()Landroid/view/View;
    .locals 1

    .line 103
    sget-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->eventSourceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final addOnApplyWindowInsetsListener(Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/core/view/OnApplyWindowInsetsListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroidx/core/view/WindowInsetsCompat;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "rollingInsets":Ljava/lang/Object;
    sget-boolean v1, Lcom/swmansion/rnscreens/InsetsObserverProxy;->shouldForwardInsetsToView:Z

    if-eqz v1, :cond_0

    .line 37
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    goto :goto_0

    .line 39
    :cond_0
    move-object v1, p2

    .line 36
    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 35
    move-object v0, v1

    .line 42
    sget-object v1, Lcom/swmansion/rnscreens/InsetsObserverProxy;->listeners:Ljava/util/ArrayList;

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 106
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroidx/core/view/OnApplyWindowInsetsListener;

    .local v5, "it":Landroidx/core/view/OnApplyWindowInsetsListener;
    const/4 v6, 0x0

    .line 43
    .local v6, "$i$a$-forEach-InsetsObserverProxy$onApplyWindowInsets$1":I
    invoke-interface {v5, p1, p2}, Landroidx/core/view/OnApplyWindowInsetsListener;->onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v7

    const-string v8, "onApplyWindowInsets(...)"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v7

    .line 44
    nop

    .line 106
    .end local v5    # "it":Landroidx/core/view/OnApplyWindowInsetsListener;
    .end local v6    # "$i$a$-forEach-InsetsObserverProxy$onApplyWindowInsets$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_1

    .line 107
    :cond_1
    nop

    .line 45
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return-object v0
.end method

.method public onHostDestroy()V
    .locals 3

    .line 67
    invoke-direct {p0}, Lcom/swmansion/rnscreens/InsetsObserverProxy;->getObservedView()Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "observedView":Landroid/view/View;
    sget-boolean v1, Lcom/swmansion/rnscreens/InsetsObserverProxy;->hasBeenRegistered:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 69
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 70
    sput-boolean v2, Lcom/swmansion/rnscreens/InsetsObserverProxy;->hasBeenRegistered:Z

    .line 71
    sget-object v1, Lcom/swmansion/rnscreens/InsetsObserverProxy;->eventSourceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 73
    :cond_0
    sput-boolean v2, Lcom/swmansion/rnscreens/InsetsObserverProxy;->isObservingContextLifetime:Z

    .line 74
    return-void
.end method

.method public onHostPause()V
    .locals 0

    .line 64
    return-void
.end method

.method public onHostResume()V
    .locals 0

    .line 62
    return-void
.end method

.method public final registerOnView(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/swmansion/rnscreens/InsetsObserverProxy;->getAllowRegistration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    move-object v0, p0

    check-cast v0, Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->eventSourceView:Ljava/lang/ref/WeakReference;

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->hasBeenRegistered:Z

    .line 92
    return v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final registerWithContext(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2
    .param p1, "context"    # Lcom/facebook/react/bridge/ReactApplicationContext;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    sget-boolean v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->isObservingContextLifetime:Z

    if-eqz v0, :cond_0

    .line 53
    nop

    .line 54
    nop

    .line 52
    const-string v0, "[RNScreens]"

    const-string v1, "InsetObserverProxy registers on new context while it has not been invalidated on the old one. Please report this as issue at https://github.com/software-mansion/react-native-screens/issues"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->isObservingContextLifetime:Z

    .line 59
    move-object v0, p0

    check-cast v0, Lcom/facebook/react/bridge/LifecycleEventListener;

    invoke-virtual {p1, v0}, Lcom/facebook/react/bridge/ReactApplicationContext;->addLifecycleEventListener(Lcom/facebook/react/bridge/LifecycleEventListener;)V

    .line 60
    return-void
.end method

.method public final removeOnApplyWindowInsetsListener(Landroidx/core/view/OnApplyWindowInsetsListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/core/view/OnApplyWindowInsetsListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/swmansion/rnscreens/InsetsObserverProxy;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method public final unregister()V
    .locals 3

    .line 98
    invoke-direct {p0}, Lcom/swmansion/rnscreens/InsetsObserverProxy;->getObservedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    .line 108
    .local v1, "it":Landroid/view/View;
    const/4 v2, 0x0

    .line 98
    .local v2, "$i$a$-takeIf-InsetsObserverProxy$unregister$1":I
    sget-boolean v1, Lcom/swmansion/rnscreens/InsetsObserverProxy;->hasBeenRegistered:Z

    .end local v1    # "it":Landroid/view/View;
    .end local v2    # "$i$a$-takeIf-InsetsObserverProxy$unregister$1":I
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .local v0, "it":Landroid/view/View;
    const/4 v1, 0x0

    .line 99
    .local v1, "$i$a$-let-InsetsObserverProxy$unregister$2":I
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 100
    nop

    .line 98
    .end local v0    # "it":Landroid/view/View;
    .end local v1    # "$i$a$-let-InsetsObserverProxy$unregister$2":I
    :cond_1
    nop

    .line 101
    return-void
.end method
