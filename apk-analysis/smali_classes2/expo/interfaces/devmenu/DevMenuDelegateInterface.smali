.class public interface abstract Lexpo/interfaces/devmenu/DevMenuDelegateInterface;
.super Ljava/lang/Object;
.source "DevMenuDelegateInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/interfaces/devmenu/DevMenuDelegateInterface$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0003H&J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "Lexpo/interfaces/devmenu/DevMenuDelegateInterface;",
        "",
        "appInfo",
        "Landroid/os/Bundle;",
        "reactHost",
        "Lexpo/interfaces/devmenu/ReactHostWrapper;",
        "supportsDevelopment",
        "",
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
.method public abstract appInfo()Landroid/os/Bundle;
.end method

.method public abstract reactHost()Lexpo/interfaces/devmenu/ReactHostWrapper;
.end method

.method public abstract supportsDevelopment()Z
.end method
