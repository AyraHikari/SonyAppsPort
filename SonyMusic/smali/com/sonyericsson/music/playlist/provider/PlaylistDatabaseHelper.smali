.class public Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PlaylistDatabaseHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "playlist_art.db"

.field private static final DATABASE_VERSION:I = 0x4

.field static final TABLE_PLAYLIST_ART:Ljava/lang/String; = "playlist_art"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "playlist_art.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    .line 26
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 31
    invoke-virtual {p0, p1, v0, v1}, Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p2, 0x0

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/music/playlist/provider/PlaylistDatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    const/4 v0, 0x4

    if-ne p3, v0, :cond_1

    if-ge p2, v0, :cond_0

    const-string p2, "DROP TABLE IF EXISTS playlist_art"

    .line 51
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "CREATE TABLE playlist_art (playlist_type INTEGER NOT NULL, playlist_id INTEGER NOT NULL, playlist_art_uri TEXT,PRIMARY KEY (playlist_type,playlist_id) ON CONFLICT REPLACE);"

    .line 52
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 45
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
