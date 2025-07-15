.class final Lexpo/modules/devlauncher/DevLauncherController$context$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DevLauncherController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/DevLauncherController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherController.kt\nexpo/modules/devlauncher/DevLauncherController$context$2\n+ 2 Koin.kt\norg/koin/core/Koin\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,462:1\n104#2,4:463\n133#3:467\n*S KotlinDebug\n*F\n+ 1 DevLauncherController.kt\nexpo/modules/devlauncher/DevLauncherController$context$2\n*L\n65#1:463,4\n65#1:467\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/content/Context;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/devlauncher/DevLauncherController$context$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devlauncher/DevLauncherController$context$2;

    invoke-direct {v0}, Lexpo/modules/devlauncher/DevLauncherController$context$2;-><init>()V

    sput-object v0, Lexpo/modules/devlauncher/DevLauncherController$context$2;->INSTANCE:Lexpo/modules/devlauncher/DevLauncherController$context$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/Context;
    .locals 7

    .line 65
    sget-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;

    invoke-virtual {v0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinContext;->getApp()Lorg/koin/core/KoinApplication;

    move-result-object v0

    invoke-virtual {v0}, Lorg/koin/core/KoinApplication;->getKoin()Lorg/koin/core/Koin;

    move-result-object v0

    .line 463
    .local v0, "$this$iv":Lorg/koin/core/Koin;
    nop

    .line 464
    const/4 v1, 0x0

    .line 463
    .local v1, "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    nop

    .line 465
    const/4 v2, 0x0

    .line 463
    .local v2, "parameters$iv":Lkotlin/jvm/functions/Function0;
    const/4 v3, 0x0

    .line 466
    .local v3, "$i$f$get":I
    invoke-virtual {v0}, Lorg/koin/core/Koin;->getScopeRegistry()Lorg/koin/core/registry/ScopeRegistry;

    move-result-object v4

    invoke-virtual {v4}, Lorg/koin/core/registry/ScopeRegistry;->getRootScope()Lorg/koin/core/scope/Scope;

    move-result-object v4

    .local v4, "this_$iv$iv":Lorg/koin/core/scope/Scope;
    const/4 v5, 0x0

    .line 467
    .local v5, "$i$f$get":I
    const-class v6, Landroid/content/Context;

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v6

    invoke-virtual {v4, v6, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v4

    .line 466
    .end local v4    # "this_$iv$iv":Lorg/koin/core/scope/Scope;
    .end local v5    # "$i$f$get":I
    nop

    .end local v0    # "$this$iv":Lorg/koin/core/Koin;
    .end local v1    # "qualifier$iv":Lorg/koin/core/qualifier/Qualifier;
    .end local v2    # "parameters$iv":Lkotlin/jvm/functions/Function0;
    .end local v3    # "$i$f$get":I
    check-cast v4, Landroid/content/Context;

    .line 65
    return-object v4
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 64
    invoke-virtual {p0}, Lexpo/modules/devlauncher/DevLauncherController$context$2;->invoke()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
