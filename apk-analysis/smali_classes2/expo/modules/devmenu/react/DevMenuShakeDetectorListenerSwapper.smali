.class public final Lexpo/modules/devmenu/react/DevMenuShakeDetectorListenerSwapper;
.super Ljava/lang/Object;
.source "DevMenuShakeDetectorListenerSwapper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lexpo/modules/devmenu/react/DevMenuShakeDetectorListenerSwapper;",
        "",
        "()V",
        "swapShakeDetectorListener",
        "",
        "reactHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "newListener",
        "Lcom/facebook/react/common/ShakeDetector$ShakeListener;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final swapShakeDetectorListener(Lexpo/interfaces/devmenu/ReactHostWrapper;Lcom/facebook/react/common/ShakeDetector$ShakeListener;)V
    .locals 4
    .param p1, "reactHost"    # Lexpo/interfaces/devmenu/ReactHostWrapper;
    .param p2, "newListener"    # Lcom/facebook/react/common/ShakeDetector$ShakeListener;

    const-string v0, "shakeListener"

    const-string v1, "reactHost"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "newListener"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    nop

    .line 17
    :try_start_0
    invoke-virtual {p1}, Lexpo/interfaces/devmenu/ReactHostWrapper;->getDevSupportManager()Lcom/facebook/react/devsupport/interfaces/DevSupportManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    .local v1, "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    instance-of v2, v1, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    if-nez v2, :cond_0

    .line 21
    return-void

    :cond_0
    const-class v2, Lcom/facebook/react/devsupport/DevSupportManagerBase;

    .line 26
    const-string v3, "mShakeDetector"

    .line 27
    nop

    .line 25
    invoke-static {v2, v3, v1}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->getPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/common/ShakeDetector;

    .line 24
    nop

    .line 30
    .local v2, "shakeDetector":Lcom/facebook/react/common/ShakeDetector;
    const-class v3, Lcom/facebook/react/common/ShakeDetector;

    invoke-static {v3, v0}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->hasDeclaredField(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-class v3, Lcom/facebook/react/common/ShakeDetector;

    .line 32
    nop

    .line 33
    nop

    .line 34
    nop

    .line 31
    invoke-static {v3, v0, v2, p2}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->setPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-class v0, Lcom/facebook/react/common/ShakeDetector;

    .line 38
    const-string v3, "mShakeListener"

    .line 39
    nop

    .line 40
    nop

    .line 37
    invoke-static {v0, v3, v2, p2}, Lexpo/modules/devmenu/helpers/DevMenuReflectionExtensionsKt;->setPrivateDeclaredFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v1    # "devSupportManager":Lcom/facebook/react/devsupport/interfaces/DevSupportManager;
    .end local v2    # "shakeDetector":Lcom/facebook/react/common/ShakeDetector;
    goto :goto_0

    .line 17
    :cond_2
    const-string v0, "Required value was null."

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "reactHost":Lexpo/interfaces/devmenu/ReactHostWrapper;
    .end local p2    # "newListener":Lcom/facebook/react/common/ShakeDetector$ShakeListener;
    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .restart local p1    # "reactHost":Lexpo/interfaces/devmenu/ReactHostWrapper;
    .restart local p2    # "newListener":Lcom/facebook/react/common/ShakeDetector$ShakeListener;
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t swap shake detector listener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "DevMenu"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
