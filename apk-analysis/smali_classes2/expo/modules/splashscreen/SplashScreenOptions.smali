.class public final Lexpo/modules/splashscreen/SplashScreenOptions;
.super Ljava/lang/Object;
.source "SplashScreenModule.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007R$\u0010\u0008\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\n\u0010\u0002\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lexpo/modules/splashscreen/SplashScreenOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "()V",
        "duration",
        "",
        "getDuration$annotations",
        "getDuration",
        "()J",
        "fade",
        "",
        "getFade$annotations",
        "getFade",
        "()Z",
        "setFade",
        "(Z)V",
        "expo-splash-screen_debug"
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
.field private final duration:J

.field private fade:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lexpo/modules/splashscreen/SplashScreenOptions;->duration:J

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lexpo/modules/splashscreen/SplashScreenOptions;->fade:Z

    .line 9
    return-void
.end method

.method public static synthetic getDuration$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getFade$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getDuration()J
    .locals 2

    .line 11
    iget-wide v0, p0, Lexpo/modules/splashscreen/SplashScreenOptions;->duration:J

    return-wide v0
.end method

.method public final getFade()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lexpo/modules/splashscreen/SplashScreenOptions;->fade:Z

    return v0
.end method

.method public final setFade(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 14
    iput-boolean p1, p0, Lexpo/modules/splashscreen/SplashScreenOptions;->fade:Z

    return-void
.end method
