.class final Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManagerKt$toRemoteLogString$baseTrace$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DevLauncherRemoteLogManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManagerKt;->toRemoteLogString(Ljava/lang/Throwable;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/StackTraceElement;",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Ljava/lang/StackTraceElement;",
        "kotlin.jvm.PlatformType",
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
.field public static final INSTANCE:Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManagerKt$toRemoteLogString$baseTrace$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManagerKt$toRemoteLogString$baseTrace$1;

    invoke-direct {v0}, Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManagerKt$toRemoteLogString$baseTrace$1;-><init>()V

    sput-object v0, Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManagerKt$toRemoteLogString$baseTrace$1;->INSTANCE:Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManagerKt$toRemoteLogString$baseTrace$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "it"    # Ljava/lang/StackTraceElement;

    .line 36
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/CharSequence;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "p1"    # Ljava/lang/Object;

    .line 35
    move-object v0, p1

    check-cast v0, Ljava/lang/StackTraceElement;

    invoke-virtual {p0, v0}, Lexpo/modules/devlauncher/logs/DevLauncherRemoteLogManagerKt$toRemoteLogString$baseTrace$1;->invoke(Ljava/lang/StackTraceElement;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
