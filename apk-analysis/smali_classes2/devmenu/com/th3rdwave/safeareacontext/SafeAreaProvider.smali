.class public final Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;
.super Lcom/facebook/react/views/view/ReactViewGroup;
.source "SafeAreaProvider.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeAreaProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeAreaProvider.kt\ndevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider\n+ 2 ViewEventDelegate.kt\nexpo/modules/kotlin/viewevent/ViewEventDelegateKt\n*L\n1#1,69:1\n28#2,2:70\n*S KotlinDebug\n*F\n+ 1 SafeAreaProvider.kt\ndevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider\n*L\n15#1:70,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u001bB\u000f\u0008\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0014H\u0014J\u0008\u0010\u0016\u001a\u00020\u0014H\u0014J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016J\u0010\u0010\u0019\u001a\u00020\u00142\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0007R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000R!\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001c"
    }
    d2 = {
        "Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;",
        "Lcom/facebook/react/views/view/ReactViewGroup;",
        "Landroid/view/ViewTreeObserver$OnPreDrawListener;",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "mInsetsChangeListener",
        "Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;",
        "mLastFrame",
        "Ldevmenu/com/th3rdwave/safeareacontext/Rect;",
        "mLastInsets",
        "Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;",
        "onInsetsChange",
        "Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "Ldevmenu/com/th3rdwave/safeareacontext/InsetsChangeEvent;",
        "getOnInsetsChange",
        "()Lexpo/modules/kotlin/viewevent/ViewEventCallback;",
        "onInsetsChange$delegate",
        "Lexpo/modules/kotlin/viewevent/ViewEventDelegate;",
        "maybeUpdateInsets",
        "",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "onPreDraw",
        "",
        "setOnInsetsChangeListener",
        "listener",
        "OnInsetsChangeListener",
        "expo-dev-menu_debug"
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInsetsChangeListener:Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;

.field private mLastFrame:Ldevmenu/com/th3rdwave/safeareacontext/Rect;

.field private mLastInsets:Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

.field private final onInsetsChange$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 15
    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-string v2, "onInsetsChange"

    const-string v3, "getOnInsetsChange()Lexpo/modules/kotlin/viewevent/ViewEventCallback;"

    const-class v4, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/PropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/react/views/view/ReactViewGroup;-><init>(Landroid/content/Context;)V

    .line 15
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    .line 70
    .local v0, "$this$EventDispatcher_u24default$iv":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "coalescingKey$iv":Lkotlin/jvm/functions/Function1;
    const/4 v2, 0x0

    .line 71
    .local v2, "$i$f$EventDispatcher":I
    new-instance v3, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    invoke-direct {v3, v0, v1}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;-><init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .end local v0    # "$this$EventDispatcher_u24default$iv":Landroid/view/View;
    .end local v1    # "coalescingKey$iv":Lkotlin/jvm/functions/Function1;
    .end local v2    # "$i$f$EventDispatcher":I
    iput-object v3, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->onInsetsChange$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 17
    nop

    .line 18
    new-instance v0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$1;

    invoke-direct {v0, p0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$1;-><init>(Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;)V

    check-cast v0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;

    invoke-virtual {p0, v0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->setOnInsetsChangeListener(Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;)V

    .line 26
    nop

    .line 13
    return-void
.end method

.method public static final synthetic access$getOnInsetsChange(Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 1
    .param p0, "$this"    # Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;

    .line 12
    invoke-direct {p0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->getOnInsetsChange()Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method private final getOnInsetsChange()Lexpo/modules/kotlin/viewevent/ViewEventCallback;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lexpo/modules/kotlin/viewevent/ViewEventCallback<",
            "Ldevmenu/com/th3rdwave/safeareacontext/InsetsChangeEvent;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->onInsetsChange$delegate:Lexpo/modules/kotlin/viewevent/ViewEventDelegate;

    .line 1
    move-object v1, p0

    check-cast v1, Landroid/view/View;

    .line 15
    sget-object v2, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lexpo/modules/kotlin/viewevent/ViewEventDelegate;->getValue(Landroid/view/View;Lkotlin/reflect/KProperty;)Lexpo/modules/kotlin/viewevent/ViewEventCallback;

    move-result-object v0

    return-object v0
.end method

.method private final maybeUpdateInsets()V
    .locals 3

    .line 37
    move-object v0, p0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaUtils;->getSafeAreaInsets(Landroid/view/View;)Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    move-result-object v0

    .line 38
    .local v0, "edgeInsets":Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->getRootView()Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup;

    move-object v2, p0

    check-cast v2, Landroid/view/View;

    invoke-static {v1, v2}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaUtils;->getFrame(Landroid/view/ViewGroup;Landroid/view/View;)Ldevmenu/com/th3rdwave/safeareacontext/Rect;

    move-result-object v1

    .line 39
    .local v1, "frame":Ldevmenu/com/th3rdwave/safeareacontext/Rect;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 40
    iget-object v2, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->mLastInsets:Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->mLastFrame:Ldevmenu/com/th3rdwave/safeareacontext/Rect;

    if-eqz v2, :cond_0

    .line 41
    iget-object v2, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->mLastInsets:Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->mLastFrame:Ldevmenu/com/th3rdwave/safeareacontext/Rect;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 43
    :cond_0
    iget-object v2, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->mInsetsChangeListener:Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;

    invoke-static {v2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;

    invoke-interface {v2, p0, v0, v1}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;->onInsetsChange(Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;Ldevmenu/com/th3rdwave/safeareacontext/Rect;)V

    .line 44
    iput-object v0, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->mLastInsets:Ldevmenu/com/th3rdwave/safeareacontext/EdgeInsets;

    .line 45
    iput-object v1, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->mLastFrame:Ldevmenu/com/th3rdwave/safeareacontext/Rect;

    .line 47
    :cond_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 50
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onAttachedToWindow()V

    .line 51
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 52
    invoke-direct {p0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->maybeUpdateInsets()V

    .line 53
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/facebook/react/views/view/ReactViewGroup;->onDetachedFromWindow()V

    .line 57
    invoke-virtual {p0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 58
    return-void
.end method

.method public onPreDraw()Z
    .locals 1

    .line 61
    invoke-direct {p0}, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->maybeUpdateInsets()V

    .line 62
    const/4 v0, 0x1

    return v0
.end method

.method public final setOnInsetsChangeListener(Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;)V
    .locals 0
    .param p1, "listener"    # Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;

    .line 66
    iput-object p1, p0, Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider;->mInsetsChangeListener:Ldevmenu/com/th3rdwave/safeareacontext/SafeAreaProvider$OnInsetsChangeListener;

    .line 67
    return-void
.end method
