.class public Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PlayDatabaseHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper$PlayColumns;,
        Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper$Clock;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "play_data.db"

.field private static final DATABASE_VERSION:I = 0x5

.field static final LONG_PAUSE_TIME:J = 0x493e0L

.field private static final SHORT_PLAY_TIME:J = 0x3e8L

.field static final TABLE_PLAYS:Ljava/lang/String; = "plays"

.field private static final TABLE_UNSENT:Ljava/lang/String; = "unsent"

.field private static final TRACK_PLAY_COLUMNS:[Ljava/lang/String;

.field static final TRACK_PLAY_DONE:I = 0x2

.field static final TRACK_PLAY_ONGOING:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "artist"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "play_duration"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "start_date"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "played_from_type"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->TRACK_PLAY_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "play_data.db"

    const/4 v1, 0x0

    const/4 v2, 0x5

    .line 48
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 49
    iput-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private deletePlay(Ljava/lang/String;)V
    .locals 3

    .line 366
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x1

    .line 369
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "plays"

    const-string v2, "track_uri = ?"

    .line 370
    invoke-virtual {v0, p1, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 372
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 376
    throw p1
.end method

.method private getTrackPlayFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;
    .locals 8

    const-string v0, "artist"

    .line 338
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "played_from_type"

    .line 339
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "start_date"

    .line 340
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v0, "play_duration"

    .line 341
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    .line 343
    div-long/2addr v0, v6

    long-to-int v6, v0

    .line 345
    new-instance p1, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;-><init>(Ljava/lang/String;Ljava/lang/String;JI)V

    return-object p1
.end method

.method private getValidTime(J)J
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :goto_0
    return-wide p1
.end method

.method private updatePlay(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 3

    .line 349
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x2

    .line 352
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    const-string p1, "plays"

    const-string v2, "track_uri = ? AND status = ?"

    .line 353
    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_0

    .line 358
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 362
    throw p1
.end method


# virtual methods
.method clearAll()V
    .locals 3

    .line 380
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v1, "plays"

    const/4 v2, 0x0

    .line 383
    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 384
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 387
    throw v1
.end method

.method closeDatabaseInternal()V
    .locals 0

    .line 391
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method finalizeOngoingPlays()V
    .locals 10

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x1

    .line 273
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "track_uri"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 275
    new-array v6, v2, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v5

    const-string v2, "plays"

    const-string v4, "status = ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    .line 276
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 279
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 280
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "track_uri"

    .line 281
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 282
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_0
    throw v0

    :cond_1
    if-eqz v1, :cond_2

    .line 287
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 291
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 292
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 293
    invoke-virtual {p0, v3, v1, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->trackPlayStop(Ljava/lang/String;J)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method getTrackPlays()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;",
            ">;"
        }
    .end annotation

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 305
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 306
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v1, 0x1

    .line 309
    :try_start_0
    new-array v11, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v1

    const-string v2, "plays"

    .line 310
    sget-object v3, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->TRACK_PLAY_COLUMNS:[Ljava/lang/String;

    const-string v4, "status = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    move-object v5, v11

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 313
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 314
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->getTrackPlayFromCursor(Landroid/database/Cursor;)Lcom/sonyericsson/music/datacollection/dataplatform/TrackPlay;

    move-result-object v2

    .line 316
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_0

    .line 321
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_0
    throw v0

    :cond_1
    if-eqz v1, :cond_2

    .line 321
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v1, "plays"

    const-string v2, "status = ?"

    .line 326
    invoke-virtual {v10, v1, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 327
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 329
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object v0

    :catchall_1
    move-exception v0

    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 330
    throw v0

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x5

    .line 54
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 59
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const/4 p2, 0x0

    .line 63
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 68
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const/4 v0, 0x5

    if-ne p3, v0, :cond_1

    if-ge p2, v0, :cond_0

    const-string p2, "DROP TABLE IF EXISTS plays"

    .line 79
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS unsent"

    .line 80
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE plays (_id INTEGER PRIMARY KEY AUTOINCREMENT,track_uri TEXT, start_date INTEGER,start_time INTEGER,pause_time INTEGER DEFAULT 0,accumulated_pause_time INTEGER DEFAULT 0,play_duration INTEGER DEFAULT 0,status INTEGER,artist TEXT,duration INTEGER,played_from_type TEXT);"

    .line 82
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot upgrade database to version "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", DATABASE_VERSION is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method trackPlayPause(Ljava/lang/String;J)V
    .locals 10

    .line 175
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v8, 0x0

    .line 178
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "start_time"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "pause_time"

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const-string v1, "accumulated_pause_time"

    const/4 v5, 0x2

    aput-object v1, v2, v5

    .line 180
    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    const-string v1, "plays"

    const-string v3, "track_uri = ? AND status = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    .line 181
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 185
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "start_time"

    .line 186
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "pause_time"

    .line 187
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "accumulated_pause_time"

    .line 188
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 194
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    .line 199
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->getValidTime(J)J

    move-result-wide p2

    sub-long v0, p2, v0

    sub-long/2addr v0, v4

    .line 207
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "pause_time"

    .line 208
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "play_duration"

    .line 209
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 211
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->updatePlay(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void

    :cond_1
    return-void

    :cond_2
    if-eqz v8, :cond_3

    .line 194
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 196
    :cond_4
    throw p1
.end method

.method trackPlayStart(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v2, p2

    .line 102
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v5, 0x3

    const/4 v12, 0x0

    .line 105
    :try_start_0
    new-array v6, v5, [Ljava/lang/String;

    const-string v5, "pause_time"

    const/4 v13, 0x0

    aput-object v5, v6, v13

    const-string v5, "accumulated_pause_time"

    const/4 v14, 0x1

    aput-object v5, v6, v14

    const-string v5, "start_time"

    const/4 v7, 0x2

    aput-object v5, v6, v7

    .line 107
    new-array v8, v7, [Ljava/lang/String;

    aput-object v0, v8, v13

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v14

    const-string v5, "plays"

    const-string v7, "track_uri = ? AND status = ?"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 108
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_0

    .line 112
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v12, v4

    goto/16 :goto_3

    :cond_0
    const/4 v5, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    if-eqz v4, :cond_1

    .line 113
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "pause_time"

    .line 114
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v10, "accumulated_pause_time"

    .line 115
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_1
    move-wide v8, v6

    move-wide v10, v8

    :goto_1
    if-eqz v4, :cond_2

    .line 119
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    if-lez v5, :cond_3

    cmp-long v4, v8, v6

    if-nez v4, :cond_3

    return-void

    :cond_3
    cmp-long v4, v8, v6

    if-nez v4, :cond_4

    .line 134
    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->getValidTime(J)J

    move-result-wide v2

    .line 135
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "track_uri"

    .line 136
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "start_date"

    .line 137
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "start_time"

    .line 138
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "played_from_type"

    move-object/from16 v5, p4

    .line 139
    invoke-virtual {v4, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "play_duration"

    .line 140
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "status"

    .line 141
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "artist"

    move-object/from16 v6, p5

    .line 142
    invoke-virtual {v4, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "duration"

    .line 143
    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 147
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v0, "plays"

    .line 148
    invoke-virtual {v2, v0, v12, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 149
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 151
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 152
    throw v0

    :cond_4
    move-object/from16 v5, p4

    move-object/from16 v6, p5

    .line 155
    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->getValidTime(J)J

    move-result-wide v14

    sub-long/2addr v14, v8

    add-long/2addr v10, v14

    .line 158
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "accumulated_pause_time"

    .line 159
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "pause_time"

    .line 160
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    invoke-direct {v1, v0, v4}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->updatePlay(Ljava/lang/String;Landroid/content/ContentValues;)V

    const-wide/32 v7, 0x493e0

    cmp-long v4, v10, v7

    if-lez v4, :cond_5

    .line 165
    invoke-virtual/range {p0 .. p3}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->trackPlayStop(Ljava/lang/String;J)V

    .line 166
    invoke-virtual/range {p0 .. p7}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->trackPlayStart(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;J)V

    :cond_5
    :goto_2
    return-void

    :catchall_2
    move-exception v0

    :goto_3
    if-eqz v12, :cond_6

    .line 119
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_6
    throw v0
.end method

.method trackPlayStop(Ljava/lang/String;J)V
    .locals 12

    .line 215
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->getValidTime(J)J

    move-result-wide p2

    .line 221
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v8, 0x0

    .line 224
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "start_time"

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "pause_time"

    const/4 v4, 0x1

    aput-object v1, v2, v4

    const-string v1, "accumulated_pause_time"

    const/4 v9, 0x2

    aput-object v1, v2, v9

    const/4 v1, 0x3

    const-string v5, "duration"

    aput-object v5, v2, v1

    .line 226
    new-array v5, v9, [Ljava/lang/String;

    aput-object p1, v5, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    const-string v1, "plays"

    const-string v3, "track_uri = ? AND status = ?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v10

    .line 227
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 231
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "start_time"

    .line 232
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "pause_time"

    .line 233
    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "accumulated_pause_time"

    .line 234
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string v6, "duration"

    .line 235
    invoke-interface {v8, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_0

    .line 241
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v8, v2, v10

    if-lez v8, :cond_1

    sub-long v2, p2, v2

    add-long/2addr v4, v2

    :cond_1
    sub-long/2addr p2, v0

    sub-long/2addr p2, v4

    cmp-long v0, v6, v10

    if-lez v0, :cond_2

    cmp-long v0, p2, v6

    if-lez v0, :cond_2

    move-wide p2, v6

    :cond_2
    const-wide/16 v0, 0x3e8

    cmp-long v2, p2, v0

    if-gez v2, :cond_3

    .line 255
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->deletePlay(Ljava/lang/String;)V

    goto :goto_0

    .line 257
    :cond_3
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    .line 258
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "play_duration"

    .line 259
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 261
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->updatePlay(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 264
    iget-object p1, p0, Lcom/sonyericsson/music/datacollection/dataplatform/PlayDatabaseHelper;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_4

    .line 265
    invoke-static {p1}, Lcom/sonyericsson/music/datacollection/dataplatform/DataPlatformUtils;->sendDataPlatformPlayData(Landroid/content/Context;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-eqz v8, :cond_6

    .line 241
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_7
    throw p1
.end method
