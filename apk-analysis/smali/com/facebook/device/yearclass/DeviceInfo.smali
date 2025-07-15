.class public Lcom/facebook/device/yearclass/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field public static final DEVICEINFO_UNKNOWN:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Lcom/facebook/device/yearclass/DeviceInfo$1;

    invoke-direct {v0}, Lcom/facebook/device/yearclass/DeviceInfo$1;-><init>()V

    sput-object v0, Lcom/facebook/device/yearclass/DeviceInfo;->CPU_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static extractValue([BI)I
    .locals 4
    .param p0, "buffer"    # [B
    .param p1, "index"    # I

    .line 249
    nop

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_2

    aget-byte v0, p0, p1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 250
    aget-byte v0, p0, p1

    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    move v0, p1

    .line 252
    .local v0, "start":I
    add-int/lit8 p1, p1, 0x1

    .line 253
    :goto_1
    array-length v1, p0

    if-ge p1, v1, :cond_0

    aget-byte v1, p0, p1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 256
    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p1, v0

    invoke-direct {v1, p0, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .line 257
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 259
    .end local v0    # "start":I
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 261
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static getCPUMaxFreqKHz()I
    .locals 10

    .line 128
    const/4 v0, -0x1

    .line 130
    .local v0, "maxFreq":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/facebook/device/yearclass/DeviceInfo;->getNumberOfCPUCores()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/cpufreq/cpuinfo_max_freq"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v3, "cpuInfoMaxFreqFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 135
    const/16 v4, 0x80

    new-array v4, v4, [B

    .line 136
    .local v4, "buffer":[B
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 138
    .local v5, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 139
    const/4 v6, 0x0

    .line 141
    .local v6, "endIndex":I
    :goto_1
    aget-byte v7, v4, v6

    invoke-static {v7}, Ljava/lang/Character;->isDigit(I)Z

    move-result v7

    if-eqz v7, :cond_0

    array-length v7, v4

    if-ge v6, v7, :cond_0

    .line 142
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 144
    :cond_0
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v4, v8, v6}, Ljava/lang/String;-><init>([BII)V

    .line 145
    .local v7, "str":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 146
    .local v8, "freqBound":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-le v9, v0, :cond_1

    .line 147
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v9

    .line 152
    .end local v6    # "endIndex":I
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "freqBound":Ljava/lang/Integer;
    :cond_1
    :goto_2
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 153
    goto :goto_3

    .line 152
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .end local v0    # "maxFreq":I
    throw v6

    .line 149
    .restart local v0    # "maxFreq":I
    :catch_0
    move-exception v6

    goto :goto_2

    .line 130
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "cpuInfoMaxFreqFile":Ljava/io/File;
    .end local v4    # "buffer":[B
    .end local v5    # "stream":Ljava/io/FileInputStream;
    :cond_2
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_3
    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 157
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    .local v1, "stream":Ljava/io/FileInputStream;
    :try_start_3
    const-string v2, "cpu MHz"

    invoke-static {v2, v1}, Lcom/facebook/device/yearclass/DeviceInfo;->parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    .local v2, "freqBound":I
    mul-int/lit16 v2, v2, 0x3e8

    .line 161
    if-le v2, v0, :cond_4

    move v0, v2

    .line 163
    .end local v2    # "freqBound":I
    :cond_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 164
    goto :goto_4

    .line 163
    :catchall_1
    move-exception v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .end local v0    # "maxFreq":I
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 168
    .end local v1    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "maxFreq":I
    :cond_5
    :goto_4
    goto :goto_5

    .line 166
    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, -0x1

    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5
    return v0
.end method

.method private static getCoresFromCPUFileList()I
    .locals 2

    .line 101
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/system/cpu/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/device/yearclass/DeviceInfo;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method private static getCoresFromFileInfo(Ljava/lang/String;)I
    .locals 5
    .param p0, "fileLocation"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 70
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 71
    .local v1, "buf":Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "fileContents":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 73
    invoke-static {v2}, Lcom/facebook/device/yearclass/DeviceInfo;->getCoresFromFileString(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    nop

    .line 79
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    goto :goto_0

    .line 80
    :catch_0
    move-exception v4

    .line 73
    :goto_0
    return v3

    .line 77
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .end local v2    # "fileContents":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 79
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 82
    goto :goto_1

    .line 80
    :catch_1
    move-exception v2

    .line 82
    :cond_0
    :goto_1
    throw v1

    .line 74
    :catch_2
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/IOException;
    nop

    .line 77
    if-eqz v0, :cond_1

    .line 79
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 82
    goto :goto_2

    .line 80
    :catch_3
    move-exception v2

    .line 75
    :cond_1
    :goto_2
    const/4 v2, -0x1

    return v2
.end method

.method static getCoresFromFileString(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 93
    if-eqz p0, :cond_1

    const-string v0, "0-[\\d]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 97
    .local v0, "cores":I
    return v0

    .line 94
    .end local v0    # "cores":I
    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getNumberOfCPUCores()I
    .locals 3

    .line 37
    nop

    .line 46
    :try_start_0
    const-string v0, "/sys/devices/system/cpu/possible"

    invoke-static {v0}, Lcom/facebook/device/yearclass/DeviceInfo;->getCoresFromFileInfo(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, "cores":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 48
    const-string v2, "/sys/devices/system/cpu/present"

    invoke-static {v2}, Lcom/facebook/device/yearclass/DeviceInfo;->getCoresFromFileInfo(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 50
    :cond_0
    if-ne v0, v1, :cond_1

    .line 51
    invoke-static {}, Lcom/facebook/device/yearclass/DeviceInfo;->getCoresFromCPUFileList()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 55
    .end local v0    # "cores":I
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v1, -0x1

    move v0, v1

    .local v1, "cores":I
    goto :goto_1

    .line 53
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v1    # "cores":I
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v0, -0x1

    .line 57
    .local v0, "cores":I
    :cond_1
    :goto_0
    nop

    .line 58
    :goto_1
    return v0
.end method

.method public static getTotalMemory(Landroid/content/Context;)J
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .line 181
    nop

    .line 182
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 183
    .local v0, "memInfo":Landroid/app/ActivityManager$MemoryInfo;
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 184
    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 185
    nop

    .line 186
    iget-wide v2, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    return-wide v2
.end method

.method private static parseFileForValue(Ljava/lang/String;Ljava/io/FileInputStream;)I
    .locals 7
    .param p0, "textToMatch"    # Ljava/lang/String;
    .param p1, "stream"    # Ljava/io/FileInputStream;

    .line 215
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 217
    .local v0, "buffer":[B
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    .line 218
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 219
    aget-byte v3, v0, v2

    const/16 v4, 0xa

    if-eq v3, v4, :cond_0

    if-nez v2, :cond_4

    .line 220
    :cond_0
    aget-byte v3, v0, v2

    if-ne v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 221
    :cond_1
    move v3, v2

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 222
    sub-int v4, v3, v2

    .line 224
    .local v4, "textIndex":I
    aget-byte v5, v0, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_2

    .line 225
    goto :goto_2

    .line 228
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_3

    .line 229
    invoke-static {v0, v3}, Lcom/facebook/device/yearclass/DeviceInfo;->extractValue([BI)I

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    .line 221
    .end local v4    # "textIndex":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 218
    .end local v3    # "j":I
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "length":I
    .end local v2    # "i":I
    :cond_5
    goto :goto_3

    .line 236
    :catch_0
    move-exception v1

    goto :goto_4

    .line 234
    :catch_1
    move-exception v1

    .line 237
    :goto_3
    nop

    .line 238
    :goto_4
    const/4 v1, -0x1

    return v1
.end method
