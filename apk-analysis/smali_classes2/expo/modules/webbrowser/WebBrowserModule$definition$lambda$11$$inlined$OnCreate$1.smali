.class public final Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$OnCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModuleDefinitionBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnCreate$1\n+ 2 WebBrowserModule.kt\nexpo/modules/webbrowser/WebBrowserModule\n*L\n1#1,213:1\n27#2,7:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "expo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnCreate$1"
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

    iput-object p1, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$OnCreate$1;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$OnCreate$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 110
    const/4 v0, 0x0

    .line 214
    .local v0, "$i$a$-OnCreate-WebBrowserModule$definition$1$1":I
    iget-object v1, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$OnCreate$1;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    new-instance v2, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;

    iget-object v3, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$OnCreate$1;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-virtual {v3}, Lexpo/modules/webbrowser/WebBrowserModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v3

    invoke-virtual {v3}, Lexpo/modules/kotlin/AppContext;->getActivityProvider()Lexpo/modules/core/interfaces/ActivityProvider;

    move-result-object v3

    invoke-direct {v2, v3}, Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;-><init>(Lexpo/modules/core/interfaces/ActivityProvider;)V

    invoke-virtual {v1, v2}, Lexpo/modules/webbrowser/WebBrowserModule;->setCustomTabsResolver$expo_web_browser_debug(Lexpo/modules/webbrowser/CustomTabsActivitiesHelper;)V

    .line 215
    iget-object v1, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$OnCreate$1;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    .line 216
    iget-object v2, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$OnCreate$1;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-virtual {v2}, Lexpo/modules/webbrowser/WebBrowserModule;->getAppContext()Lexpo/modules/kotlin/AppContext;

    move-result-object v2

    invoke-virtual {v2}, Lexpo/modules/kotlin/AppContext;->getReactContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 215
    new-instance v3, Lexpo/modules/webbrowser/CustomTabsConnectionHelper;

    invoke-direct {v3, v2}, Lexpo/modules/webbrowser/CustomTabsConnectionHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Lexpo/modules/webbrowser/WebBrowserModule;->setConnectionHelper$expo_web_browser_debug(Lexpo/modules/webbrowser/CustomTabsConnectionHelper;)V

    .line 220
    nop

    .line 110
    .end local v0    # "$i$a$-OnCreate-WebBrowserModule$definition$1$1":I
    return-void

    .line 216
    .restart local v0    # "$i$a$-OnCreate-WebBrowserModule$definition$1$1":I
    :cond_0
    const/4 v1, 0x0

    .line 217
    .local v1, "$i$a$-requireNotNull-WebBrowserModule$definition$1$1$1":I
    nop

    .line 216
    .end local v1    # "$i$a$-requireNotNull-WebBrowserModule$definition$1$1$1":I
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot initialize WebBrowser, ReactContext is null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
