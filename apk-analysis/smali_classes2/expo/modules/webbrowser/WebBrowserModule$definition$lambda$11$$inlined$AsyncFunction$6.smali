.class public final Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$6;
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
    value = "SMAP\nObjectDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n+ 2 EnforceType.kt\nexpo/modules/kotlin/types/EnforceTypeKt\n+ 3 WebBrowserModule.kt\nexpo/modules/webbrowser/WebBrowserModule\n*L\n1#1,611:1\n8#2,4:612\n48#3,9:616\n*S KotlinDebug\n*F\n+ 1 ObjectDefinitionBuilder.kt\nexpo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6\n*L\n247#1:612,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u0002H\u0001\"\u0006\u0008\u0000\u0010\u0001\u0018\u0001\"\u0006\u0008\u0001\u0010\u0002\u0018\u00012\u0010\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00050\u0004H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "<anonymous>",
        "R",
        "P0",
        "<name for destructuring parameter 0>",
        "",
        "",
        "invoke",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "expo/modules/kotlin/objects/ObjectDefinitionBuilder$AsyncFunction$6"
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

    iput-object p1, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 246
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$6;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
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

    .line 246
    const/4 v0, 0x0

    aget-object p1, p1, v0

    .line 247
    .local p1, "p0":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 612
    .local v1, "$i$f$enforceType":I
    nop

    .line 615
    nop

    .line 248
    .end local v1    # "$i$f$enforceType":I
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 616
    .local v2, "$i$a$-AsyncFunction-WebBrowserModule$definition$1$4":I
    iget-object v3, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-static {v3, v1}, Lexpo/modules/webbrowser/WebBrowserModule;->access$givenOrPreferredPackageName(Lexpo/modules/webbrowser/WebBrowserModule;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 617
    .local v3, "resolvedPackageName":Ljava/lang/String;
    iget-object v4, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$AsyncFunction$6;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-virtual {v4}, Lexpo/modules/webbrowser/WebBrowserModule;->getConnectionHelper$expo_web_browser_debug()Lexpo/modules/webbrowser/CustomTabsConnectionHelper;

    move-result-object v4

    invoke-virtual {v4, v3}, Lexpo/modules/webbrowser/CustomTabsConnectionHelper;->coolDown(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 619
    const/4 v4, 0x1

    new-array v4, v4, [Lkotlin/Pair;

    const-string v5, "servicePackage"

    invoke-static {v5, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    aput-object v5, v4, v0

    .line 618
    invoke-static {v4}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 622
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 617
    :goto_0
    nop

    .line 624
    .local v0, "result":Landroid/os/Bundle;
    nop

    .line 248
    .end local v0    # "result":Landroid/os/Bundle;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "$i$a$-AsyncFunction-WebBrowserModule$definition$1$4":I
    .end local v3    # "resolvedPackageName":Ljava/lang/String;
    return-object v0
.end method
