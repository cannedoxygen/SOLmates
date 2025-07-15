.class public final Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;
.super Ljava/lang/Object;
.source "DevLauncherErrorRegistry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0012H\u00d6\u0001J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;",
        "",
        "throwable",
        "",
        "timestamp",
        "",
        "(Ljava/lang/Throwable;J)V",
        "getThrowable",
        "()Ljava/lang/Throwable;",
        "getTimestamp",
        "()J",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "toWritableMap",
        "Lcom/facebook/react/bridge/WritableMap;",
        "expo-dev-launcher_debug"
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
.field private final throwable:Ljava/lang/Throwable;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;J)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "timestamp"    # J

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->throwable:Ljava/lang/Throwable;

    .line 16
    iput-wide p2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->timestamp:J

    .line 14
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 16
    sget-object p2, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;->INSTANCE:Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;

    invoke-virtual {p2}, Lexpo/modules/devlauncher/launcher/DevLauncherRecentlyOpenedAppsRegistry$TimeHelper;->getCurrentTime()J

    move-result-wide p2

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;-><init>(Ljava/lang/Throwable;J)V

    .line 25
    return-void
.end method

.method public static synthetic copy$default(Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;Ljava/lang/Throwable;JILjava/lang/Object;)Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->throwable:Ljava/lang/Throwable;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->timestamp:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->copy(Ljava/lang/Throwable;J)Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->timestamp:J

    return-wide v0
.end method

.method public final copy(Ljava/lang/Throwable;J)Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;
    .locals 1

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;

    invoke-direct {v0, p1, p2, p3}, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;-><init>(Ljava/lang/Throwable;J)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;

    iget-object v3, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->throwable:Ljava/lang/Throwable;

    iget-object v4, v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->throwable:Ljava/lang/Throwable;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->timestamp:J

    iget-wide v5, v1, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->timestamp:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 15
    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->timestamp:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->throwable:Ljava/lang/Throwable;

    iget-wide v1, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->timestamp:J

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DevLauncherErrorInstance(throwable="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", timestamp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toWritableMap()Lcom/facebook/react/bridge/WritableMap;
    .locals 6

    .line 19
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .local v1, "$this$toWritableMap_u24lambda_u240":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 20
    .local v2, "$i$a$-apply-DevLauncherErrorInstance$toWritableMap$1":I
    const-string v3, "timestamp"

    iget-wide v4, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->timestamp:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 21
    iget-object v3, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "Unknown"

    :cond_0
    const-string v4, "message"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lexpo/modules/devlauncher/launcher/errors/DevLauncherErrorInstance;->throwable:Ljava/lang/Throwable;

    invoke-static {v3}, Lkotlin/ExceptionsKt;->stackTraceToString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "stack"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    nop

    .line 19
    .end local v1    # "$this$toWritableMap_u24lambda_u240":Landroid/os/Bundle;
    .end local v2    # "$i$a$-apply-DevLauncherErrorInstance$toWritableMap$1":I
    nop

    .line 18
    invoke-static {v0}, Lcom/facebook/react/bridge/Arguments;->fromBundle(Landroid/os/Bundle;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    .line 24
    return-object v0
.end method
