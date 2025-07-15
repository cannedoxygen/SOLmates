.class final Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$koinAppFactory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevLauncherKoinApp.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lorg/koin/core/KoinApplication;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lorg/koin/core/KoinApplication;",
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
.field public static final INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$koinAppFactory$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$koinAppFactory$1;

    invoke-direct {v0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$koinAppFactory$1;-><init>()V

    sput-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$koinAppFactory$1;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$koinAppFactory$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$koinAppFactory$1;->invoke()Lorg/koin/core/KoinApplication;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lorg/koin/core/KoinApplication;
    .locals 1

    .line 29
    sget-object v0, Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$koinAppFactory$1$1;->INSTANCE:Lexpo/modules/devlauncher/koin/DevLauncherKoinAppKt$koinAppFactory$1$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lorg/koin/dsl/KoinApplicationKt;->koinApplication(Lkotlin/jvm/functions/Function1;)Lorg/koin/core/KoinApplication;

    move-result-object v0

    return-object v0
.end method
