.class public Lexpo/modules/notifications/serverregistration/InstallationId;
.super Ljava/lang/Object;
.source "InstallationId.java"


# static fields
.field public static final LEGACY_PREFERENCES_FILE_NAME:Ljava/lang/String; = "host.exp.exponent.SharedPreferences"

.field public static final LEGACY_PREFERENCES_UUID_KEY:Ljava/lang/String; = "uuid"

.field public static final LEGACY_UUID_FILE_NAME:Ljava/lang/String; = "expo_installation_uuid.txt"

.field private static final TAG:Ljava/lang/String;

.field public static final UUID_FILE_NAME:Ljava/lang/String; = "expo_notifications_installation_uuid.txt"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLegacySharedPreferences:Landroid/content/SharedPreferences;

.field private mUuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lexpo/modules/notifications/serverregistration/InstallationId;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lexpo/modules/notifications/serverregistration/InstallationId;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mContext:Landroid/content/Context;

    .line 42
    const-string v0, "host.exp.exponent.SharedPreferences"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mLegacySharedPreferences:Landroid/content/SharedPreferences;

    .line 43
    return-void
.end method


# virtual methods
.method protected getNonBackedUpUuidFile()Ljava/io/File;
    .locals 3

    .line 132
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "expo_notifications_installation_uuid.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getOrCreateUUID()Ljava/lang/String;
    .locals 5

    .line 96
    invoke-virtual {p0}, Lexpo/modules/notifications/serverregistration/InstallationId;->getUUID()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "uuid":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 98
    return-object v0

    .line 105
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    .line 107
    :try_start_0
    iget-object v1, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lexpo/modules/notifications/serverregistration/InstallationId;->saveUUID(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    sget-object v2, Lexpo/modules/notifications/serverregistration/InstallationId;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while writing new UUID. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v1, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    return-object v1
.end method

.method public getUUID()Ljava/lang/String;
    .locals 4

    .line 47
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "expo_notifications_installation_uuid.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/serverregistration/InstallationId;->readUUIDFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    return-object v0

    .line 62
    :cond_1
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mLegacySharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    const-string v1, "Error while migrating UUID from legacy storage. "

    if-eqz v0, :cond_2

    .line 65
    :try_start_0
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/serverregistration/InstallationId;->saveUUID(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mLegacySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lexpo/modules/notifications/serverregistration/InstallationId;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    return-object v0

    .line 80
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "expo_installation_uuid.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/serverregistration/InstallationId;->readUUIDFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    .line 81
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 83
    :try_start_1
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lexpo/modules/notifications/serverregistration/InstallationId;->saveUUID(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86
    goto :goto_1

    .line 84
    :catch_1
    move-exception v0

    .line 85
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v2, Lexpo/modules/notifications/serverregistration/InstallationId;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    return-object v0

    .line 92
    :cond_3
    iget-object v0, p0, Lexpo/modules/notifications/serverregistration/InstallationId;->mUuid:Ljava/lang/String;

    return-object v0
.end method

.method protected readUUIDFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .line 115
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    .local v0, "fileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 117
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "line":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 119
    return-object v3

    .line 115
    .end local v2    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fileReader":Ljava/io/FileReader;
    .end local p1    # "file":Ljava/io/File;
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "fileReader":Ljava/io/FileReader;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "file":Ljava/io/File;
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0

    .line 120
    .end local v0    # "fileReader":Ljava/io/FileReader;
    .restart local p1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 121
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected saveUUID(Ljava/lang/String;)V
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    new-instance v0, Ljava/io/FileWriter;

    invoke-virtual {p0}, Lexpo/modules/notifications/serverregistration/InstallationId;->getNonBackedUpUuidFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 127
    .local v0, "writer":Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 129
    .end local v0    # "writer":Ljava/io/FileWriter;
    return-void

    .line 126
    .restart local v0    # "writer":Ljava/io/FileWriter;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method
