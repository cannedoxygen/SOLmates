.class public abstract Lorg/koin/core/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Logger.kt\norg/koin/core/logger/Logger\n*L\n1#1,60:1\n46#1,2:61\n46#1,2:63\n46#1,2:65\n46#1,2:67\n*S KotlinDebug\n*F\n+ 1 Logger.kt\norg/koin/core/logger/Logger\n*L\n28#1:61,2\n32#1:63,2\n36#1:65,2\n40#1:67,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008&\u0018\u00002\u00020\u0001B\u000f\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0015\u0010\u0008\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bj\u0002`\u000cH\u0086\u0008J\u001c\u0010\r\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00020\u00032\n\u0010\n\u001a\u00060\u000bj\u0002`\u000cH&J\u0015\u0010\u000e\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bj\u0002`\u000cH\u0086\u0008J\u0015\u0010\u000f\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bj\u0002`\u000cH\u0086\u0008J\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0003J\"\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00032\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0014H\u0086\u0008\u00f8\u0001\u0000J\u0019\u0010\u0013\u001a\u00020\t2\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000bH\u0086\u0008J\u0015\u0010\u0015\u001a\u00020\t2\n\u0010\n\u001a\u00060\u000bj\u0002`\u000cH\u0086\u0008R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0004\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0016"
    }
    d2 = {
        "Lorg/koin/core/logger/Logger;",
        "",
        "level",
        "Lorg/koin/core/logger/Level;",
        "(Lorg/koin/core/logger/Level;)V",
        "getLevel",
        "()Lorg/koin/core/logger/Level;",
        "setLevel",
        "debug",
        "",
        "msg",
        "",
        "Lorg/koin/core/logger/MESSAGE;",
        "display",
        "error",
        "info",
        "isAt",
        "",
        "lvl",
        "log",
        "Lkotlin/Function0;",
        "warn",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private level:Lorg/koin/core/logger/Level;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lorg/koin/core/logger/Logger;-><init>(Lorg/koin/core/logger/Level;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lorg/koin/core/logger/Level;)V
    .locals 1
    .param p1, "level"    # Lorg/koin/core/logger/Level;

    const-string v0, "level"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/koin/core/logger/Logger;->level:Lorg/koin/core/logger/Level;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/koin/core/logger/Level;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 23
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    sget-object p1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    :cond_0
    invoke-direct {p0, p1}, Lorg/koin/core/logger/Logger;-><init>(Lorg/koin/core/logger/Level;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 28
    .local v0, "$i$f$debug":I
    sget-object v1, Lorg/koin/core/logger/Level;->DEBUG:Lorg/koin/core/logger/Level;

    .local v1, "lvl$iv":Lorg/koin/core/logger/Level;
    move-object v2, p0

    .local v2, "this_$iv":Lorg/koin/core/logger/Logger;
    const/4 v3, 0x0

    .line 61
    .local v3, "$i$f$log":I
    invoke-virtual {v2, v1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1, p1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 62
    :cond_0
    nop

    .line 29
    .end local v1    # "lvl$iv":Lorg/koin/core/logger/Level;
    .end local v2    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v3    # "$i$f$log":I
    return-void
.end method

.method public abstract display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V
.end method

.method public final error(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 40
    .local v0, "$i$f$error":I
    sget-object v1, Lorg/koin/core/logger/Level;->ERROR:Lorg/koin/core/logger/Level;

    .local v1, "lvl$iv":Lorg/koin/core/logger/Level;
    move-object v2, p0

    .local v2, "this_$iv":Lorg/koin/core/logger/Logger;
    const/4 v3, 0x0

    .line 67
    .local v3, "$i$f$log":I
    invoke-virtual {v2, v1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1, p1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 68
    :cond_0
    nop

    .line 41
    .end local v1    # "lvl$iv":Lorg/koin/core/logger/Level;
    .end local v2    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v3    # "$i$f$log":I
    return-void
.end method

.method public final getLevel()Lorg/koin/core/logger/Level;
    .locals 1

    .line 23
    iget-object v0, p0, Lorg/koin/core/logger/Logger;->level:Lorg/koin/core/logger/Level;

    return-object v0
.end method

.method public final info(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 32
    .local v0, "$i$f$info":I
    sget-object v1, Lorg/koin/core/logger/Level;->INFO:Lorg/koin/core/logger/Level;

    .local v1, "lvl$iv":Lorg/koin/core/logger/Level;
    move-object v2, p0

    .local v2, "this_$iv":Lorg/koin/core/logger/Logger;
    const/4 v3, 0x0

    .line 63
    .local v3, "$i$f$log":I
    invoke-virtual {v2, v1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1, p1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 64
    :cond_0
    nop

    .line 33
    .end local v1    # "lvl$iv":Lorg/koin/core/logger/Level;
    .end local v2    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v3    # "$i$f$log":I
    return-void
.end method

.method public final isAt(Lorg/koin/core/logger/Level;)Z
    .locals 2
    .param p1, "lvl"    # Lorg/koin/core/logger/Level;

    const-string v0, "lvl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lorg/koin/core/logger/Logger;->level:Lorg/koin/core/logger/Level;

    move-object v1, p1

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v0, v1}, Lorg/koin/core/logger/Level;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final log(Lorg/koin/core/logger/Level;Ljava/lang/String;)V
    .locals 2
    .param p1, "lvl"    # Lorg/koin/core/logger/Level;
    .param p2, "msg"    # Ljava/lang/String;

    const-string v0, "lvl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 46
    .local v0, "$i$f$log":I
    invoke-virtual {p0, p1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public final log(Lorg/koin/core/logger/Level;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1, "lvl"    # Lorg/koin/core/logger/Level;
    .param p2, "msg"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/koin/core/logger/Level;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "lvl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 50
    .local v0, "$i$f$log":I
    invoke-virtual {p0, p1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 51
    :cond_0
    return-void
.end method

.method public final setLevel(Lorg/koin/core/logger/Level;)V
    .locals 1
    .param p1, "<set-?>"    # Lorg/koin/core/logger/Level;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lorg/koin/core/logger/Logger;->level:Lorg/koin/core/logger/Level;

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 36
    .local v0, "$i$f$warn":I
    sget-object v1, Lorg/koin/core/logger/Level;->WARNING:Lorg/koin/core/logger/Level;

    .local v1, "lvl$iv":Lorg/koin/core/logger/Level;
    move-object v2, p0

    .local v2, "this_$iv":Lorg/koin/core/logger/Logger;
    const/4 v3, 0x0

    .line 65
    .local v3, "$i$f$log":I
    invoke-virtual {v2, v1}, Lorg/koin/core/logger/Logger;->isAt(Lorg/koin/core/logger/Level;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v1, p1}, Lorg/koin/core/logger/Logger;->display(Lorg/koin/core/logger/Level;Ljava/lang/String;)V

    .line 66
    :cond_0
    nop

    .line 37
    .end local v1    # "lvl$iv":Lorg/koin/core/logger/Level;
    .end local v2    # "this_$iv":Lorg/koin/core/logger/Logger;
    .end local v3    # "$i$f$log":I
    return-void
.end method
