.class Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;
.super Landroid/os/Handler;
.source "PlayqueueProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlayQueueProviderHandler"
.end annotation


# instance fields
.field private final mPlayQueueProvider:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;


# direct methods
.method private constructor <init>(Landroid/os/Looper;Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V
    .locals 0

    .line 1107
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1108
    iput-object p2, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;->mPlayQueueProvider:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    return-void
.end method

.method public static createPlayQueueProviderHandler(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;
    .locals 3

    .line 1100
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PlayqueueProvider:SyncHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 1102
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1103
    new-instance v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;-><init>(Landroid/os/Looper;Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V

    return-object v1
.end method

.method private readPersistentData()V
    .locals 21

    move-object/from16 v1, p0

    .line 1170
    iget-object v0, v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;->mPlayQueueProvider:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    .line 1172
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1181
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;->tryGetReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string v3, "playqueue"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "play_order ASC"

    move-object v2, v10

    .line 1183
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1189
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 1190
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    const-string v3, "_id"

    .line 1192
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v5, "album"

    .line 1193
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "artist"

    .line 1194
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const-string v7, "duration"

    .line 1196
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "play_order"

    .line 1198
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "title"

    .line 1199
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v13, "_data"

    .line 1200
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "track_uri"

    .line 1202
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v15, "backup_play_order"

    .line 1204
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v12, "album_id"

    .line 1206
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v11, "artist_id"

    .line 1208
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v1, "hd_audio"

    .line 1209
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .line 1211
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-eqz v17, :cond_2

    move-object/from16 v17, v10

    .line 1212
    new-instance v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    invoke-direct {v10}, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;-><init>()V

    move-object/from16 v18, v4

    .line 1213
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move/from16 v20, v11

    move/from16 v19, v12

    int-to-long v11, v4

    .line 1214
    iput-wide v11, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    .line 1215
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1216
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbum:Ljava/lang/String;

    .line 1217
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtist:Ljava/lang/String;

    .line 1218
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mDuration:J

    .line 1219
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    .line 1220
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTitle:Ljava/lang/String;

    .line 1221
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mData:Ljava/lang/String;

    .line 1222
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    .line 1223
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mBackupPlayOrder:I

    const/4 v4, 0x1

    .line 1224
    iput-boolean v4, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAvailable:Z

    move/from16 v4, v19

    .line 1225
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbumId:J

    move v12, v3

    move/from16 v19, v4

    move/from16 v11, v20

    .line 1226
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtistId:J

    .line 1227
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iput-boolean v3, v10, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mHDAudio:Z

    move-object/from16 v3, v18

    .line 1228
    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    move v3, v12

    move-object/from16 v10, v17

    move/from16 v12, v19

    goto :goto_1

    :cond_2
    move-object v3, v4

    move-object/from16 v17, v10

    .line 1231
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v1, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1232
    throw v0

    :cond_3
    move-object/from16 v16, v0

    move-object/from16 v17, v10

    .line 1239
    new-instance v4, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    const/4 v0, 0x0

    :goto_3
    if-eqz v17, :cond_4

    const-string v3, "inserts"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id ASC"

    move-object/from16 v2, v17

    .line 1244
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :cond_4
    if-eqz v2, :cond_6

    .line 1250
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const-string v4, "_id"

    .line 1252
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "uri"

    .line 1254
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const/4 v12, 0x0

    .line 1256
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1257
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1258
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1259
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1260
    new-instance v8, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;

    invoke-direct {v8, v6, v7}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;-><init>(ILjava/lang/String;)V

    .line 1261
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    .line 1264
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v10, v3

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1265
    throw v0

    .line 1271
    :cond_6
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v10, v3

    const/4 v12, 0x0

    :goto_5
    if-eqz v17, :cond_7

    const-string v3, "playqueue_inserts_map"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "_id ASC"

    move-object/from16 v2, v17

    .line 1276
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_9

    .line 1282
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const-string v4, "_id"

    .line 1284
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "insert_id"

    .line 1285
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "play_order"

    .line 1287
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1290
    :goto_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1291
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1292
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 1293
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 1294
    new-instance v11, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;

    int-to-long v13, v7

    invoke-direct {v11, v13, v14, v8, v9}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;-><init>(JII)V

    .line 1296
    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    .line 1299
    :cond_8
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object/from16 v2, v16

    goto :goto_7

    :catchall_2
    move-exception v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1300
    throw v0

    .line 1306
    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v2, v16

    .line 1309
    :goto_7
    iget-object v4, v2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1310
    :try_start_3
    iput-object v1, v2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mMemCache:Ljava/util/List;

    .line 1311
    iput-object v3, v2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mCacheInsertMap:Ljava/util/List;

    .line 1312
    iput-object v10, v2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mInserts:Ljava/util/List;

    const/4 v1, 0x1

    add-int/2addr v0, v1

    add-int/2addr v12, v1

    .line 1316
    sget-object v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->MEMCACHE:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    invoke-static {v1, v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->resetIdCounter(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;I)V

    .line 1317
    sget-object v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;->INSERTS:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;

    invoke-static {v0, v12}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProviderUtils;->resetIdCounter(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$TableType;I)V

    .line 1318
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1324
    iget-object v0, v2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_3
    move-exception v0

    .line 1318
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    return-void
.end method

.method private saveCache(Landroid/os/Message;)V
    .locals 9

    .line 1354
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;->mPlayQueueProvider:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    .line 1356
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1357
    iget-object v0, v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1358
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1360
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$SaveObject;

    .line 1361
    iget-object v1, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$SaveObject;->mMemCache:Ljava/util/List;

    .line 1362
    iget-object v2, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$SaveObject;->mInserts:Ljava/util/List;

    .line 1363
    iget-object p1, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$SaveObject;->mCacheInsertMap:Ljava/util/List;

    :try_start_0
    const-string v3, "DELETE FROM playqueue"

    .line 1366
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM inserts"

    .line 1367
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v3, "DELETE FROM playqueue_inserts_map"

    .line 1368
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1370
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;

    .line 1371
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "_id"

    .line 1372
    iget-wide v7, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "album"

    .line 1373
    iget-object v7, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "artist"

    .line 1374
    iget-object v7, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "duration"

    .line 1375
    iget-wide v7, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mDuration:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "play_order"

    .line 1376
    iget v7, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mPlayOrder:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "title"

    .line 1377
    iget-object v7, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_data"

    .line 1378
    iget-object v7, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mData:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "track_uri"

    .line 1379
    iget-object v7, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mTrackUri:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "backup_play_order"

    .line 1380
    iget v7, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mBackupPlayOrder:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "album_id"

    .line 1381
    iget-wide v7, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mAlbumId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "artist_id"

    .line 1382
    iget-wide v7, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mArtistId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "hd_audio"

    .line 1383
    iget-boolean v3, v3, Lcom/sonyericsson/music/playqueue/provider/MemCacheEntry;->mHDAudio:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "playqueue"

    .line 1384
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto/16 :goto_0

    .line 1387
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;

    .line 1388
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "_id"

    .line 1389
    iget v6, v2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;->mId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "uri"

    .line 1390
    iget-object v2, v2, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$InsertEntry;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "inserts"

    .line 1391
    invoke-virtual {v0, v2, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_2

    .line 1394
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;

    .line 1395
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_id"

    .line 1396
    iget-wide v5, v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "insert_id"

    .line 1397
    iget v5, v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mInsertId:I

    .line 1398
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1397
    invoke-virtual {v2, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "play_order"

    .line 1399
    iget v1, v1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$CacheInsertMapEntry;->mSourcePlayOrder:I

    .line 1400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1399
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "playqueue_inserts_map"

    .line 1401
    invoke-virtual {v0, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    .line 1404
    :cond_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1407
    throw p1

    return-void
.end method

.method private tryGetReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .line 1333
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;->mPlayQueueProvider:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    const/4 v1, 0x5

    :goto_0
    if-lez v1, :cond_0

    .line 1338
    :try_start_0
    iget-object v2, v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mDatabaseHelper:Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v2, "SemcMusicPlayer"

    .line 1340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to open playqueue, attempts remaining: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1c2

    .line 1343
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v2, "SemcMusicPlayer"

    const-string v3, "Failed to sleep."

    .line 1345
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const-string v0, "SemcMusicPlayer"

    const-string v1, "Failed to open playqueue, giving up."

    .line 1349
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1117
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;->mPlayQueueProvider:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    .line 1120
    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->access$200(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1124
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1161
    :pswitch_0
    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->access$600(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V

    goto :goto_0

    .line 1157
    :pswitch_1
    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->access$500(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V

    goto :goto_0

    .line 1135
    :pswitch_2
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->removeNonMusicPlayerItems(Landroid/content/Context;)V

    .line 1137
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->access$300(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;Landroid/content/Context;)V

    .line 1139
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->access$400(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;Landroid/content/Context;)V

    goto :goto_0

    .line 1153
    :pswitch_3
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->access$400(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;Landroid/content/Context;)V

    goto :goto_0

    .line 1145
    :pswitch_4
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1146
    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->access$300(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;Landroid/content/Context;)V

    goto :goto_0

    .line 1130
    :pswitch_5
    invoke-direct {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;->readPersistentData()V

    const/4 p1, 0x7

    .line 1131
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1126
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;->saveCache(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
