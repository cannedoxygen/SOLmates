.class public final Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;
.super Ljava/lang/Object;
.source "CustomTabsActivitiesHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCustomTabsActivitiesHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomTabsActivitiesHelper.kt\nexpo/modules/webbrowser/CustomTabsActivitiesHelper\n+ 2 CustomTabsActivitiesHelper.kt\nexpo/modules/webbrowser/CustomTabsActivitiesHelperKt\n*L\n1#1,124:1\n107#2,5:125\n107#2,5:130\n*S KotlinDebug\n*F\n+ 1 CustomTabsActivitiesHelper.kt\nexpo/modules/webbrowser/CustomTabsActivitiesHelper\n*L\n36#1:125,5\n46#1:130,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aJ\u001a\u0010\u001b\u001a\u0004\u0018\u00010\u000b2\u0010\u0010\u001c\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u000b\u0018\u00010\u001dJ\u0016\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u001d2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u000e\u0010 \u001a\u00020!2\u0006\u0010\u0019\u001a\u00020\u001aR\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0005\u001a\u00020\u00068BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u000e\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n8F\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u000b8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00148BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016\u00a8\u0006\""
    }
    d2 = {
        "Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;",
        "",
        "activityProvider",
        "Lexpo/modules/core/interfaces/ActivityProvider;",
        "(Lexpo/modules/core/interfaces/ActivityProvider;)V",
        "currentActivity",
        "Landroid/app/Activity;",
        "getCurrentActivity",
        "()Landroid/app/Activity;",
        "customTabsResolvingActivities",
        "Ljava/util/ArrayList;",
        "",
        "getCustomTabsResolvingActivities",
        "()Ljava/util/ArrayList;",
        "customTabsResolvingServices",
        "getCustomTabsResolvingServices",
        "defaultCustomTabsResolvingActivity",
        "getDefaultCustomTabsResolvingActivity",
        "()Ljava/lang/String;",
        "packageManager",
        "Landroid/content/pm/PackageManager;",
        "getPackageManager",
        "()Landroid/content/pm/PackageManager;",
        "canResolveIntent",
        "",
        "intent",
        "Landroid/content/Intent;",
        "getPreferredCustomTabsResolvingActivity",
        "packages",
        "",
        "getResolvingActivities",
        "Landroid/content/pm/ResolveInfo;",
        "startCustomTabs",
        "",
        "expo-web-browser_debug"
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
.field private final activityProvider:Lexpo/modules/core/interfaces/ActivityProvider;


# direct methods
.method public constructor <init>(Lexpo/modules/core/interfaces/ActivityProvider;)V
    .locals 0
    .param p1, "activityProvider"    # Lexpo/modules/core/interfaces/ActivityProvider;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->activityProvider:Lexpo/modules/core/interfaces/ActivityProvider;

    .line 18
    return-void
.end method

.method private final getCurrentActivity()Landroid/app/Activity;
    .locals 1

    .line 100
    iget-object v0, p0, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->activityProvider:Lexpo/modules/core/interfaces/ActivityProvider;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lexpo/modules/core/interfaces/ActivityProvider;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lexpo/modules/core/errors/CurrentActivityNotFoundException;

    invoke-direct {v0}, Lexpo/modules/core/errors/CurrentActivityNotFoundException;-><init>()V

    throw v0
.end method

.method private final getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 93
    invoke-direct {p0}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lexpo/modules/webbrowser/PackageManagerNotFoundException;

    invoke-direct {v0}, Lexpo/modules/webbrowser/PackageManagerNotFoundException;-><init>()V

    throw v0
.end method

.method private final getResolvingActivities(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "queryIntentActivities(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final canResolveIntent(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getResolvingActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final getCustomTabsResolvingActivities()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-static {}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelperKt;->access$createDefaultCustomTabsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getResolvingActivities(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 36
    nop

    .local v0, "$this$mapToDistinctArrayList$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 125
    .local v1, "$i$f$mapToDistinctArrayList":I
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 126
    .local v2, "resultSet$iv":Ljava/util/LinkedHashSet;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 127
    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .line 37
    .local v6, "$i$a$-mapToDistinctArrayList-CustomTabsActivitiesHelper$customTabsResolvingActivities$1":I
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v8, "packageName"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "$i$a$-mapToDistinctArrayList-CustomTabsActivitiesHelper$customTabsResolvingActivities$1":I
    invoke-virtual {v2, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    .end local v0    # "$this$mapToDistinctArrayList$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$mapToDistinctArrayList":I
    .end local v2    # "resultSet$iv":Ljava/util/LinkedHashSet;
    return-object v3
.end method

.method public final getCustomTabsResolvingServices()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelperKt;->access$createDefaultCustomTabsServiceIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v1, "queryIntentServices(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Collection;

    .line 46
    nop

    .local v0, "$this$mapToDistinctArrayList$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 130
    .local v1, "$i$f$mapToDistinctArrayList":I
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 131
    .local v2, "resultSet$iv":Ljava/util/LinkedHashSet;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 132
    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v6, 0x0

    .line 47
    .local v6, "$i$a$-mapToDistinctArrayList-CustomTabsActivitiesHelper$customTabsResolvingServices$1":I
    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const-string v8, "packageName"

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v6    # "$i$a$-mapToDistinctArrayList-CustomTabsActivitiesHelper$customTabsResolvingServices$1":I
    invoke-virtual {v2, v7}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 134
    .end local v4    # "element$iv":Ljava/lang/Object;
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .end local v0    # "$this$mapToDistinctArrayList$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$mapToDistinctArrayList":I
    .end local v2    # "resultSet$iv":Ljava/util/LinkedHashSet;
    return-object v3
.end method

.method public final getDefaultCustomTabsResolvingActivity()Ljava/lang/String;
    .locals 3

    .line 65
    invoke-direct {p0}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelperKt;->access$createDefaultCustomTabsIntent()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 66
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final getPreferredCustomTabsResolvingActivity(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .param p1, "packages"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 55
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getCustomTabsResolvingActivities()Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 56
    .local v0, "resolvedPackages":Ljava/util/List;
    :goto_0
    invoke-direct {p0}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, v0}, Landroidx/browser/customtabs/CustomTabsClient;->getPackageName(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final startCustomTabs(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-direct {p0}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 74
    return-void
.end method
