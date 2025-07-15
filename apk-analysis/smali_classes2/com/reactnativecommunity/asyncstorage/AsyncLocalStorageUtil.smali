.class public Lcom/reactnativecommunity/asyncstorage/AsyncLocalStorageUtil;
.super Ljava/lang/Object;
.source "AsyncLocalStorageUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildKeySelection(I)Ljava/lang/String;
    .locals 3
    .param p0, "selectionCount"    # I

    .line 39
    new-array v0, p0, [Ljava/lang/String;

    .line 40
    .local v0, "list":[Ljava/lang/String;
    const-string v1, "?"

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-static {v2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static buildKeySelectionArgs(Lcom/facebook/react/bridge/ReadableArray;II)[Ljava/lang/String;
    .locals 3
    .param p0, "keys"    # Lcom/facebook/react/bridge/ReadableArray;
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 50
    new-array v0, p2, [Ljava/lang/String;

    .line 51
    .local v0, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "keyIndex":I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 52
    add-int v2, p1, v1

    invoke-interface {p0, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "keyIndex":I
    :cond_0
    return-object v0
.end method

.method private static deepMergeInto(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 5
    .param p0, "oldJSON"    # Lorg/json/JSONObject;
    .param p1, "newJSON"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 130
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 131
    .local v0, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 135
    .local v2, "newJSONObject":Lorg/json/JSONObject;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 136
    .local v3, "oldJSONObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 137
    invoke-static {v3, v2}, Lcom/reactnativecommunity/asyncstorage/AsyncLocalStorageUtil;->deepMergeInto(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 138
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 140
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "newJSONObject":Lorg/json/JSONObject;
    .end local v3    # "oldJSONObject":Lorg/json/JSONObject;
    :goto_1
    goto :goto_0

    .line 143
    :cond_1
    return-void
.end method

.method public static getItemImpl(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "key"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 61
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const-string v1, "value"

    const/4 v9, 0x0

    aput-object v1, v3, v9

    .line 62
    .local v3, "columns":[Ljava/lang/String;
    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v9

    .line 64
    .local v5, "selectionArgs":[Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "catalystLocalStorage"

    const-string v4, "key=?"

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 74
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 75
    nop

    .line 80
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 75
    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_0
    :try_start_1
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 80
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 77
    return-object v1

    .line 80
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 81
    throw v1
.end method

.method static mergeImpl(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 108
    invoke-static {p0, p1}, Lcom/reactnativecommunity/asyncstorage/AsyncLocalStorageUtil;->getItemImpl(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "oldValue":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 112
    move-object v1, p2

    .local v1, "newValue":Ljava/lang/String;
    goto :goto_0

    .line 114
    .end local v1    # "newValue":Ljava/lang/String;
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "oldJSON":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "newJSON":Lorg/json/JSONObject;
    invoke-static {v1, v2}, Lcom/reactnativecommunity/asyncstorage/AsyncLocalStorageUtil;->deepMergeInto(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 117
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 120
    .end local v2    # "newJSON":Lorg/json/JSONObject;
    .local v1, "newValue":Ljava/lang/String;
    :goto_0
    invoke-static {p0, p1, v1}, Lcom/reactnativecommunity/asyncstorage/AsyncLocalStorageUtil;->setItemImpl(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method static setItemImpl(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 89
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    const/4 v2, 0x5

    const-string v3, "catalystLocalStorage"

    invoke-virtual {p0, v3, v1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v1

    .line 98
    .local v1, "inserted":J
    const-wide/16 v3, -0x1

    cmp-long v3, v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static verifyAndForceSqliteCheckpoint(Landroid/content/Context;)V
    .locals 8
    .param p0, "ctx"    # Landroid/content/Context;

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const-string v2, "AsyncStorage_Next"

    if-ge v0, v1, :cond_0

    .line 158
    const-string v0, "SQLite checkpoint not required on this API version."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    const-string v0, "AsyncStorage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 162
    .local v0, "nextStorageFile":Ljava/io/File;
    const-string v1, "RKStorage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 163
    .local v1, "currentStorageFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 164
    .local v3, "isCheckpointRequired":Z
    :goto_0
    if-nez v3, :cond_2

    .line 165
    const-string v4, "SQLite checkpoint not required."

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 170
    :cond_2
    :try_start_0
    invoke-static {p0}, Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;->getInstance(Landroid/content/Context;)Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;

    move-result-object v4

    .line 171
    .local v4, "supplier":Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;
    invoke-virtual {v4}, Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;->get()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "PRAGMA wal_checkpoint"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 172
    invoke-virtual {v4}, Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;->closeDatabase()V

    .line 173
    const-string v5, "Forcing SQLite checkpoint successful."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    nop

    .end local v4    # "supplier":Lcom/reactnativecommunity/asyncstorage/ReactDatabaseSupplier;
    goto :goto_1

    .line 174
    :catch_0
    move-exception v4

    .line 175
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not force checkpoint on RKStorage, the Next storage might not migrate the data properly: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
