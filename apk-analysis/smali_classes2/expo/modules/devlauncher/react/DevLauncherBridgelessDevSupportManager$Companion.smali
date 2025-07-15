.class public final Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager$Companion;
.super Ljava/lang/Object;
.source "DevLauncherBridgelessDevSupportManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager$Companion;",
        "",
        "()V",
        "getDevHelperInternalFieldName",
        "",
        "expo-dev-launcher_debug"
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
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lexpo/modules/devlauncher/react/DevLauncherBridgelessDevSupportManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDevHelperInternalFieldName()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "mReactInstanceDevHelper"

    return-object v0
.end method
