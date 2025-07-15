.class public final Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$10;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$3\n+ 2 WebBrowserModule.kt\nexpo/modules/webbrowser/WebBrowserModule\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,611:1\n69#2,7:612\n77#2,6:620\n1#3:619\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u00012\u0010\u0010\u0002\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00040\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "R",
        "it",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$3"
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

    iput-object p1, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$10;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 233
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$10;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "it"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 233
    const/4 v0, 0x0

    .line 612
    .local v0, "$i$a$-AsyncFunction-WebBrowserModule$definition$1$6":I
    iget-object v1, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$10;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-virtual {v1}, Lexpo/modules/webbrowser/WebBrowserModule;->getCustomTabsResolver$expo_web_browser_debug()Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getCustomTabsResolvingActivities()Ljava/util/ArrayList;

    move-result-object v1

    .line 613
    .local v1, "activities":Ljava/util/ArrayList;
    iget-object v2, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$10;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-virtual {v2}, Lexpo/modules/webbrowser/WebBrowserModule;->getCustomTabsResolver$expo_web_browser_debug()Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getCustomTabsResolvingServices()Ljava/util/ArrayList;

    move-result-object v2

    .line 614
    .local v2, "services":Ljava/util/ArrayList;
    iget-object v3, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$10;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-virtual {v3}, Lexpo/modules/webbrowser/WebBrowserModule;->getCustomTabsResolver$expo_web_browser_debug()Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/util/List;

    invoke-virtual {v3, v4}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getPreferredCustomTabsResolvingActivity(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "preferredPackage":Ljava/lang/String;
    iget-object v4, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$10;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-virtual {v4}, Lexpo/modules/webbrowser/WebBrowserModule;->getCustomTabsResolver$expo_web_browser_debug()Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;

    move-result-object v4

    invoke-virtual {v4}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;->getDefaultCustomTabsResolvingActivity()Ljava/lang/String;

    move-result-object v4

    .line 618
    .local v4, "defaultPackage":Ljava/lang/String;
    move-object v5, v4

    .line 619
    .local v5, "it":Ljava/lang/String;
    const/4 v6, 0x0

    .line 618
    .local v6, "$i$a$-takeIf-WebBrowserModule$definition$1$6$defaultCustomTabsPackage$1":I
    move-object v7, v1

    check-cast v7, Ljava/lang/Iterable;

    invoke-static {v7, v5}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v5

    .end local v5    # "it":Ljava/lang/String;
    .end local v6    # "$i$a$-takeIf-WebBrowserModule$definition$1$6$defaultCustomTabsPackage$1":I
    if-eqz v5, :cond_0

    move-object v5, v4

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 620
    .local v5, "defaultCustomTabsPackage":Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    move-object v7, v6

    .local v7, "$this$definition_u24lambda_u2411_u24lambda_u248_u24lambda_u247":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 621
    .local v8, "$i$a$-apply-WebBrowserModule$definition$1$6$1":I
    const-string v9, "browserPackages"

    invoke-virtual {v7, v9, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 622
    const-string v9, "servicePackages"

    invoke-virtual {v7, v9, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 623
    const-string v9, "preferredBrowserPackage"

    invoke-virtual {v7, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const-string v9, "defaultBrowserPackage"

    invoke-virtual {v7, v9, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    nop

    .line 620
    .end local v7    # "$this$definition_u24lambda_u2411_u24lambda_u248_u24lambda_u247":Landroid/os/Bundle;
    .end local v8    # "$i$a$-apply-WebBrowserModule$definition$1$6$1":I
    nop

    .line 233
    .end local v0    # "$i$a$-AsyncFunction-WebBrowserModule$definition$1$6":I
    .end local v1    # "activities":Ljava/util/ArrayList;
    .end local v2    # "services":Ljava/util/ArrayList;
    .end local v3    # "preferredPackage":Ljava/lang/String;
    .end local v4    # "defaultPackage":Ljava/lang/String;
    .end local v5    # "defaultCustomTabsPackage":Ljava/lang/String;
    return-object v6
.end method
