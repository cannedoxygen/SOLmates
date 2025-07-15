.class final Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "DevLauncherManifestParser.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->downloadManifest(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
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
    c = "expo.modules.devlauncher.launcher.manifest.DevLauncherManifestParser"
    f = "DevLauncherManifestParser.kt"
    i = {
        0x0,
        0x0
    }
    l = {
        0x37
    }
    m = "downloadManifest"
    n = {
        "$this$await$iv",
        "okHttpClient$iv"
    }
    s = {
        "L$0",
        "L$1"
    }
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;


# direct methods
.method constructor <init>(Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->this$0:Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->result:Ljava/lang/Object;

    iget v0, p0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->label:I

    const/high16 v1, -0x80000000

    or-int/2addr v0, v1

    iput v0, p0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->label:I

    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser$downloadManifest$1;->this$0:Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;->access$downloadManifest(Lexpo/modules/devlauncher/launcher/manifest/DevLauncherManifestParser;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
