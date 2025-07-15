.class public final Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$9;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 WebBrowserModule.kt\nexpo/modules/webbrowser/WebBrowserModule\n*L\n1#1,611:1\n15#2,4:612\n60#3,4:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$8\n*L\n260#1:612,4\n*E\n"
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

    iput-object p1, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$9;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

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

    invoke-virtual {p0, v0}, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$9;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

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

    check-cast v3, Ljava/lang/String;

    .local v3, "packageName":Ljava/lang/String;
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .local v4, "url":Ljava/lang/String;
    const/4 v5, 0x0

    .line 616
    .local v5, "$i$a$-AsyncFunction-WebBrowserModule$definition$1$5":I
    iget-object v6, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$9;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-static {v6, v3}, Lexpo/modules/webbrowser/WebBrowserModule;->access$givenOrPreferredPackageName(Lexpo/modules/webbrowser/WebBrowserModule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 617
    .local v6, "resolvedPackageName":Ljava/lang/String;
    iget-object v7, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$9;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-virtual {v7}, Lexpo/modules/webbrowser/WebBrowserModule;->getConnectionHelper$expo_web_browser_debug()Lexpo/modules/webbrowser/CustomTabsConnectionHelper;

    move-result-object v7

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "parse(...)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v6, v8}, Lexpo/modules/webbrowser/CustomTabsConnectionHelper;->mayInitWithUrl(Ljava/lang/String;Landroid/net/Uri;)V

    .line 619
    new-array v2, v2, [Lkotlin/Pair;

    const-string v7, "servicePackage"

    invoke-static {v7, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v7

    aput-object v7, v2, v0

    .line 618
    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    .line 261
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "$i$a$-AsyncFunction-WebBrowserModule$definition$1$5":I
    .end local v6    # "resolvedPackageName":Ljava/lang/String;
    return-object v0
.end method
