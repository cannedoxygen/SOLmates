.class public final Lexpo/modules/devlauncher/helpers/DevLauncherUrl;
.super Ljava/lang/Object;
.source "DevLauncherURLHelper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherURLHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherURLHelper.kt\nexpo/modules/devlauncher/helpers/DevLauncherUrl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,31:1\n1855#2,2:32\n*S KotlinDebug\n*F\n+ 1 DevLauncherURLHelper.kt\nexpo/modules/devlauncher/helpers/DevLauncherUrl\n*L\n17#1:32,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u001d\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\u0004\u00a8\u0006\r"
    }
    d2 = {
        "Lexpo/modules/devlauncher/helpers/DevLauncherUrl;",
        "",
        "url",
        "Landroid/net/Uri;",
        "(Landroid/net/Uri;)V",
        "queryParams",
        "",
        "",
        "getQueryParams",
        "()Ljava/util/Map;",
        "getUrl",
        "()Landroid/net/Uri;",
        "setUrl",
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
.field private final queryParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 9
    .param p1, "url"    # Landroid/net/Uri;

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->url:Landroid/net/Uri;

    .line 14
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    iput-object v1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->queryParams:Ljava/util/Map;

    .line 16
    nop

    .line 17
    iget-object v1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->url:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    const-string v2, "getQueryParameterNames(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 32
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    .local v5, "name":Ljava/lang/String;
    const/4 v6, 0x0

    .line 18
    .local v6, "$i$a$-forEach-DevLauncherUrl$1":I
    iget-object v7, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->queryParams:Ljava/util/Map;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v8, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->url:Landroid/net/Uri;

    invoke-virtual {v8, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_0

    const-string v8, ""

    :cond_0
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    nop

    .line 32
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "$i$a$-forEach-DevLauncherUrl$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 33
    :cond_1
    nop

    .line 21
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    iget-object v1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->url:Landroid/net/Uri;

    invoke-static {v1}, Lexpo/modules/devlauncher/helpers/DevLauncherURLHelperKt;->isDevLauncherUrl(Landroid/net/Uri;)Z

    move-result v1

    const-string v2, "http"

    if-eqz v1, :cond_2

    .line 22
    iget-object v1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->queryParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 23
    iget-object v1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->queryParams:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 24
    .local v0, "queryUrl":Landroid/net/Uri;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v2}, Lexpo/modules/devlauncher/helpers/DevLauncherURLHelperKt;->replaceEXPScheme(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->url:Landroid/net/Uri;

    .end local v0    # "queryUrl":Landroid/net/Uri;
    goto :goto_1

    .line 27
    :cond_2
    iget-object v0, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->url:Landroid/net/Uri;

    invoke-static {v0, v2}, Lexpo/modules/devlauncher/helpers/DevLauncherURLHelperKt;->replaceEXPScheme(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->url:Landroid/net/Uri;

    .line 29
    :cond_3
    :goto_1
    nop

    .line 13
    return-void
.end method


# virtual methods
.method public final getQueryParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->queryParams:Ljava/util/Map;

    return-object v0
.end method

.method public final getUrl()Landroid/net/Uri;
    .locals 1

    .line 13
    iget-object v0, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->url:Landroid/net/Uri;

    return-object v0
.end method

.method public final setUrl(Landroid/net/Uri;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/net/Uri;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherUrl;->url:Landroid/net/Uri;

    return-void
.end method
