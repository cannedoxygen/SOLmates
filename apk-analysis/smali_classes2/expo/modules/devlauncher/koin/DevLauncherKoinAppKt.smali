.class public final Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt;
.super Ljava/lang/Object;
.source "DevLauncherKoinApp.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\t\u001a\u00020\n\"\u0011\u0010\u0000\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0002\u0010\u0003\"\u0011\u0010\u0004\u001a\u00020\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0003\"\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "DevLauncherBaseModule",
        "Lorg/koin/core/module/Module;",
        "getDevLauncherBaseModule",
        "()Lorg/koin/core/module/Module;",
        "DevLauncherTestModule",
        "getDevLauncherTestModule",
        "koinAppFactory",
        "Lkotlin/Function0;",
        "Lorg/koin/core/KoinApplication;",
        "devLauncherKoin",
        "Lorg/koin/core/Koin;",
        "expo-dev-launcher_debug"
    }
    k = 0x2
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DevLauncherBaseModule:Lorg/koin/core/module/Module;

.field private static final DevLauncherTestModule:Lorg/koin/core/module/Module;

.field private static final koinAppFactory:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lorg/koin/core/KoinApplication;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 16
    sget-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherTestModule$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt;->DevLauncherTestModule:Lorg/koin/core/module/Module;

    .line 20
    sget-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$DevLauncherBaseModule$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v0, v2, v3}, Lorg/koin/dsl/ModuleDSLKt;->module$default(ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lorg/koin/core/module/Module;

    move-result-object v0

    sput-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt;->DevLauncherBaseModule:Lorg/koin/core/module/Module;

    .line 28
    sget-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$koinAppFactory$1;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$koinAppFactory$1;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    sput-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt;->koinAppFactory:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getKoinAppFactory$p()Lkotlin/jvm/functions/Function0;
    .locals 1

    .line 1
    sget-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt;->koinAppFactory:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public static final devLauncherKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 46
    sget-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->getApp()Lorg/koin/core/KoinApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public static final getDevLauncherBaseModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 20
    sget-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt;->DevLauncherBaseModule:Lorg/koin/core/module/Module;

    return-object v0
.end method

.method public static final getDevLauncherTestModule()Lorg/koin/core/module/Module;
    .locals 1

    .line 16
    sget-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt;->DevLauncherTestModule:Lorg/koin/core/module/Module;

    return-object v0
.end method
