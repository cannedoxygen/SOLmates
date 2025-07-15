.class public final Lexpo/modules/webbrowser/CustomTabsActivitiesHelperKt;
.super Ljava/lang/Object;
.source "CustomTabsActivitiesHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0008\u0010\u0002\u001a\u00020\u0003H\u0002\u001a\u0008\u0010\u0004\u001a\u00020\u0003H\u0002\u001a9\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u0002H\u00070\u0006\"\u0004\u0008\u0000\u0010\u0008\"\u0004\u0008\u0001\u0010\u0007*\u0008\u0012\u0004\u0012\u0002H\u00080\t2\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u0002H\u0008\u0012\u0004\u0012\u0002H\u00070\u000bH\u0082\u0008\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "DUMMY_URL",
        "",
        "createDefaultCustomTabsIntent",
        "Landroid/content/Intent;",
        "createDefaultCustomTabsServiceIntent",
        "mapToDistinctArrayList",
        "Ljava/util/ArrayList;",
        "R",
        "T",
        "",
        "mapper",
        "Lkotlin/Function1;",
        "expo-web-browser_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DUMMY_URL:Ljava/lang/String; = "https://expo.dev"


# direct methods
.method public static final synthetic access$createDefaultCustomTabsIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelperKt;->createDefaultCustomTabsIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$createDefaultCustomTabsServiceIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-static {}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelperKt;->createDefaultCustomTabsServiceIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static final createDefaultCustomTabsIntent()Landroid/content/Intent;
    .locals 5

    .line 115
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .local v0, "customTabsIntent":Landroidx/browser/customtabs/CustomTabsIntent;
    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const-string v2, "intent"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    .local v2, "$this$createDefaultCustomTabsIntent_u24lambda_u240":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 117
    .local v3, "$i$a$-apply-CustomTabsActivitiesHelperKt$createDefaultCustomTabsIntent$1":I
    const-string v4, "https://expo.dev"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    nop

    .line 116
    .end local v2    # "$this$createDefaultCustomTabsIntent_u24lambda_u240":Landroid/content/Intent;
    .end local v3    # "$i$a$-apply-CustomTabsActivitiesHelperKt$createDefaultCustomTabsIntent$1":I
    return-object v1
.end method

.method private static final createDefaultCustomTabsServiceIntent()Landroid/content/Intent;
    .locals 4

    .line 121
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v1, v0

    .local v1, "$this$createDefaultCustomTabsServiceIntent_u24lambda_u241":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 122
    .local v2, "$i$a$-apply-CustomTabsActivitiesHelperKt$createDefaultCustomTabsServiceIntent$1":I
    const-string v3, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    nop

    .line 121
    .end local v1    # "$this$createDefaultCustomTabsServiceIntent_u24lambda_u241":Landroid/content/Intent;
    .end local v2    # "$i$a$-apply-CustomTabsActivitiesHelperKt$createDefaultCustomTabsServiceIntent$1":I
    nop

    .line 123
    return-object v0
.end method

.method private static final mapToDistinctArrayList(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "$this$mapToDistinctArrayList"    # Ljava/util/Collection;
    .param p1, "mapper"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)",
            "Ljava/util/ArrayList<",
            "TR;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    .local v0, "$i$f$mapToDistinctArrayList":I
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 108
    .local v1, "resultSet":Ljava/util/LinkedHashSet;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 109
    .local v3, "element":Ljava/lang/Object;
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    .end local v3    # "element":Ljava/lang/Object;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v2
.end method
