.class public final Lexpo/modules/ApplicationLifecycleDispatcher;
.super Ljava/lang/Object;
.source "ApplicationLifecycleDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nApplicationLifecycleDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApplicationLifecycleDispatcher.kt\nexpo/modules/ApplicationLifecycleDispatcher\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,28:1\n1360#2:29\n1446#2,5:30\n1855#2,2:36\n1855#2,2:38\n1#3:35\n*S KotlinDebug\n*F\n+ 1 ApplicationLifecycleDispatcher.kt\nexpo/modules/ApplicationLifecycleDispatcher\n*L\n14#1:29\n14#1:30,5\n20#1:36,2\n25#1:38,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0007\u001a\u00020\u0008H\u0003J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0008H\u0007J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\rH\u0007R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lexpo/modules/ApplicationLifecycleDispatcher;",
        "",
        "()V",
        "listeners",
        "",
        "Lexpo/modules/core/interfaces/ApplicationLifecycleListener;",
        "getCachedListeners",
        "application",
        "Landroid/app/Application;",
        "onApplicationCreate",
        "",
        "onConfigurationChanged",
        "newConfig",
        "Landroid/content/res/Configuration;",
        "expo_debug"
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
.field public static final INSTANCE:Lexpo/modules/ApplicationLifecycleDispatcher;

.field private static listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lexpo/modules/core/interfaces/ApplicationLifecycleListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/ApplicationLifecycleDispatcher;

    invoke-direct {v0}, Lexpo/modules/ApplicationLifecycleDispatcher;-><init>()V

    sput-object v0, Lexpo/modules/ApplicationLifecycleDispatcher;->INSTANCE:Lexpo/modules/ApplicationLifecycleDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getCachedListeners(Landroid/app/Application;)Ljava/util/List;
    .locals 11
    .param p1, "application"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            ")",
            "Ljava/util/List<",
            "Lexpo/modules/core/interfaces/ApplicationLifecycleListener;",
            ">;"
        }
    .end annotation

    .line 13
    sget-object v0, Lexpo/modules/ApplicationLifecycleDispatcher;->listeners:Ljava/util/List;

    if-nez v0, :cond_1

    sget-object v0, Lexpo/modules/ExpoModulesPackage;->Companion:Lexpo/modules/ExpoModulesPackage$Companion;

    invoke-virtual {v0}, Lexpo/modules/ExpoModulesPackage$Companion;->getPackageList()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 14
    nop

    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 29
    .local v1, "$i$f$flatMap":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 30
    .local v4, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 31
    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lexpo/modules/core/interfaces/Package;

    .local v7, "it":Lexpo/modules/core/interfaces/Package;
    const/4 v8, 0x0

    .line 14
    .local v8, "$i$a$-flatMap-ApplicationLifecycleDispatcher$getCachedListeners$1":I
    move-object v9, p1

    check-cast v9, Landroid/content/Context;

    invoke-interface {v7, v9}, Lexpo/modules/core/interfaces/Package;->createApplicationLifecycleListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    const-string v10, "createApplicationLifecycleListeners(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .end local v7    # "it":Lexpo/modules/core/interfaces/Package;
    .end local v8    # "$i$a$-flatMap-ApplicationLifecycleDispatcher$getCachedListeners$1":I
    move-object v7, v9

    check-cast v7, Ljava/lang/Iterable;

    .line 32
    .local v7, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v2, v7}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 34
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v7    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$flatMapTo":I
    check-cast v2, Ljava/util/List;

    .line 29
    nop

    .line 15
    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$flatMap":I
    move-object v0, v2

    .line 35
    .local v0, "it":Ljava/util/List;
    const/4 v1, 0x0

    .line 15
    .local v1, "$i$a$-also-ApplicationLifecycleDispatcher$getCachedListeners$2":I
    sput-object v0, Lexpo/modules/ApplicationLifecycleDispatcher;->listeners:Ljava/util/List;

    .line 13
    .end local v0    # "it":Ljava/util/List;
    .end local v1    # "$i$a$-also-ApplicationLifecycleDispatcher$getCachedListeners$2":I
    :cond_1
    return-object v0
.end method

.method public static final onApplicationCreate(Landroid/app/Application;)V
    .locals 6
    .param p0, "application"    # Landroid/app/Application;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lexpo/modules/ApplicationLifecycleDispatcher;->INSTANCE:Lexpo/modules/ApplicationLifecycleDispatcher;

    invoke-direct {v0, p0}, Lexpo/modules/ApplicationLifecycleDispatcher;->getCachedListeners(Landroid/app/Application;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 36
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lexpo/modules/core/interfaces/ApplicationLifecycleListener;

    .local v4, "it":Lexpo/modules/core/interfaces/ApplicationLifecycleListener;
    const/4 v5, 0x0

    .line 20
    .local v5, "$i$a$-forEach-ApplicationLifecycleDispatcher$onApplicationCreate$1":I
    invoke-interface {v4, p0}, Lexpo/modules/core/interfaces/ApplicationLifecycleListener;->onCreate(Landroid/app/Application;)V

    .line 36
    .end local v4    # "it":Lexpo/modules/core/interfaces/ApplicationLifecycleListener;
    .end local v5    # "$i$a$-forEach-ApplicationLifecycleDispatcher$onApplicationCreate$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 37
    :cond_0
    nop

    .line 21
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public static final onConfigurationChanged(Landroid/app/Application;Landroid/content/res/Configuration;)V
    .locals 6
    .param p0, "application"    # Landroid/app/Application;
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lexpo/modules/ApplicationLifecycleDispatcher;->INSTANCE:Lexpo/modules/ApplicationLifecycleDispatcher;

    invoke-direct {v0, p0}, Lexpo/modules/ApplicationLifecycleDispatcher;->getCachedListeners(Landroid/app/Application;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 38
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Lexpo/modules/core/interfaces/ApplicationLifecycleListener;

    .local v4, "it":Lexpo/modules/core/interfaces/ApplicationLifecycleListener;
    const/4 v5, 0x0

    .line 25
    .local v5, "$i$a$-forEach-ApplicationLifecycleDispatcher$onConfigurationChanged$1":I
    invoke-interface {v4, p1}, Lexpo/modules/core/interfaces/ApplicationLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 38
    .end local v4    # "it":Lexpo/modules/core/interfaces/ApplicationLifecycleListener;
    .end local v5    # "$i$a$-forEach-ApplicationLifecycleDispatcher$onConfigurationChanged$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 39
    :cond_0
    nop

    .line 26
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method
