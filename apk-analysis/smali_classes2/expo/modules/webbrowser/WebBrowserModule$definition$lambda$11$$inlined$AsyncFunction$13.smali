.class public final Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$13;
.super Lkotlin/jvm/internal/Lambda;
.source "ObjectDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/webbrowser/WebBrowserModule;->definition()Lexpo/modules/kotlin/modules/ModuleDefinitionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "[",
        "Ljava/lang/Object;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 WebBrowserModule.kt\nexpo/modules/webbrowser/WebBrowserModule\n*L\n1#1,611:1\n15#2,4:612\n87#3,12:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n260#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0005\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u0001\"\u0006\u0008\u0002\u0010\u0003\u0018\u00012\u0010\u0010\u0004\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00060\u0005H\n\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "P1",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lexpo/modules/webbrowser/WebBrowserModule;


# direct methods
.method public constructor <init>(Lexpo/modules/webbrowser/WebBrowserModule;)V
    .locals 0

    iput-object p1, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$13;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 259
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$13;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "<name for destructuring parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    aget-object v1, p1, v0

    .local v1, "p0":Ljava/lang/Object;
    const/4 v2, 0x1

    aget-object p1, p1, v2

    .line 260
    .local p1, "p1":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 612
    .local v3, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 261
    .end local v3    # "$i$f$enforceType":I
    move-object v3, p1

    check-cast v3, Lexpo/modules/webbrowser/OpenBrowserOptions;

    .local v3, "options":Lexpo/modules/webbrowser/OpenBrowserOptions;
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x0

    .line 616
    .local v5, "$i$a$-AsyncFunction-WebBrowserModule$definition$1$7":I
    iget-object v6, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$13;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-static {v6, v3}, Lexpo/modules/webbrowser/WebBrowserModule;->access$createCustomTabsIntent(Lexpo/modules/webbrowser/WebBrowserModule;Lexpo/modules/webbrowser/OpenBrowserOptions;)Landroid/content/Intent;

    move-result-object v6

    move-object v7, v6

    .local v7, "$this$definition_u24lambda_u2411_u24lambda_u2410_u24lambda_u249":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 617
    .local v8, "$i$a$-apply-WebBrowserModule$definition$1$7$intent$1":I
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 618
    nop

    .line 616
    .end local v7    # "$this$definition_u24lambda_u2411_u24lambda_u2410_u24lambda_u249":Landroid/content/Intent;
    .end local v8    # "$i$a$-apply-WebBrowserModule$definition$1$7$intent$1":I
    nop

    .line 620
    .local v6, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$13;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-virtual {v7}, Lexpo/modules/webbrowser/WebBrowserModule;->getCustomTabsResolver$expo_web_browser_debug()Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->canResolveIntent(Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 624
    iget-object v7, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$13;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-virtual {v7}, Lexpo/modules/webbrowser/WebBrowserModule;->getCustomTabsResolver$expo_web_browser_debug()Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;

    move-result-object v7

    invoke-virtual {v7, v6}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->startCustomTabs(Landroid/content/Intent;)V

    .line 627
    new-array v2, v2, [Lkotlin/Pair;

    const-string v7, "type"

    const-string v8, "opened"

    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v2, v0

    .line 626
    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 261
    .end local v3    # "options":Lexpo/modules/webbrowser/OpenBrowserOptions;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "$i$a$-AsyncFunction-WebBrowserModule$definition$1$7":I
    .end local v6    # "intent":Landroid/content/Intent;
    return-object v0

    .line 621
    .restart local v3    # "options":Lexpo/modules/webbrowser/OpenBrowserOptions;
    .restart local v4    # "url":Ljava/lang/String;
    .restart local v5    # "$i$a$-AsyncFunction-WebBrowserModule$definition$1$7":I
    .restart local v6    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Lexpo/modules/webbrowser/NoMatchingActivityException;

    invoke-direct {v0}, Lexpo/modules/webbrowser/NoMatchingActivityException;-><init>()V

    throw v0
.end method
