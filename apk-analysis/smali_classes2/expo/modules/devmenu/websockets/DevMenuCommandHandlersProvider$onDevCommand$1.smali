.class public final Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1;
.super Lcom/facebook/react/packagerconnection/NotificationOnlyHandler;
.source "DevMenuCommandHandlersProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;-><init>(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Lexpo/interfaces/devmenu/ReactHostWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "expo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1",
        "Lcom/facebook/react/packagerconnection/NotificationOnlyHandler;",
        "onNotification",
        "",
        "params",
        "",
        "expo-dev-menu_debug"
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
.field final synthetic this$0:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;


# direct methods
.method constructor <init>(Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;)V
    .locals 0
    .param p1, "$receiver"    # Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;

    iput-object p1, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1;->this$0:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;

    .line 37
    invoke-direct {p0}, Lcom/facebook/react/packagerconnection/NotificationOnlyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotification(Ljava/lang/Object;)V
    .locals 6
    .param p1, "params"    # Ljava/lang/Object;

    .line 39
    iget-object v0, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1;->this$0:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;

    invoke-static {v0}, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->access$getHost(Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;)Lexpo/interfaces/devmenu/ReactHostWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 40
    .local v0, "host":Lexpo/interfaces/devmenu/ReactHostWrapper;
    :cond_0
    new-instance v1, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;

    iget-object v2, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1;->this$0:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;

    invoke-static {v2}, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->access$getManager$p(Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;)Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;-><init>(Lexpo/interfaces/devmenu/DevMenuManagerInterface;Lexpo/interfaces/devmenu/ReactHostWrapper;)V

    .line 42
    .local v1, "devDelegate":Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;
    instance-of v2, p1, Lorg/json/JSONObject;

    if-eqz v2, :cond_d

    .line 43
    move-object v2, p1

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 45
    .local v2, "command":Ljava/lang/String;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    goto/16 :goto_3

    :sswitch_0
    const-string v3, "toggleRemoteDebugging"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {v1}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->toggleRemoteDebugging()V

    goto/16 :goto_4

    .line 45
    :sswitch_1
    const-string v3, "toggleDevMenu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 48
    :cond_3
    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 49
    .local v3, "activity":Landroid/app/Activity;
    :cond_4
    iget-object v4, p0, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider$onDevCommand$1;->this$0:Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;

    invoke-static {v4}, Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;->access$getManager$p(Lexpo/modules/devmenu/websockets/DevMenuCommandHandlersProvider;)Lexpo/interfaces/devmenu/DevMenuManagerInterface;

    move-result-object v4

    invoke-interface {v4, v3}, Lexpo/interfaces/devmenu/DevMenuManagerInterface;->toggleMenu(Landroid/app/Activity;)V

    .end local v3    # "activity":Landroid/app/Activity;
    goto/16 :goto_4

    .line 48
    :cond_5
    :goto_1
    return-void

    .line 45
    :sswitch_2
    const-string v3, "openJSInspector"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    .line 57
    :cond_6
    invoke-virtual {v1}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->openJSInspector()V

    goto/16 :goto_4

    .line 45
    :sswitch_3
    const-string v3, "reload"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    .line 46
    :cond_7
    invoke-virtual {v1}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->reload()V

    goto :goto_4

    .line 45
    :sswitch_4
    const-string v3, "togglePerformanceMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    .line 54
    :cond_8
    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v3}, Lcom/facebook/react/bridge/ReactContext;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_9

    goto :goto_2

    .line 55
    .restart local v3    # "activity":Landroid/app/Activity;
    :cond_9
    move-object v4, v3

    check-cast v4, Landroid/content/Context;

    invoke-virtual {v1, v4}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->togglePerformanceMonitor(Landroid/content/Context;)V

    .end local v3    # "activity":Landroid/app/Activity;
    goto :goto_4

    .line 54
    :cond_a
    :goto_2
    return-void

    .line 45
    :sswitch_5
    const-string v3, "toggleElementInspector"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto :goto_0

    .line 52
    :cond_b
    invoke-virtual {v1}, Lexpo/modules/devmenu/devtools/DevMenuDevToolsDelegate;->toggleElementInspector()V

    goto :goto_4

    .line 45
    :sswitch_6
    const-string v3, "reconnectReactDevTools"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    .line 61
    :cond_c
    invoke-virtual {v0}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getCurrentReactContext()Lcom/facebook/react/bridge/ReactContext;

    move-result-object v3

    if-eqz v3, :cond_d

    const-class v4, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    invoke-virtual {v3, v4}, Lcom/facebook/react/bridge/ReactContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v3

    check-cast v3, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;

    if-eqz v3, :cond_d

    const-string v4, "RCTDevMenuShown"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lcom/facebook/react/modules/core/RCTNativeAppEventEmitter;->emit(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    .line 63
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DevMenu"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v2    # "command":Ljava/lang/String;
    :cond_d
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x631d1cb2 -> :sswitch_6
        -0x5c7dd131 -> :sswitch_5
        -0x47618682 -> :sswitch_4
        -0x37b57e67 -> :sswitch_3
        -0x205464dc -> :sswitch_2
        -0x1c2fcee0 -> :sswitch_1
        0xdce1f54 -> :sswitch_0
    .end sparse-switch
.end method
