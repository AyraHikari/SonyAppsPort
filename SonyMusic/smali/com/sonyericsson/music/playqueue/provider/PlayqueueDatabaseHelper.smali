.class final Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PlayqueueDatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "playqueue.db"

.field private static final DATABASE_VERSION:I = 0x6

.field static final TABLE_INSERTS:Ljava/lang/String; = "inserts"

.field static final TABLE_LAST_PLAYED:Ljava/lang/String; = "last_played"

.field static final TABLE_PLAYQUEUE:Ljava/lang/String; = "playqueue"

.field static final TABLE_PLAYQUEUE_INSERTS_MAP:Ljava/lang/String; = "playqueue_inserts_map"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "playqueue.db"

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 40
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x6

    .line 45
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 p2, 0x6

    if-ne p3, p2, :cond_0

    const-string p2, "DROP TABLE IF EXISTS playqueue"

    .line 64
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS last_played"

    .line 65
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS inserts"

    .line 66
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS playqueue_inserts_map"

    .line 67
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE playqueue (_id INTEGER PRIMARY KEY NOT NULL UNIQUE, album TEXT, artist TEXT, duration INTEGER, play_order INTEGER NOT NULL UNIQUE, backup_play_order INTEGER, title TEXT, _data TEXT, track_uri TEXT, album_id INTEGER, artist_id INTEGER, hd_audio INTEGER);"

    .line 69
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE last_played (playqueue_pos INTEGER , track_pos INTEGER, shuffle_mode INTEGER, repeat_mode INTEGER, track_uri TEXT);"

    .line 82
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE inserts (_id INTEGER PRIMARY KEY NOT NULL UNIQUE, uri TEXT);"

    .line 89
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE playqueue_inserts_map (_id INTEGER PRIMARY KEY NOT NULL UNIQUE , insert_id INTEGER, play_order INTEGER);"

    .line 93
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot upgrade database to version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", DATABASE_VERSION is "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
