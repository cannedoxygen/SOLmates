.class final Lexpo/modules/kotlin/ExpoModulesHelper$Companion$modulesProvider$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExpoModulesHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/kotlin/ExpoModulesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lexpo/modules/kotlin/ModulesProvider;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lexpo/modules/kotlin/ModulesProvider;",
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
.field public static final INSTANCE:Lexpo/modules/kotlin/ExpoModulesHelper$Companion$modulesProvider$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/kotlin/ExpoModulesHelper$Companion$modulesProvider$2;

    invoke-direct {v0}, Lexpo/modules/kotlin/ExpoModulesHelper$Companion$modulesProvider$2;-><init>()V

    sput-object v0, Lexpo/modules/kotlin/ExpoModulesHelper$Companion$modulesProvider$2;->INSTANCE:Lexpo/modules/kotlin/ExpoModulesHelper$Companion$modulesProvider$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lexpo/modules/kotlin/ModulesProvider;
    .locals 4

    .line 8
    nop

    .line 9
    :try_start_0
    const-string v0, "expo.modules.ExpoModulesPackageList"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 10
    .local v0, "expoModules":Ljava/lang/Class;
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type expo.modules.kotlin.ModulesProvider"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lexpo/modules/kotlin/ModulesProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "expoModules":Ljava/lang/Class;
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Couldn\'t get expo modules list."

    move-object v2, v0

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "ExpoModulesHelper"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13
    const/4 v1, 0x0

    .line 8
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v1
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lexpo/modules/kotlin/ExpoModulesHelper$Companion$modulesProvider$2;->invoke()Lexpo/modules/kotlin/ModulesProvider;

    move-result-object v0

    return-object v0
.end method
