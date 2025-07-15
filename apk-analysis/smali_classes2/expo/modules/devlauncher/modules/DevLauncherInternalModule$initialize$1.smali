.class final synthetic Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$initialize$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "DevLauncherInternalModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Intent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 7

    const-class v3, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;

    const-string v5, "onNewPendingIntent(Landroid/content/Intent;)V"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "onNewPendingIntent"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 38
    move-object v0, p1

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$initialize$1;->invoke(Landroid/content/Intent;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Landroid/content/Intent;)V
    .locals 1
    .param p1, "p0"    # Landroid/content/Intent;

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule$initialize$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;

    invoke-static {v0, p1}, Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;->access$onNewPendingIntent(Lexpo/modules/devlauncher/modules/DevLauncherInternalModule;Landroid/content/Intent;)V

    return-void
.end method
