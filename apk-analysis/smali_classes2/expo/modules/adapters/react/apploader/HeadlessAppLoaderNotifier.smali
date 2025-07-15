.class public final Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;
.super Ljava/lang/Object;
.source "HeadlessAppLoaderNotifier.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHeadlessAppLoaderNotifier.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HeadlessAppLoaderNotifier.kt\nexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,32:1\n1855#2,2:33\n1855#2,2:35\n*S KotlinDebug\n*F\n+ 1 HeadlessAppLoaderNotifier.kt\nexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier\n*L\n22#1:33,2\n28#1:35,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010#\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u0010\u0010\r\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cJ\u000e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0006R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;",
        "",
        "()V",
        "listeners",
        "",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderListener;",
        "getListeners",
        "()Ljava/util/Set;",
        "notifyAppDestroyed",
        "",
        "appScopeKey",
        "",
        "notifyAppLoaded",
        "registerListener",
        "listener",
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


# static fields
.field public static final INSTANCE:Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;

.field private static final listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;

    invoke-direct {v0}, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;-><init>()V

    sput-object v0, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->INSTANCE:Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;

    .line 14
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    sput-object v0, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->listeners:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderListener;",
            ">;>;"
        }
    .end annotation

    .line 14
    sget-object v0, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->listeners:Ljava/util/Set;

    return-object v0
.end method

.method public final notifyAppDestroyed(Ljava/lang/String;)V
    .locals 7
    .param p1, "appScopeKey"    # Ljava/lang/String;

    .line 27
    if-eqz p1, :cond_2

    .line 28
    sget-object v0, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->listeners:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 35
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/ref/WeakReference;

    .local v4, "it":Ljava/lang/ref/WeakReference;
    const/4 v5, 0x0

    .line 28
    .local v5, "$i$a$-forEach-HeadlessAppLoaderNotifier$notifyAppDestroyed$1":I
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderListener;

    if-eqz v6, :cond_0

    invoke-interface {v6, p1}, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderListener;->appDestroyed(Ljava/lang/String;)V

    .line 35
    .end local v4    # "it":Ljava/lang/ref/WeakReference;
    .end local v5    # "$i$a$-forEach-HeadlessAppLoaderNotifier$notifyAppDestroyed$1":I
    :cond_0
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 36
    :cond_1
    nop

    .line 30
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :cond_2
    return-void
.end method

.method public final notifyAppLoaded(Ljava/lang/String;)V
    .locals 7
    .param p1, "appScopeKey"    # Ljava/lang/String;

    .line 21
    if-eqz p1, :cond_2

    .line 22
    sget-object v0, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->listeners:Ljava/util/Set;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 33
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/ref/WeakReference;

    .local v4, "it":Ljava/lang/ref/WeakReference;
    const/4 v5, 0x0

    .line 22
    .local v5, "$i$a$-forEach-HeadlessAppLoaderNotifier$notifyAppLoaded$1":I
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderListener;

    if-eqz v6, :cond_0

    invoke-interface {v6, p1}, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderListener;->appLoaded(Ljava/lang/String;)V

    .line 33
    .end local v4    # "it":Ljava/lang/ref/WeakReference;
    .end local v5    # "$i$a$-forEach-HeadlessAppLoaderNotifier$notifyAppLoaded$1":I
    :cond_0
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 34
    :cond_1
    nop

    .line 24
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :cond_2
    return-void
.end method

.method public final registerListener(Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderListener;)V
    .locals 2
    .param p1, "listener"    # Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object v0, Lexpo/modules/adapters/react/apploader/HeadlessAppLoaderNotifier;->listeners:Ljava/util/Set;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method
