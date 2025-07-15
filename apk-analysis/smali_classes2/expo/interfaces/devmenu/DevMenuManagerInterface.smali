.class public interface abstract Lexpo/interfaces/devmenu/DevMenuManagerInterface;
.super Ljava/lang/Object;
.source "DevMenuManagerInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/interfaces/devmenu/DevMenuManagerInterface$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008f\u0018\u00002\u00020\u0001J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&J\n\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0008\u0010\u000c\u001a\u00020\u0007H&J\u0010\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\tH&J\u0008\u0010\u000f\u001a\u00020\u0010H&J\u0018\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H&J\u0012\u0010\u0016\u001a\u00020\u00072\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H&J\u001c\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001b2\n\u0008\u0002\u0010\u001c\u001a\u0004\u0018\u00010\u001dH&J\u001a\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u001d2\u0008\u0010 \u001a\u0004\u0018\u00010\u0001H&J\u0010\u0010!\u001a\u00020\u00072\u0006\u0010\"\u001a\u00020\u0010H&J\u0010\u0010#\u001a\u00020\u00072\u0006\u0010$\u001a\u00020%H&J\u0008\u0010&\u001a\u00020\u0007H&J\u0010\u0010\'\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u001bH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005\u00a8\u0006("
    }
    d2 = {
        "Lexpo/interfaces/devmenu/DevMenuManagerInterface;",
        "",
        "coroutineScope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getCoroutineScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "closeMenu",
        "",
        "getMenuHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "getSettings",
        "Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;",
        "hideMenu",
        "initializeWithReactHost",
        "reactHost",
        "isInitialized",
        "",
        "onKeyEvent",
        "keyCode",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "onTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
        "openMenu",
        "activity",
        "Landroid/app/Activity;",
        "screen",
        "",
        "sendEventToDelegateBridge",
        "eventName",
        "eventData",
        "setCanLaunchDevMenuOnStart",
        "shouldAutoLaunch",
        "setDelegate",
        "newDelegate",
        "Lexpo/interfaces/devmenu/DevMenuDelegateInterface;",
        "synchronizeDelegate",
        "toggleMenu",
        "expo-dev-menu-interface_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract closeMenu()V
.end method

.method public abstract getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
.end method

.method public abstract getMenuHost()Lexpo/interfaces/devmenu/ReactHostWrapper;
.end method

.method public abstract getSettings()Lexpo/interfaces/devmenu/DevMenuPreferencesInterface;
.end method

.method public abstract hideMenu()V
.end method

.method public abstract initializeWithReactHost(Lexpo/interfaces/devmenu/ReactHostWrapper;)V
.end method

.method public abstract isInitialized()Z
.end method

.method public abstract onKeyEvent(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)V
.end method

.method public abstract openMenu(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract sendEventToDelegateBridge(Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public abstract setCanLaunchDevMenuOnStart(Z)V
.end method

.method public abstract setDelegate(Lexpo/interfaces/devmenu/DevMenuDelegateInterface;)V
.end method

.method public abstract synchronizeDelegate()V
.end method

.method public abstract toggleMenu(Landroid/app/Activity;)V
.end method
