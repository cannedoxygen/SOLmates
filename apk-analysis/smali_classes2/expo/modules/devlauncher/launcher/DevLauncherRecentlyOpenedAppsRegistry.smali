.class public final Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;
.super Ljava/lang/Object;
.source "DevLauncherRecentlyOpenedAppsRegistry.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherRecentlyOpenedAppsRegistry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherRecentlyOpenedAppsRegistry.kt\nexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n215#2,2:110\n1855#3,2:112\n1963#3,14:114\n*S KotlinDebug\n*F\n+ 1 DevLauncherRecentlyOpenedAppsRegistry.kt\nexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry\n*L\n72#1:110,2\n83#1:112,2\n95#1:114,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J,\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\n0\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eJ\u0006\u0010\u000f\u001a\u00020\u0008J\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0013R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;",
        "",
        "context",
        "Landroid/content/Context;",
        "(Landroid/content/Context;)V",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "appWasOpened",
        "",
        "url",
        "",
        "queryParams",
        "",
        "manifest",
        "Lexpo/modules/manifests/core/Manifest;",
        "clearRegistry",
        "getMostRecentApp",
        "Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;",
        "getRecentlyOpenedApps",
        "",
        "TimeHelper",
        "expo-dev-launcher_debug"
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
.field private final sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "expo.modules.devlauncher.recentyopenedapps"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "getSharedPreferences(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 22
    return-void
.end method


# virtual methods
.method public final appWasOpened(Ljava/lang/String;Ljava/util/Map;Lexpo/modules/manifests/core/Manifest;)V
    .locals 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "queryParams"    # Ljava/util/Map;
    .param p3, "manifest"    # Lexpo/modules/manifests/core/Manifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lexpo/modules/manifests/core/Manifest;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "queryParams"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 27
    .local v1, "appEntry":Ljava/util/Map;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 29
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    iget-object v3, p0, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    .local v3, "previousEntryJsonString":Ljava/lang/String;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    const-class v5, Ljava/util/Map;

    invoke-virtual {v4, v3, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 32
    .local v4, "previousEntry":Ljava/util/Map;
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type kotlin.collections.MutableMap<kotlin.String, kotlin.Any>"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 35
    .end local v3    # "previousEntryJsonString":Ljava/lang/String;
    .end local v4    # "previousEntry":Ljava/util/Map;
    :cond_0
    sget-object v3, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;->INSTANCE:Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;

    invoke-virtual {v3}, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;->getCurrentTime()J

    move-result-wide v3

    .line 37
    .local v3, "timestamp":J
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "u.expo.dev"

    if-eq v5, v6, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    const-string v6, "staging-u.expo.dev"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x1

    .local v5, "isEASUpdate":Z
    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 38
    const-string v7, "isEASUpdate"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const-string v6, "null cannot be cast to non-null type kotlin.String"

    if-eqz v5, :cond_3

    .line 41
    const-string v7, "updateMessage"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 42
    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Ljava/lang/String;

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_3
    if-eqz p3, :cond_5

    .line 47
    invoke-virtual {p3}, Lexpo/modules/manifests/core/Manifest;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "name"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p3}, Lexpo/modules/manifests/core/Manifest;->getRawJson()Lorg/json/JSONObject;

    move-result-object v6

    .line 52
    .local v6, "json":Lorg/json/JSONObject;
    if-eqz v5, :cond_5

    .line 53
    const-string v7, "metadata"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 54
    .local v7, "metadata":Lorg/json/JSONObject;
    const-string v8, "branchName"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, ""

    :cond_4
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "json":Lorg/json/JSONObject;
    .end local v7    # "metadata":Lorg/json/JSONObject;
    :cond_5
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 58
    const-string v7, "timestamp"

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->sharedPreferences:Landroid/content/SharedPreferences;

    .line 62
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 63
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v6, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, p1, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 64
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 65
    return-void
.end method

.method public final clearRegistry()V
    .locals 1

    .line 102
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 103
    return-void
.end method

.method public final getMostRecentApp()Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;
    .locals 11

    .line 92
    invoke-virtual {p0}, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->getRecentlyOpenedApps()Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "recentlyOpenedApps":Ljava/util/List;
    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    .line 95
    move-object v1, v0

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$maxByOrNull$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 114
    .local v3, "$i$f$maxByOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 115
    .local v4, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 117
    .local v2, "maxElem$iv":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 118
    :cond_1
    move-object v5, v2

    check-cast v5, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;

    .local v5, "it":Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;
    const/4 v6, 0x0

    .line 95
    .local v6, "$i$a$-maxByOrNull-DevLauncherRecentlyOpenedAppsRegistry$getMostRecentApp$1":I
    invoke-virtual {v5}, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;->getTimestamp()J

    move-result-wide v5

    .line 118
    .end local v5    # "it":Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;
    .end local v6    # "$i$a$-maxByOrNull-DevLauncherRecentlyOpenedAppsRegistry$getMostRecentApp$1":I
    nop

    .line 120
    .local v5, "maxValue$iv":J
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 121
    .local v7, "e$iv":Ljava/lang/Object;
    move-object v8, v7

    check-cast v8, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;

    .local v8, "it":Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;
    const/4 v9, 0x0

    .line 95
    .local v9, "$i$a$-maxByOrNull-DevLauncherRecentlyOpenedAppsRegistry$getMostRecentApp$1":I
    invoke-virtual {v8}, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;->getTimestamp()J

    move-result-wide v8

    .line 121
    .end local v8    # "it":Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;
    .end local v9    # "$i$a$-maxByOrNull-DevLauncherRecentlyOpenedAppsRegistry$getMostRecentApp$1":I
    nop

    .line 122
    .local v8, "v$iv":J
    cmp-long v10, v5, v8

    if-gez v10, :cond_3

    .line 123
    move-object v2, v7

    .line 124
    move-wide v5, v8

    .line 126
    .end local v7    # "e$iv":Ljava/lang/Object;
    .end local v8    # "v$iv":J
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 127
    nop

    .end local v1    # "$this$maxByOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "maxElem$iv":Ljava/lang/Object;
    .end local v3    # "$i$f$maxByOrNull":I
    .end local v4    # "iterator$iv":Ljava/util/Iterator;
    .end local v5    # "maxValue$iv":J
    :goto_0
    check-cast v2, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;

    goto :goto_1

    .line 97
    :cond_4
    nop

    .line 94
    :goto_1
    return-object v2
.end method

.method public final getRecentlyOpenedApps()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 69
    .local v0, "result":Ljava/util/List;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/List;

    .line 70
    .local v1, "toRemove":Ljava/util/List;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 72
    .local v2, "gson":Lcom/google/gson/Gson;
    iget-object v3, p0, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    const-string v4, "getAll(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .local v3, "$this$forEach$iv":Ljava/util/Map;
    const/4 v4, 0x0

    .line 110
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .local v6, "element$iv":Ljava/util/Map$Entry;
    const/4 v7, 0x0

    .line 72
    .local v7, "$i$a$-forEach-DevLauncherRecentlyOpenedAppsRegistry$getRecentlyOpenedApps$1":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "url":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 73
    .local v9, "appEntryString":Ljava/lang/Object;
    const-string v10, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    const-class v11, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;

    invoke-virtual {v2, v10, v11}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;

    .line 74
    .local v10, "appEntry":Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;
    sget-object v11, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;->INSTANCE:Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;

    invoke-virtual {v11}, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;->getCurrentTime()J

    move-result-wide v11

    invoke-virtual {v10}, Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;->getTimestamp()J

    move-result-wide v13

    sub-long/2addr v11, v13

    const-wide/32 v13, 0xf731400

    cmp-long v11, v11, v13

    if-lez v11, :cond_0

    .line 75
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_1

    .line 79
    :cond_0
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    nop

    .line 110
    .end local v7    # "$i$a$-forEach-DevLauncherRecentlyOpenedAppsRegistry$getRecentlyOpenedApps$1":I
    .end local v8    # "url":Ljava/lang/String;
    .end local v9    # "appEntryString":Ljava/lang/Object;
    .end local v10    # "appEntry":Lexpo/modules/devlauncher/launcher/DevLauncherAppEntry;
    :goto_1
    nop

    .end local v6    # "element$iv":Ljava/util/Map$Entry;
    goto :goto_0

    .line 111
    :cond_1
    nop

    .line 82
    .end local v3    # "$this$forEach$iv":Ljava/util/Map;
    .end local v4    # "$i$f$forEach":I
    iget-object v3, p0, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    move-object v4, v3

    .local v4, "$this$getRecentlyOpenedApps_u24lambda_u242":Landroid/content/SharedPreferences$Editor;
    const/4 v5, 0x0

    .line 83
    .local v5, "$i$a$-apply-DevLauncherRecentlyOpenedAppsRegistry$getRecentlyOpenedApps$2":I
    move-object v6, v1

    check-cast v6, Ljava/lang/Iterable;

    .local v6, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 112
    .local v7, "$i$f$forEach":I
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "element$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    .local v10, "it":Ljava/lang/String;
    const/4 v11, 0x0

    .line 84
    .local v11, "$i$a$-forEach-DevLauncherRecentlyOpenedAppsRegistry$getRecentlyOpenedApps$2$1":I
    invoke-interface {v4, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 85
    nop

    .line 112
    .end local v10    # "it":Ljava/lang/String;
    .end local v11    # "$i$a$-forEach-DevLauncherRecentlyOpenedAppsRegistry$getRecentlyOpenedApps$2$1":I
    nop

    .end local v9    # "element$iv":Ljava/lang/Object;
    goto :goto_2

    .line 113
    :cond_2
    nop

    .line 86
    .end local v6    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$forEach":I
    nop

    .line 82
    .end local v4    # "$this$getRecentlyOpenedApps_u24lambda_u242":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "$i$a$-apply-DevLauncherRecentlyOpenedAppsRegistry$getRecentlyOpenedApps$2":I
    nop

    .line 86
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    return-object v0
.end method
