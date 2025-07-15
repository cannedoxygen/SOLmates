.class final Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DevLauncherAppLoaderFactory.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->createAppLoader(Landroid/net/Uri;Landroid/net/Uri;Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "expo.modules.devlauncher.launcher.loaders.DevLauncherAppLoaderFactory"
    f = "DevLauncherAppLoaderFactory.kt"
    i = {
        0x0,
        0x0,
        0x0,
        0x0,
        0x1,
        0x2
    }
    l = {
        0x25,
        0x39,
        0x3f
    }
    m = "createAppLoader"
    n = {
        "this",
        "url",
        "projectUrl",
        "manifestParser",
        "this",
        "this"
    }
    s = {
        "L$0",
        "L$1",
        "L$2",
        "L$3",
        "L$0",
        "L$0"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->result:Ljava/lang/Object;

    iget v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->label:I

    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory$createAppLoader$1;->this$0:Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;

    const/4 v1, 0x0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    invoke-virtual {v0, v1, v1, v1, v2}, Lexpo/modules/devlauncher/launcher/loaders/DevLauncherAppLoaderFactory;->createAppLoader(Landroid/net/Uri;Landroid/net/Uri;Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
