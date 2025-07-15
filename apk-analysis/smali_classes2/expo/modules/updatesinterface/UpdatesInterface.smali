.class public interface abstract Lexpo/modules/updatesinterface/UpdatesInterface;
.super Ljava/lang/Object;
.source "UpdatesInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/updatesinterface/UpdatesInterface$Update;,
        Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001:\u0002\u001b\u001cJ4\u0010\u0011\u001a\u00020\u00122\"\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0014j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001`\u00152\u0006\u0010\u0016\u001a\u00020\u0017H&J,\u0010\u0018\u001a\u00020\u00192\"\u0010\u0013\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0014j\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001`\u0015H&J\u0008\u0010\u001a\u001a\u00020\u0012H&R\u0014\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0014\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR \u0010\n\u001a\n\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u000bX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001d"
    }
    d2 = {
        "Lexpo/modules/updatesinterface/UpdatesInterface;",
        "",
        "runtimeVersion",
        "",
        "getRuntimeVersion",
        "()Ljava/lang/String;",
        "updateUrl",
        "Landroid/net/Uri;",
        "getUpdateUrl",
        "()Landroid/net/Uri;",
        "updatesInterfaceCallbacks",
        "Ljava/lang/ref/WeakReference;",
        "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;",
        "getUpdatesInterfaceCallbacks",
        "()Ljava/lang/ref/WeakReference;",
        "setUpdatesInterfaceCallbacks",
        "(Ljava/lang/ref/WeakReference;)V",
        "fetchUpdateWithConfiguration",
        "",
        "configuration",
        "Ljava/util/HashMap;",
        "Lkotlin/collections/HashMap;",
        "callback",
        "Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;",
        "isValidUpdatesConfiguration",
        "",
        "reset",
        "Update",
        "UpdateCallback",
        "expo-updates-interface_debug"
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
.method public abstract fetchUpdateWithConfiguration(Ljava/util/HashMap;Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lexpo/modules/updatesinterface/UpdatesInterface$UpdateCallback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getRuntimeVersion()Ljava/lang/String;
.end method

.method public abstract getUpdateUrl()Landroid/net/Uri;
.end method

.method public abstract getUpdatesInterfaceCallbacks()Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isValidUpdatesConfiguration(Ljava/util/HashMap;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract setUpdatesInterfaceCallbacks(Ljava/lang/ref/WeakReference;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lexpo/modules/updatesinterface/UpdatesInterfaceCallbacks;",
            ">;)V"
        }
    .end annotation
.end method
