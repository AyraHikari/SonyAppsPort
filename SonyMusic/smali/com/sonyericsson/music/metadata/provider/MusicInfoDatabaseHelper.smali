.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MusicInfoDatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "music_info.db"

.field private static final DATABASE_VERSION:I = 0x14

.field static final TABLE_ALBUMS:Ljava/lang/String; = "albums"

.field static final TABLE_ARTISTS:Ljava/lang/String; = "artists"

.field static final TABLE_AUDIO:Ljava/lang/String; = "audio"

.field static final TABLE_AUDIO_ALBUMS:Ljava/lang/String; = "audio_albums"

.field static final TABLE_AUDIO_ARTISTS:Ljava/lang/String; = "audio_artists"

.field static final TABLE_AUDIO_GENRES:Ljava/lang/String; = "audio_genres"

.field static final TABLE_AUDIO_PLAYLISTS:Ljava/lang/String; = "audio_playlists"

.field static final TABLE_AUDIO_PLAYLISTS_MAP:Ljava/lang/String; = "audio_playlists_map"

.field static final TABLE_AUDIO_PLAYLISTS_TRACK:Ljava/lang/String; = "audio_playlists_track"

.field static final TABLE_AUDIO_TAG:Ljava/lang/String; = "audio_tag"

.field static final TABLE_CLOUD_ACCOUNT:Ljava/lang/String; = "cloud_account"

.field static final TABLE_CLOUD_FILES:Ljava/lang/String; = "cloud_files"

.field static final TABLE_HIGH_RES_MEDIA:Ljava/lang/String; = "high_res_media"

.field static final TABLE_PLAYLISTS:Ljava/lang/String; = "playlists"

.field static final TABLE_PLAYLIST_TRACKS:Ljava/lang/String; = "playlist_tracks"

.field static final TABLE_SEARCH_HISTORY:Ljava/lang/String; = "search_history"

.field static final TABLE_SENSME:Ljava/lang/String; = "sensme"

.field static final TABLE_SMART_PLAYLISTS:Ljava/lang/String; = "smart_playlists"

.field static final TABLE_SMART_PLAYLISTS_TRACK:Ljava/lang/String; = "smart_playlists_map"

.field static final TABLE_TRACKS:Ljava/lang/String; = "tracks"

.field private static final TABLE_UPDATE_AS_YOU_PLAY_STATISTICS:Ljava/lang/String; = "uayp_stats"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "music_info.db"

    const/4 v1, 0x0

    const/16 v2, 0x14

    .line 73
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private replaceAccountNames(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 521
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_3

    .line 522
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "_id"

    .line 523
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "name"

    .line 524
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    .line 526
    :cond_0
    :try_start_2
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 531
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "name"

    .line 532
    invoke-virtual {v5, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "_id = ?"

    const/4 v8, 0x1

    .line 534
    new-array v9, v8, [Ljava/lang/String;

    .line 536
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    .line 534
    invoke-static {p1, v5, v4, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-eq v3, v8, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    :goto_0
    move v3, v8

    .line 539
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_4

    if-eqz v3, :cond_0

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 545
    invoke-static {p1, v7, v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_5
    if-eqz v0, :cond_6

    .line 549
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void

    :catchall_2
    move-exception v1

    move-object v0, v7

    :goto_2
    const/4 v3, 0x0

    :goto_3
    if-eqz v3, :cond_7

    .line 545
    invoke-static {p1, v7, v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_7
    if-eqz v0, :cond_8

    .line 549
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 551
    :cond_8
    throw v1

    return-void
.end method


# virtual methods
.method public onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onConfigure(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x14

    .line 78
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 83
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const/4 p2, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .line 99
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const/16 v0, 0x14

    if-ne p3, v0, :cond_14

    const/4 p3, 0x1

    if-ge p2, p3, :cond_0

    const-string p3, "DROP TABLE IF EXISTS uayp_stats"

    .line 110
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x2

    if-ge p2, p3, :cond_1

    const-string p3, "DROP TABLE IF EXISTS artists"

    .line 114
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS sensme"

    .line 115
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS albums"

    .line 116
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE artists (_id INTEGER PRIMARY KEY AUTOINCREMENT, artist TEXT, art_path TEXT);"

    .line 118
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE sensme (_id INTEGER PRIMARY KEY AUTOINCREMENT, audio_id INTEGER NOT NULL, sensme_channel INTEGER, available INTEGER DEFAULT 1, UNIQUE (audio_id, sensme_channel));"

    .line 123
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE albums (_id INTEGER PRIMARY KEY AUTOINCREMENT, artist TEXT, album TEXT, art_path TEXT);"

    .line 131
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    const/4 p3, 0x3

    if-ge p2, p3, :cond_2

    const-string p3, "DROP TABLE IF EXISTS artists"

    .line 139
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE artists (_id INTEGER PRIMARY KEY AUTOINCREMENT, artist TEXT NOT NULL UNIQUE, art_path TEXT);"

    .line 140
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS albums"

    .line 145
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE albums (_id INTEGER PRIMARY KEY AUTOINCREMENT, artist TEXT, album TEXT, art_path TEXT, UNIQUE (artist, album));"

    .line 146
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS uayp_stats"

    .line 154
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/4 p3, 0x4

    if-ge p2, p3, :cond_3

    const-string p3, "DROP TABLE IF EXISTS tracks"

    .line 158
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE tracks (_id INTEGER PRIMARY KEY AUTOINCREMENT, track_id INTEGER UNIQUE);"

    .line 160
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_3
    const/4 p3, 0x5

    if-ge p2, p3, :cond_4

    const-string p3, "ALTER TABLE artists ADD COLUMN art_source TEXT"

    .line 166
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE albums ADD COLUMN art_source TEXT"

    .line 168
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_4
    const/4 p3, 0x6

    if-ge p2, p3, :cond_5

    const-string p3, "DROP TABLE IF EXISTS playlists"

    .line 173
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE playlists (_id INTEGER PRIMARY KEY NOT NULL UNIQUE, name TEXT NOT NULL, path TEXT NOT NULL UNIQUE, mediastore_id INTEGER NOT NULL UNIQUE, date_created INTEGER DEFAULT 0, date_updated INTEGER DEFAULT 0, date_played INTEGER DEFAULT 0, is_deleted INTEGER DEFAULT 0, smart_playlist_type INTEGER DEFAULT 0, is_hidden INTEGER DEFAULT 0, play_count INTEGER DEFAULT 0, sort_order INTEGER DEFAULT 0,is_available INTEGER DEFAULT 1);"

    .line 176
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const/4 p3, 0x7

    if-ge p2, p3, :cond_6

    const-string p3, "ALTER TABLE playlists ADD COLUMN members_count INTEGER DEFAULT 0"

    .line 206
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_6
    const/16 p3, 0x8

    if-ge p2, p3, :cond_7

    const-string p3, "DROP TABLE IF EXISTS cloud_account"

    .line 211
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE cloud_account (_id INTEGER PRIMARY KEY AUTOINCREMENT, service_id INTEGER, name TEXT NOT NULL, state INTEGER DEFAULT 0,sync_state INTEGER DEFAULT 0,last_sync_date LONG DEFAULT 0)"

    .line 213
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS cloud_files"

    .line 223
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE cloud_files (_id INTEGER PRIMARY KEY AUTOINCREMENT, file_name TEXT NOT NULL, file_id TEXT NOT NULL, mime_type TEXT NOT NULL, parents TEXT NOT NULL, download_state INTEGER DEFAULT 0,file_path TEXT, title TEXT DEFAULT NULL, artist TEXT DEFAULT NULL, album TEXT DEFAULT NULL, duration INTEGER DEFAULT 0, has_metadata INTEGER DEFAULT 0,art_path TEXT DEFAULT NULL, account_id INTEGER, FOREIGN KEY(account_id) REFERENCES cloud_account(_id) ON DELETE CASCADE);"

    .line 225
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_7
    const/16 p3, 0x9

    if-ge p2, p3, :cond_8

    const-string p3, "DROP TABLE IF EXISTS high_res_media"

    .line 248
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE high_res_media (_id INTEGER PRIMARY KEY AUTOINCREMENT, source INTEGER NOT NULL, type INTEGER NOT NULL, source_id TEXT NOT NULL, path TEXT, date_added INTEGER, is_high_res INTEGER DEFAULT 0, UNIQUE (source, type, source_id) ON CONFLICT REPLACE);"

    .line 250
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_8
    const/16 p3, 0xa

    if-ge p2, p3, :cond_9

    const-string p3, "DROP TABLE IF EXISTS high_res_media"

    .line 273
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE high_res_media (_id INTEGER PRIMARY KEY AUTOINCREMENT, source INTEGER NOT NULL, type INTEGER NOT NULL, source_id TEXT NOT NULL, path TEXT, date_added INTEGER, is_high_res INTEGER DEFAULT 0, UNIQUE (source, type, source_id) ON CONFLICT REPLACE);"

    .line 275
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE cloud_files ADD COLUMN retry_count INTEGER DEFAULT 0"

    .line 288
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    const/16 p3, 0xb

    if-ge p2, p3, :cond_a

    const-string p3, "ALTER TABLE high_res_media ADD COLUMN is_available INTEGER DEFAULT 1"

    .line 293
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    const/16 p3, 0xc

    if-ge p2, p3, :cond_b

    const-string p3, "DROP TABLE IF EXISTS high_res_media"

    .line 309
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE high_res_media (_id INTEGER PRIMARY KEY AUTOINCREMENT, source INTEGER NOT NULL, type INTEGER NOT NULL, source_id TEXT NOT NULL, path TEXT, date_added INTEGER, is_high_res INTEGER DEFAULT 0, is_available INTEGER DEFAULT 1, UNIQUE (source, type, source_id) ON CONFLICT REPLACE);"

    .line 311
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_b
    const/16 p3, 0xd

    if-ge p2, p3, :cond_c

    const-string p3, "DROP TABLE IF EXISTS sensme"

    .line 327
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_c
    const/16 p3, 0xe

    if-ge p2, p3, :cond_d

    const-string p3, "DROP TABLE IF EXISTS search_history"

    .line 331
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE search_history (_id INTEGER PRIMARY KEY AUTOINCREMENT, content_id TEXT NOT NULL, type INTEGER NOT NULL, source INTEGER NOT NULL, track TEXT NOT NULL, artist TEXT NOT NULL, album TEXT NOT NULL, date_updated INTEGER NOT NULL, UNIQUE (content_id, source, type) ON CONFLICT REPLACE);"

    .line 332
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_d
    const/16 p3, 0xf

    if-ge p2, p3, :cond_e

    .line 349
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;->replaceAccountNames(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_e
    const/16 p3, 0x10

    if-ge p2, p3, :cond_f

    const-string p3, "DROP TABLE IF EXISTS uayp_stats"

    .line 353
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_f
    const/16 p3, 0x11

    if-ge p2, p3, :cond_10

    const-string p3, "DROP TABLE IF EXISTS audio"

    .line 357
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS audio_tag"

    .line 358
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS audio_albums"

    .line 359
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS audio_artists"

    .line 360
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP TABLE IF EXISTS audio_genres"

    .line 361
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE audio(_id INTEGER NOT NULL UNIQUE,_data TEXT UNIQUE COLLATE NOCASE,_size INTEGER,date_added INTEGER,date_modified INTEGER,mime_type TEXT,title TEXT,_display_name TEXT,datetaken INTEGER,bucket_id TEXT,bucket_display_name TEXT,title_key TEXT,artist_id INTEGER,album_id INTEGER,composer TEXT,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER,is_podcast INTEGER,album_artist TEXT,duration INTEGER,bookmark INTEGER,artist TEXT,album TEXT,is_drm INTEGER,title_resource_uri TEXT,owner_package_name TEXT DEFAULT NULL,is_pending INTEGER DEFAULT 0,is_download INTEGER DEFAULT 0,is_audiobook INTEGER DEFAULT 0,date_expires INTEGER DEFAULT NULL,is_trashed INTEGER DEFAULT 0,document_id TEXT DEFAULT NULL,instance_id TEXT DEFAULT NULL,original_document_id TEXT DEFAULT NULL,relative_path TEXT DEFAULT NULL,volume_name TEXT DEFAULT NULL,artist_key TEXT DEFAULT NULL,album_key TEXT DEFAULT NULL,genre TEXT DEFAULT NULL,genre_key TEXT DEFAULT NULL,genre_id INTEGER,author TEXT DEFAULT NULL, bitrate INTEGER DEFAULT NULL,cd_track_number TEXT DEFAULT NULL,compilation INTEGER DEFAULT NULL, disc_number TEXT DEFAULT NULL,is_favorite INTEGER DEFAULT 0, num_tracks INTEGER DEFAULT NULL,writer TEXT DEFAULT NULL,generation_added INTEGER DEFAULT 0,generation_modified INTEGER DEFAULT 0)"

    .line 363
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE audio_tag (_id  INTEGER PRIMARY KEY AUTOINCREMENT, audio_id INTEGER, volume_name TEXT, relative_path TEXT, _display_name TEXT, title TEXT, artist TEXT, album TEXT, genre TEXT, track INTEGER, year INTEGER  );"

    .line 392
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE audio_albums (_id  INTEGER PRIMARY KEY AUTOINCREMENT, album TEXT, album_key TEXT );"

    .line 406
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE audio_artists (_id  INTEGER PRIMARY KEY AUTOINCREMENT, artist TEXT, artist_key TEXT );"

    .line 412
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE audio_genres (_id  INTEGER PRIMARY KEY AUTOINCREMENT, genre TEXT, genre_key TEXT );"

    .line 418
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_10
    const/16 p3, 0x12

    if-ge p2, p3, :cond_11

    const-string p3, "DROP TABLE IF EXISTS smart_playlists"

    .line 426
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "DROP VIEW IF EXISTS smart_playlists_map"

    .line 427
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE TABLE smart_playlists (play_order  INTEGER PRIMARY KEY AUTOINCREMENT, audio_id INTEGER NOT NULL, playlist_id INTEGER NOT NULL, play_count INTEGER DEFAULT 1 );"

    .line 429
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "CREATE VIEW smart_playlists_map AS SELECT * FROM audio AS a, smart_playlists AS s WHERE a._id = s.audio_id"

    .line 436
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_11
    const/16 p3, 0x13

    if-ge p2, p3, :cond_12

    const-string p3, "ALTER TABLE smart_playlists ADD COLUMN volume_name TEXT "

    .line 442
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE smart_playlists ADD COLUMN relative_path TEXT "

    .line 444
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p3, "ALTER TABLE smart_playlists ADD COLUMN _display_name TEXT "

    .line 446
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_12
    if-ge p2, v0, :cond_13

    const-string p2, "DROP TABLE IF EXISTS audio_playlists"

    .line 453
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS audio_playlists_map"

    .line 454
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP VIEW IF EXISTS audio_playlists_track"

    .line 455
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE audio_playlists(_id INTEGER NOT NULL UNIQUE, name TEXT NOT NULL, path TEXT NOT NULL UNIQUE, smart_playlist_type INTEGER DEFAULT 0,date_created INTEGER DEFAULT 0,date_updated INTEGER DEFAULT 0,date_played INTEGER DEFAULT 0,play_count INTEGER DEFAULT 0,is_deleted INTEGER DEFAULT 0,is_hidden INTEGER DEFAULT 0,is_available INTEGER DEFAULT 1,members_count  INTEGER DEFAULT 0,mediastore_id INTEGER NOT NULL UNIQUE,_data TEXT UNIQUE COLLATE NOCASE,mime_type TEXT,title TEXT,_display_name TEXT,relative_path TEXT DEFAULT NULL,volume_name TEXT DEFAULT NULL,owner_package_name TEXT DEFAULT NULL,date_added INTEGER DEFAULT 0,date_modified INTEGER DEFAULT 0,datetaken INTEGER DEFAULT 0,date_expires INTEGER DEFAULT NULL,generation_added INTEGER DEFAULT 0,generation_modified INTEGER DEFAULT 0,is_pending INTEGER DEFAULT 0,is_download INTEGER DEFAULT 0,is_favorite INTEGER DEFAULT 0,is_trashed INTEGER DEFAULT 0,bucket_id TEXT,bucket_display_name TEXT);"

    .line 457
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE audio_playlists_map(_id INTEGER  PRIMARY KEY AUTOINCREMENT,playlist_id INTEGER NOT NULL,audio_id INTEGER NOT NULL,play_order INTEGER NOT NULL,orignal_audio_path TEXT NOT NULL,media_audio_path TEXT NOT NULL);"

    .line 491
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE VIEW audio_playlists_track AS SELECT s._id AS _id, playlist_id, a._id AS audio_id, play_order, title_key, instance_id, compilation, disc_number, duration, is_ringtone, album_artist, artist, author, is_drm, bucket_display_name, is_audiobook, owner_package_name, volume_name, title_resource_uri, date_modified, writer, date_expires, composer, _display_name, datetaken, mime_type, is_notification, bitrate, cd_track_number, year, _data, _size, album, genre, is_alarm, title, track, is_music, album_key, is_favorite, is_trashed, document_id, artist_id, generation_added, artist_key, genre_key, is_download, generation_modified, is_pending, date_added, is_podcast, album_id, num_tracks, original_document_id, genre_id, bucket_id, bookmark, relative_path FROM audio AS a, audio_playlists_map AS s WHERE a._data = s.media_audio_path"

    .line 500
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_13
    return-void

    .line 105
    :cond_14
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
