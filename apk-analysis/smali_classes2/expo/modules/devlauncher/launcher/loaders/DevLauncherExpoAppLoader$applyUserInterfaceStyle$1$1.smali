.class public final Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader$applyUserInterfaceStyle$1$1;
.super Ljava/lang/Object;
.source "DevLauncherExpoAppLoader.kt"

# interfaces
.implements Lcom/facebook/react/modules/appearance/AppearanceModule$OverrideColorScheme;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader;->applyUserInterfaceStyle(Lcom/facebook/react/bridge/ReactContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "expo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader$applyUserInterfaceStyle$1$1",
        "Lcom/facebook/react/modules/appearance/AppearanceModule$OverrideColorScheme;",
        "getScheme",
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


# instance fields
.field final synthetic $userInterfaceStyle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$userInterfaceStyle"    # Ljava/lang/String;

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader$applyUserInterfaceStyle$1$1;->$userInterfaceStyle:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getScheme()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherExpoAppLoader$applyUserInterfaceStyle$1$1;->$userInterfaceStyle:Ljava/lang/String;

    return-object v0
.end method
