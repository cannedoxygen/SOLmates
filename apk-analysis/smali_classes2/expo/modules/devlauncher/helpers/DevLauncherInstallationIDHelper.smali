.class public final Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;
.super Ljava/lang/Object;
.source "DevLauncherInstallationIDHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDevLauncherInstallationIDHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DevLauncherInstallationIDHelper.kt\nexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0015\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H\u0000\u00a2\u0006\u0002\u0008\nJ\u000e\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u0018\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;",
        "",
        "()V",
        "installationID",
        "",
        "getInstallationID",
        "context",
        "Landroid/content/Context;",
        "getInstallationIDFile",
        "Ljava/io/File;",
        "getInstallationIDFile$expo_dev_launcher_debug",
        "getOrCreateInstallationID",
        "setInstallationID",
        "",
        "newID",
        "Companion",
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


# static fields
.field public static final Companion:Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper$Companion;

.field public static final INSTALLATION_ID_FILENAME:Ljava/lang/String; = "expo-dev-launcher-installation-id.txt"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private installationID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->Companion:Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper$Companion;

    .line 66
    const-class v0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getInstallationID(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 27
    iget-object v0, p0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->installationID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->installationID:Ljava/lang/String;

    return-object v0

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->getInstallationIDFile$expo_dev_launcher_debug(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 32
    .local v0, "installationIDFile":Ljava/io/File;
    nop

    .line 33
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/FileReader;

    .local v2, "fileReader":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 35
    .local v3, "$i$a$-use-DevLauncherInstallationIDHelper$getInstallationID$1":I
    new-instance v4, Ljava/io/BufferedReader;

    move-object v5, v2

    check-cast v5, Ljava/io/Reader;

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    check-cast v4, Ljava/io/Closeable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    move-object v5, v4

    check-cast v5, Ljava/io/BufferedReader;

    .local v5, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 36
    .local v6, "$i$a$-use-DevLauncherInstallationIDHelper$getInstallationID$1$1":I
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->installationID:Ljava/lang/String;

    .line 37
    nop

    .end local v5    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "$i$a$-use-DevLauncherInstallationIDHelper$getInstallationID$1$1":I
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    const/4 v5, 0x0

    :try_start_3
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 38
    nop

    .end local v2    # "fileReader":Ljava/io/FileReader;
    .end local v3    # "$i$a$-use-DevLauncherInstallationIDHelper$getInstallationID$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 34
    :try_start_4
    invoke-static {v1, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 35
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "$i$a$-use-DevLauncherInstallationIDHelper$getInstallationID$1":I
    :catchall_0
    move-exception v5

    .end local v0    # "installationIDFile":Ljava/io/File;
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .end local v3    # "$i$a$-use-DevLauncherInstallationIDHelper$getInstallationID$1":I
    .end local p1    # "context":Landroid/content/Context;
    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .restart local v0    # "installationIDFile":Ljava/io/File;
    .restart local v2    # "fileReader":Ljava/io/FileReader;
    .restart local v3    # "$i$a$-use-DevLauncherInstallationIDHelper$getInstallationID$1":I
    .restart local p1    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "installationIDFile":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 34
    .end local v2    # "fileReader":Ljava/io/FileReader;
    .end local v3    # "$i$a$-use-DevLauncherInstallationIDHelper$getInstallationID$1":I
    .restart local v0    # "installationIDFile":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    :catchall_2
    move-exception v2

    .end local v0    # "installationIDFile":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .restart local v0    # "installationIDFile":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    :catchall_3
    move-exception v3

    :try_start_8
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "installationIDFile":Ljava/io/File;
    .end local p1    # "context":Landroid/content/Context;
    throw v3
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 40
    .restart local v0    # "installationIDFile":Ljava/io/File;
    .restart local p1    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->TAG:Ljava/lang/String;

    const-string v3, "Failed to read stored installation ID"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->installationID:Ljava/lang/String;

    return-object v1
.end method

.method private final setInstallationID(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "newID"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->installationID:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, p2}, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->getInstallationIDFile$expo_dev_launcher_debug(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 54
    .local v0, "installationIDFile":Ljava/io/File;
    nop

    .line 55
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    check-cast v1, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object v2, v1

    check-cast v2, Ljava/io/FileWriter;

    .line 71
    .local v2, "it":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 55
    .local v3, "$i$a$-use-DevLauncherInstallationIDHelper$setInstallationID$1":I
    iget-object v4, p0, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->installationID:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .end local v2    # "it":Ljava/io/FileWriter;
    .end local v3    # "$i$a$-use-DevLauncherInstallationIDHelper$setInstallationID$1":I
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .end local v0    # "installationIDFile":Ljava/io/File;
    .end local p1    # "newID":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .restart local v0    # "installationIDFile":Ljava/io/File;
    .restart local p1    # "newID":Ljava/lang/String;
    .restart local p2    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .end local v0    # "installationIDFile":Ljava/io/File;
    .end local p1    # "newID":Ljava/lang/String;
    .end local p2    # "context":Landroid/content/Context;
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 56
    .restart local v0    # "installationIDFile":Ljava/io/File;
    .restart local p1    # "newID":Ljava/lang/String;
    .restart local p2    # "context":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 57
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->TAG:Ljava/lang/String;

    const-string v3, "Failed to write or set resource values to installation ID file"

    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method


# virtual methods
.method public final getInstallationIDFile$expo_dev_launcher_debug(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "expo-dev-launcher-installation-id.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getOrCreateInstallationID(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->getInstallationID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "savedID":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 18
    return-object v0

    .line 21
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .local v1, "newID":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lexpo/modules/devlauncher/helpers/DevLauncherInstallationIDHelper;->setInstallationID(Ljava/lang/String;Landroid/content/Context;)V

    .line 23
    return-object v1
.end method
