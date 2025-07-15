.class public final Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$OnActivityDestroys$1;
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
    value = "SMAP\nModuleDefinitionBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModuleDefinitionBuilder.kt\nexpo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnActivityDestroys$1\n+ 2 WebBrowserModule.kt\nexpo/modules/webbrowser/WebBrowserModule\n*L\n1#1,213:1\n36#2,2:214\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "expo/modules/kotlin/modules/InternalModuleDefinitionBuilder$OnActivityDestroys$1"
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

    iput-object p1, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$OnActivityDestroys$1;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 152
    invoke-virtual {p0}, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$OnActivityDestroys$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 152
    const/4 v0, 0x0

    .line 214
    .local v0, "$i$a$-OnActivityDestroys-WebBrowserModule$definition$1$2":I
    iget-object v1, p0, Lexpo/modules/webbrowser/WebBrowserModule$definition$lambda$11$$inlined$OnActivityDestroys$1;->this$0:Lexpo/modules/webbrowser/WebBrowserModule;

    invoke-virtual {v1}, Lexpo/modules/webbrowser/WebBrowserModule;->getConnectionHelper$expo_web_browser_debug()Lexpo/modules/webbrowser/CustomTabsConnectionHelper;

    move-result-object v1

    invoke-virtual {v1}, Lexpo/modules/webbrowser/CustomTabsConnectionHelper;->destroy()V

    .line 215
    nop

    .line 152
    .end local v0    # "$i$a$-OnActivityDestroys-WebBrowserModule$definition$1$2":I
    return-void
.end method
