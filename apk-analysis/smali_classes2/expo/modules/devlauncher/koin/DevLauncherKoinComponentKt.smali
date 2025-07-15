.class public final Lexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt;
.super Ljava/lang/Object;
.source "DevLauncherKoinComponent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001aR\u0010\u0000\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0001\"\n\u0008\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00042\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0016\u0008\n\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u000b\u0018\u00010\nj\u0004\u0018\u0001`\u000cH\u0086\u0008\u00f8\u0001\u0000\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\r"
    }
    d2 = {
        "optInject",
        "Lkotlin/Lazy;",
        "T",
        "",
        "Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;",
        "qualifier",
        "Lorg/koin/core/qualifier/Qualifier;",
        "mode",
        "Lkotlin/LazyThreadSafetyMode;",
        "parameters",
        "Lkotlin/Function0;",
        "Lorg/koin/core/parameter/ParametersHolder;",
        "Lorg/koin/core/parameter/ParametersDefinition;",
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


# direct methods
.method public static final synthetic optInject(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;
    .locals 2
    .param p0, "$this$optInject"    # Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "mode"    # Lkotlin/LazyThreadSafetyMode;
    .param p3, "parameters"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;",
            "Lorg/koin/core/qualifier/Qualifier;",
            "Lkotlin/LazyThreadSafetyMode;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Lorg/koin/core/parameter/ParametersHolder;",
            ">;)",
            "Lkotlin/Lazy<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 19
    .local v0, "$i$f$optInject":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance v1, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt$optInject$1;

    invoke-direct {v1, p0, p1, p3}, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt$optInject$1;-><init>(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v1

    .line 25
    return-object v1
.end method

.method public static synthetic optInject$default(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlin/Lazy;
    .locals 0
    .param p0, "$this$optInject_u24default"    # Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;
    .param p1, "qualifier"    # Lorg/koin/core/qualifier/Qualifier;
    .param p2, "mode"    # Lkotlin/LazyThreadSafetyMode;
    .param p3, "parameters"    # Lkotlin/jvm/functions/Function0;

    .line 14
    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 15
    const/4 p1, 0x0

    .line 14
    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    .line 16
    sget-object p5, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {p5}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object p2

    .line 14
    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    .line 17
    const/4 p3, 0x0

    .line 14
    :cond_2
    const-string p4, "<this>"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "mode"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 19
    .local p4, "$i$f$optInject":I
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    new-instance p5, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt$optInject$1;

    invoke-direct {p5, p0, p1, p3}, Lexpo/modules/devlauncher/koin/DevLauncherKoinComponentKt$optInject$1;-><init>(Lexpo/modules/devlauncher/koin/DevLauncherKoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast p5, Lkotlin/jvm/functions/Function0;

    invoke-static {p2, p5}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p5

    .line 25
    return-object p5
.end method
