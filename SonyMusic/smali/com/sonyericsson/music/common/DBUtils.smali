.class public Lcom/sonyericsson/music/common/DBUtils;
.super Ljava/lang/Object;
.source "DBUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;,
        Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;
    }
.end annotation


# static fields
.field public static final ALBUM_TRACKS_WHERE_BASE:Ljava/lang/String; = "is_music <> 0"

.field private static final ALBUM_TRACK_COLUMNS:[Ljava/lang/String;

.field public static final ALL_MEDIASTORE_TRACK_COLUMNS:[Ljava/lang/String;

.field public static final ALL_MUSIC_SELECTION:Ljava/lang/String; = "is_music <> 0"

.field private static final ALL_TRACKS_COLUMNS:[Ljava/lang/String;

.field private static final ALL_TRACKS_COLUMNS_WITH_DATA:[Ljava/lang/String;

.field public static final ALL_TRACKS_SORT_ORDER_DATE_ADDED_DESC:Ljava/lang/String; = "date_added DESC"

.field public static final ALL_TRACKS_SORT_ORDER_DATE_MODIFIED_DESC:Ljava/lang/String; = "date_modified DESC"

.field public static final ALL_TRACKS_SORT_ORDER_TITLE:Ljava/lang/String; = "title COLLATE NOCASE"

.field static final ARTIST_ALBUMS_PROJECTION:[Ljava/lang/String;

.field public static final ARTIST_TRACKS_SORT_ORDER:Ljava/lang/String; = "title COLLATE NOCASE"

.field public static final ARTIST_TRACKS_WHERE_BASE:Ljava/lang/String; = "is_music <> 0"

.field public static final DEFAULT_UNKNOWN_ALBUM:Ljava/lang/String; = "Unknown album"

.field public static final DEFAULT_UNKNOWN_ARTIST:Ljava/lang/String; = "Unknown artist"

.field public static final DEFAULT_UNKNOWN_LABEL:Ljava/lang/String; = "<unknown>"

.field public static final EXTERNAL_MEDIA:Ljava/lang/String; = "external"

.field public static final FAVORITES_SUBSTITUTION_STRING:Ljava/lang/String; = "favorites_sub"

.field public static final GENRES_SORT_ORDER:Ljava/lang/String; = "name COLLATE NOCASE"

.field private static final GENRE_COLUMNS:[Ljava/lang/String;

.field private static final GENRE_COLUMNS_WITH_DATA:[Ljava/lang/String;

.field private static final MAX_SQL_ARG_LIMIT:I = 0x3e7

.field public static final MOST_PLAYED_SUBSTITUTION_STRING:Ljava/lang/String; = "most_played_sub"

.field public static final MUSICINFOPROVIDER_PLAYLISTS_MAX_DATES_DESC:Ljava/lang/String; = "MAX (date_created, date_updated, date_played) DESC, name ASC"

.field private static final MY_PLAYLIST_COLUMNS:[Ljava/lang/String;

.field private static final MY_PLAYLIST_COLUMNS_WITH_DATA:[Ljava/lang/String;

.field public static final NEWLY_ADDED_SUBSTITUTION_STRING:Ljava/lang/String; = "newly_added_sub"

.field public static final NOT_VALID:I = -0x1

.field public static final NO_LIMIT:I = 0x0

.field public static final PLAYLISTS_ALPHABETIC_SORT_ORDER:Ljava/lang/String; = "replace(replace(replace(replace(name, \"Music_favorites\", \"favorites_sub\"), \"Music_most_played_tracks\", \"most_played_sub\"), \"Music_newly_added_tracks\", \"newly_added_sub\"), \"Music_recently_played_tracks\", \"recently_played_sub\") COLLATE NOCASE"

.field public static final PLAYLISTS_COALESCE_DATES_DESC:Ljava/lang/String; = "COALESCE (date_updated, date_created, date_played) DESC "

.field public static final PLAYLISTS_COLUMNS:[Ljava/lang/String;

.field private static final PLAYLISTS_REPLACE_STATEMENT:Ljava/lang/String; = "replace(replace(replace(replace(name, \"Music_favorites\", \"favorites_sub\"), \"Music_most_played_tracks\", \"most_played_sub\"), \"Music_newly_added_tracks\", \"newly_added_sub\"), \"Music_recently_played_tracks\", \"recently_played_sub\")"

.field private static final PLAYQUEUE_COLUMNS:[Ljava/lang/String;

.field private static final PLAYQUEUE_COLUMNS_WITH_DATA:[Ljava/lang/String;

.field public static final RECENTLY_PLAYED_SUBSTITUTION_STRING:Ljava/lang/String; = "recently_played_sub"

.field private static final SEMC_MEDIA_EXTRA_EXTENDED_AUDIO_URI:Landroid/net/Uri;

.field public static final UNKNOWN_ALBUM_SUBSTITUTION_STRING:Ljava/lang/String; = "unknown_album"

.field public static final UNKNOWN_ARTIST_SUBSTITUTION_STRING:Ljava/lang/String; = "unknown_artist"

.field public static final WHERE_QUESTION:Ljava/lang/String; = " = ?"


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "content://media/external/extended_audio/media"

    .line 80
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/common/DBUtils;->SEMC_MEDIA_EXTRA_EXTENDED_AUDIO_URI:Landroid/net/Uri;

    const/4 v0, 0x5

    .line 85
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "artist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "album"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "album_art"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "numsongs_by_artist"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "_id"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lcom/sonyericsson/music/common/DBUtils;->ARTIST_ALBUMS_PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    .line 94
    new-array v2, v1, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v2, v3

    const-string v8, "title"

    aput-object v8, v2, v4

    const-string v8, "artist"

    aput-object v8, v2, v5

    const-string v8, "artist_id"

    aput-object v8, v2, v6

    const-string v8, "album"

    aput-object v8, v2, v7

    const-string v8, "album_id"

    aput-object v8, v2, v0

    const-string v8, "_data"

    const/4 v9, 0x6

    aput-object v8, v2, v9

    const-string v8, "duration"

    const/4 v10, 0x7

    aput-object v8, v2, v10

    const-string v8, "year"

    const/16 v11, 0x8

    aput-object v8, v2, v11

    const-string v8, "track"

    const/16 v12, 0x9

    aput-object v8, v2, v12

    sput-object v2, Lcom/sonyericsson/music/common/DBUtils;->ALL_MEDIASTORE_TRACK_COLUMNS:[Ljava/lang/String;

    const/16 v2, 0xc

    .line 172
    new-array v2, v2, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v2, v3

    const-string v8, "replace(replace(replace(replace(name, \"Music_favorites\", \"favorites_sub\"), \"Music_most_played_tracks\", \"most_played_sub\"), \"Music_newly_added_tracks\", \"newly_added_sub\"), \"Music_recently_played_tracks\", \"recently_played_sub\")"

    aput-object v8, v2, v4

    const-string v8, "path"

    aput-object v8, v2, v5

    const-string v8, "mediastore_id"

    aput-object v8, v2, v6

    const-string v8, "date_created"

    aput-object v8, v2, v7

    const-string v8, "date_updated"

    aput-object v8, v2, v0

    const-string v8, "date_played"

    aput-object v8, v2, v9

    const-string v8, "is_deleted"

    aput-object v8, v2, v10

    const-string v8, "smart_playlist_type"

    aput-object v8, v2, v11

    const-string v8, "is_hidden"

    aput-object v8, v2, v12

    const-string v8, "play_count"

    aput-object v8, v2, v1

    const-string v8, "members_count"

    const/16 v13, 0xb

    aput-object v8, v2, v13

    sput-object v2, Lcom/sonyericsson/music/common/DBUtils;->PLAYLISTS_COLUMNS:[Ljava/lang/String;

    .line 217
    new-array v2, v12, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v2, v3

    const-string v8, "audio_id"

    aput-object v8, v2, v4

    const-string v8, "title"

    aput-object v8, v2, v5

    const-string v8, "artist"

    aput-object v8, v2, v6

    const-string v8, "artist_id"

    aput-object v8, v2, v7

    const-string v8, "album"

    aput-object v8, v2, v0

    const-string v8, "album_id"

    aput-object v8, v2, v9

    const-string v8, "album"

    aput-object v8, v2, v10

    const-string v8, "duration"

    aput-object v8, v2, v11

    sput-object v2, Lcom/sonyericsson/music/common/DBUtils;->MY_PLAYLIST_COLUMNS:[Ljava/lang/String;

    .line 229
    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "audio_id"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v5

    const-string v2, "artist"

    aput-object v2, v1, v6

    const-string v2, "artist_id"

    aput-object v2, v1, v7

    const-string v2, "album"

    aput-object v2, v1, v0

    const-string v2, "album_id"

    aput-object v2, v1, v9

    const-string v2, "album"

    aput-object v2, v1, v10

    const-string v2, "duration"

    aput-object v2, v1, v11

    const-string v2, "_data"

    aput-object v2, v1, v12

    sput-object v1, Lcom/sonyericsson/music/common/DBUtils;->MY_PLAYLIST_COLUMNS_WITH_DATA:[Ljava/lang/String;

    .line 242
    new-array v1, v11, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres$Members;->AUDIO_ID:Ljava/lang/String;

    aput-object v2, v1, v4

    const-string v8, "title"

    aput-object v8, v1, v5

    const-string v8, "artist"

    aput-object v8, v1, v6

    const-string v8, "artist_id"

    aput-object v8, v1, v7

    const-string v8, "album"

    aput-object v8, v1, v0

    const-string v8, "album_id"

    aput-object v8, v1, v9

    const-string v8, "duration"

    aput-object v8, v1, v10

    sput-object v1, Lcom/sonyericsson/music/common/DBUtils;->GENRE_COLUMNS:[Ljava/lang/String;

    .line 253
    new-array v1, v12, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v1, v3

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v5

    const-string v2, "artist"

    aput-object v2, v1, v6

    const-string v2, "artist_id"

    aput-object v2, v1, v7

    const-string v2, "album"

    aput-object v2, v1, v0

    const-string v2, "album_id"

    aput-object v2, v1, v9

    const-string v2, "duration"

    aput-object v2, v1, v10

    const-string v2, "_data"

    aput-object v2, v1, v11

    sput-object v1, Lcom/sonyericsson/music/common/DBUtils;->GENRE_COLUMNS_WITH_DATA:[Ljava/lang/String;

    .line 273
    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "track"

    aput-object v2, v1, v4

    const-string v2, "title"

    aput-object v2, v1, v5

    const-string v2, "_data"

    aput-object v2, v1, v6

    const-string v2, "artist"

    aput-object v2, v1, v7

    const-string v2, "artist_id"

    aput-object v2, v1, v0

    const-string v2, "album"

    aput-object v2, v1, v9

    const-string v2, "album_id"

    aput-object v2, v1, v10

    const-string v2, "duration"

    aput-object v2, v1, v11

    sput-object v1, Lcom/sonyericsson/music/common/DBUtils;->ALBUM_TRACK_COLUMNS:[Ljava/lang/String;

    .line 288
    new-array v1, v11, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "track_uri"

    aput-object v2, v1, v4

    const-string v2, "play_order"

    aput-object v2, v1, v5

    const-string v2, "title"

    aput-object v2, v1, v6

    const-string v2, "artist"

    aput-object v2, v1, v7

    const-string v2, "album"

    aput-object v2, v1, v0

    const-string v2, "duration"

    aput-object v2, v1, v9

    const-string v2, "available"

    aput-object v2, v1, v10

    sput-object v1, Lcom/sonyericsson/music/common/DBUtils;->PLAYQUEUE_COLUMNS:[Ljava/lang/String;

    .line 295
    new-array v1, v12, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "track_uri"

    aput-object v2, v1, v4

    const-string v2, "play_order"

    aput-object v2, v1, v5

    const-string v2, "title"

    aput-object v2, v1, v6

    const-string v2, "artist"

    aput-object v2, v1, v7

    const-string v2, "album"

    aput-object v2, v1, v0

    const-string v2, "duration"

    aput-object v2, v1, v9

    const-string v2, "available"

    aput-object v2, v1, v10

    const-string v2, "_data"

    aput-object v2, v1, v11

    sput-object v1, Lcom/sonyericsson/music/common/DBUtils;->PLAYQUEUE_COLUMNS_WITH_DATA:[Ljava/lang/String;

    .line 306
    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    sput-object v1, Lcom/sonyericsson/music/common/DBUtils;->ALL_TRACKS_COLUMNS:[Ljava/lang/String;

    .line 310
    new-array v1, v11, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v3

    const-string v2, "title"

    aput-object v2, v1, v4

    const-string v2, "artist"

    aput-object v2, v1, v5

    const-string v2, "artist_id"

    aput-object v2, v1, v6

    const-string v2, "album"

    aput-object v2, v1, v7

    const-string v2, "album_id"

    aput-object v2, v1, v0

    const-string v0, "duration"

    aput-object v0, v1, v9

    const-string v0, "_data"

    aput-object v0, v1, v10

    sput-object v1, Lcom/sonyericsson/music/common/DBUtils;->ALL_TRACKS_COLUMNS_WITH_DATA:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addYearToTracksWithAlbumId(Landroid/content/ContentResolver;JLjava/lang/String;)Z
    .locals 4

    .line 1783
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 1787
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "year"

    const-string v3, "^[0]*$"

    .line 1791
    invoke-virtual {p3, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "album_id = ?"

    const/4 v2, 0x1

    .line 1793
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    .line 1794
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v1, p3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static appendSelection(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2066
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 2067
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2068
    array-length p0, p1

    array-length v0, p3

    add-int/2addr p0, v0

    new-array p0, p0, [Ljava/lang/String;

    .line 2071
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    .line 2072
    aput-object v4, p0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 2075
    :cond_0
    array-length p1, p3

    :goto_1
    if-ge v1, p1, :cond_2

    aget-object v0, p3, v1

    add-int/lit8 v2, v3, 0x1

    .line 2076
    aput-object v0, p0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_1

    :cond_1
    move-object p0, p3

    .line 2083
    :cond_2
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p2, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static copySingleRow(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1675
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 1676
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1678
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1679
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1696
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid column type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1693
    :pswitch_0
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 1690
    :pswitch_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 1687
    :pswitch_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 1684
    :pswitch_3
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 1681
    :pswitch_4
    aput-object v0, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1700
    :cond_1
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1701
    invoke-virtual {p0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1702
    invoke-virtual {p0}, Landroid/database/MatrixCursor;->moveToFirst()Z

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static copySingleRowValues(Landroid/database/Cursor;)Landroid/content/ContentValues;
    .locals 1

    .line 1714
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1715
    invoke-static {p0, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    return-object v0
.end method

.method public static createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 2

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 929
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "android:query-arg-sql-selection"

    .line 931
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "android:query-arg-sql-selection-args"

    .line 934
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    const-string p0, "android:query-arg-sql-sort-order"

    .line 937
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-lez p3, :cond_4

    const-string p0, "android:query-arg-limit"

    .line 940
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return-object v0
.end method

.method public static getAlbumId(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 7

    .line 1760
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "album = ?"

    const/4 v1, 0x1

    .line 1764
    new-array v5, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    .line 1765
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v6, "album_id"

    aput-object v6, v3, v2

    const-string v2, "album"

    aput-object v2, v3, v1

    const-string v6, "date_modified DESC"

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1769
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "album_id"

    .line 1770
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1775
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p0

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const-wide/16 p0, -0x1

    return-wide p0

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1777
    :cond_3
    throw p0
.end method

.method public static getAlbumName(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 1097
    new-array v4, v1, [Ljava/lang/String;

    const-string v2, "album"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v5, "album_id = ?"

    .line 1103
    new-array v6, v1, [Ljava/lang/String;

    .line 1104
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    .line 1107
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1112
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "album"

    .line 1113
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1115
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 1118
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1119
    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static final getAlbumTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 9

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 687
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 688
    sget-object v5, Lcom/sonyericsson/music/common/DBUtils;->ALBUM_TRACK_COLUMNS:[Ljava/lang/String;

    .line 689
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumTracksSelection(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "track, title COLLATE NOCASE"

    move-object v3, p0

    .line 691
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAlbumTracksSelection(J)Ljava/lang/String;
    .locals 2

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_music <> 0 AND album_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAlbumYears(Landroid/content/ContentResolver;J)[Ljava/lang/String;
    .locals 8

    .line 1046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_3

    const/4 v1, 0x1

    .line 1049
    new-array v4, v1, [Ljava/lang/String;

    const-string v2, "year"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v5, "album_id = ?"

    .line 1055
    new-array v6, v1, [Ljava/lang/String;

    .line 1056
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    .line 1059
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1064
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "year"

    .line 1066
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1065
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1068
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_0

    .line 1069
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1070
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1071
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1076
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1077
    throw p1

    .line 1079
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1082
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getAlbumsCount(Landroid/content/Context;)I
    .locals 7

    .line 1859
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const-string p0, "_id"

    const/4 v6, 0x0

    aput-object p0, v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1862
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 1865
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1867
    :cond_0
    throw v0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 1865
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v6
.end method

.method public static getAllPlaylistsCount(Landroid/content/Context;)I
    .locals 7

    .line 1871
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;)Landroid/net/Uri;

    move-result-object v2

    .line 1872
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x1

    new-array v3, p0, [Ljava/lang/String;

    const-string p0, "_id"

    const/4 v0, 0x0

    aput-object p0, v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1873
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1875
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 1878
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1880
    :cond_0
    throw v0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 1878
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0
.end method

.method public static getAllTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 866
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/music/common/DBUtils;->getAllTracksFromMediaStore(Landroid/content/ContentResolver;[Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static getAllTracksFromMediaStore(Landroid/content/ContentResolver;[Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 6

    if-eqz p1, :cond_3

    .line 885
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 887
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "title COLLATE NOCASE"

    .line 891
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    const-string v0, "is_music <> 0"

    const/4 v2, 0x0

    .line 892
    invoke-static {v0, v2, p3, p2}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-le p2, v0, :cond_2

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " LIMIT "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    goto :goto_0

    :cond_2
    move-object v5, p3

    :goto_0
    const-string v3, "is_music <> 0"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 898
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 882
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "projection not allowed to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getAllTracksProjection(Z)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 407
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->ALL_TRACKS_COLUMNS_WITH_DATA:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->ALL_TRACKS_COLUMNS:[Ljava/lang/String;

    .line 408
    :goto_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getArtDataFile(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Ljava/io/File;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1802
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x1

    .line 1806
    :try_start_0
    new-array v3, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p2, v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_1

    .line 1807
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1808
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 1812
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1815
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p1

    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_4

    .line 1812
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1814
    :cond_4
    throw p1
.end method

.method public static final getArtistAlbumsCursor(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    if-eqz p1, :cond_0

    .line 660
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getArtistId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const-string v5, "album != \'\'"

    const-string v7, "year DESC, album COLLATE NOCASE"

    const-string p1, "external"

    .line 669
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/music/common/DBUtils;->ARTIST_ALBUMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p0

    .line 668
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getArtistAllTracksCursor(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 621
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils;->ALL_MEDIASTORE_TRACK_COLUMNS:[Ljava/lang/String;

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAllTracksCursor(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final getArtistAllTracksCursor(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 640
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAllTracksSelection(J)Ljava/lang/String;

    move-result-object v6

    .line 641
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "title COLLATE NOCASE"

    move-object v3, p0

    move-object v5, p3

    .line 643
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getArtistAllTracksCursor(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 592
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getArtistId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x2

    .line 595
    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v2, "_data"

    aput-object v2, v4, p1

    const/4 p1, 0x1

    const-string v2, "_id"

    aput-object v2, v4, p1

    .line 599
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAllTracksSelection(J)Ljava/lang/String;

    move-result-object v5

    .line 601
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "title COLLATE NOCASE"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getArtistAllTracksSelection(J)Ljava/lang/String;
    .locals 2

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is_music <> 0 AND artist_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getArtistAndAlbumByAlbumId(Landroid/content/ContentResolver;J)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "J)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v3, "album_id = ?"

    const/4 v6, 0x1

    .line 1482
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const/4 p1, 0x2

    .line 1483
    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, p1, p2

    const-string v0, "album"

    aput-object v0, p1, v6

    const/4 v7, 0x0

    .line 1487
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1488
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 1491
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1492
    new-instance v7, Landroid/util/Pair;

    aget-object p2, p1, p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    aget-object p1, p1, v6

    .line 1493
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v7, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 1498
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    :catchall_1
    move-exception p1

    move-object p0, v7

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1500
    :cond_2
    throw p1
.end method

.method public static final getArtistId(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 8

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    const-string v5, "artist = ?"

    const/4 v2, 0x1

    .line 1434
    new-array v6, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    .line 1436
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v2, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v4, v3

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1440
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_id"

    .line 1441
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1442
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1445
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1446
    throw p1

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static final getArtistName(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 6

    const-string v3, "_id = ?"

    const/4 v0, 0x1

    .line 1457
    new-array v4, v0, [Ljava/lang/String;

    .line 1458
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    .line 1461
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v0, [Ljava/lang/String;

    const-string p1, "artist"

    aput-object p1, v2, p2

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 1467
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "artist"

    .line 1468
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1469
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1472
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1473
    throw p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public static final getArtistsCount(Landroid/content/Context;)I
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    .line 702
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 703
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const-string p0, "_id"

    aput-object p0, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 705
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    :cond_0
    if-eqz v1, :cond_2

    .line 708
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 710
    :cond_1
    throw p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static getCursorWithId(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 9

    if-eqz p1, :cond_5

    .line 2103
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2105
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isCursorWithId(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2112
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, ""

    .line 2116
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/16 v3, 0x3e7

    if-lt v1, v3, :cond_1

    const/16 v1, 0x3e6

    .line 2120
    :cond_1
    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    .line 2124
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OR "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2126
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "album"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " =? AND "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "artist"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " =? "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v3, "album"

    .line 2128
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "artist"

    .line 2129
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2130
    aput-object v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    .line 2132
    aput-object v4, v7, v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const/16 v4, 0x3e5

    if-le v0, v4, :cond_3

    goto :goto_1

    .line 2138
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2139
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    if-eqz p0, :cond_5

    const/4 p1, 0x5

    .line 2142
    new-array v5, p1, [Ljava/lang/String;

    const-string p1, "_id"

    aput-object p1, v5, v1

    const-string p1, "album"

    aput-object p1, v5, v3

    const-string p1, "artist"

    aput-object p1, v5, v2

    const/4 p1, 0x3

    const-string v0, "artist_id"

    aput-object v0, v5, p1

    const/4 p1, 0x4

    const-string v0, "minyear"

    aput-object v0, v5, p1

    .line 2148
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2149
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v8, "minyear DESC, album COLLATE NOCASE"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object v3, v6

    goto/16 :goto_0

    :cond_5
    const/4 p0, 0x0

    :goto_2
    return-object p0
.end method

.method public static getDataPathForMediaStoreUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 1365
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1370
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "SemcMusicPlayer"

    .line 1374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error extracting data path from track : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 1379
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_data"

    .line 1380
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1381
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    .line 1384
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1385
    throw p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getDataPathForTrackId(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 1

    .line 1320
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1321
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 1320
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1322
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getDataPathForUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDataPathForUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 1336
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1339
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1342
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_data"

    .line 1343
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1344
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 1347
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1348
    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getFavouritesProperties(Landroid/content/ContentResolver;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;
    .locals 7

    .line 507
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistId(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 513
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 514
    sget-object v2, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->PLAYED_AND_FAVOURITE_TRACKS_COLUMNS:[Ljava/lang/String;

    const-string v5, "play_order"

    .line 516
    sget-object p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v6

    .line 518
    new-instance p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    return-object p0
.end method

.method public static final getGenreProjection(Z)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 397
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->GENRE_COLUMNS_WITH_DATA:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->GENRE_COLUMNS:[Ljava/lang/String;

    .line 398
    :goto_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getGenreTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    if-eqz p2, :cond_0

    const-string v3, "is_music <> 0"

    const/4 v4, 0x0

    const-string v5, "title_key"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    .line 785
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getGenresCount(Landroid/content/Context;)I
    .locals 7

    .line 719
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const-string p0, "_id"

    const/4 v6, 0x0

    aput-object p0, v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 726
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 728
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 729
    throw v0

    :cond_0
    :goto_0
    return v6
.end method

.method public static getLocalMediaStorePlaylists(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x5

    .line 1990
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v1, 0x0

    aput-object v0, v3, v1

    const-string v0, "name"

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const-string v0, "_data"

    const/4 v1, 0x2

    aput-object v0, v3, v1

    const-string v0, "date_added"

    const/4 v1, 0x3

    aput-object v0, v3, v1

    const-string v0, "date_modified"

    const/4 v1, 0x4

    aput-object v0, v3, v1

    .line 1994
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v6, "name COLLATE NOCASE ASC"

    .line 1996
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1997
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getLocalPlaylists(Landroid/content/Context;Lcom/sonyericsson/music/common/DBUtils$PlaylistsFilter;Lcom/sonyericsson/music/common/DBUtils$PlaylistSortOrder;)Landroid/database/Cursor;
    .locals 7

    .line 1938
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1942
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistSortOrder:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1951
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->getLocalizedPlaylistsProjection(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    .line 1952
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->getLocalizedPlaylistsAlphabeticSortOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v3, p2

    move-object v6, v0

    goto :goto_0

    .line 1944
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->getLocalizedPlaylistsProjection(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    const-string v0, "MAX (date_created, date_updated, date_played) DESC, name ASC"

    move-object v3, p2

    move-object v6, v0

    .line 1956
    :goto_0
    sget-object p2, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistsFilter:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1976
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    .line 1972
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    .line 1968
    :pswitch_1
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Z)Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    .line 1963
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    .line 1964
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1963
    invoke-static {p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;Ljava/lang/Boolean;)Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    .line 1958
    :pswitch_3
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_EDITABLE_ONLY:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    .line 1959
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1958
    invoke-static {p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;Ljava/lang/Boolean;)Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    .line 1980
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_2

    :cond_1
    const/4 p0, 0x0

    :goto_2
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLocalizedPlaylistsAlphabeticSortOrder(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const v0, 0x7f1001cb

    .line 2005
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1001ca

    .line 2006
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1001cf

    .line 2007
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1001de

    .line 2009
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "replace(replace(replace(replace(name, \"Music_favorites\", \"favorites_sub\"), \"Music_most_played_tracks\", \"most_played_sub\"), \"Music_newly_added_tracks\", \"newly_added_sub\"), \"Music_recently_played_tracks\", \"recently_played_sub\") COLLATE NOCASE"

    const-string v4, "favorites_sub"

    .line 2014
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "most_played_sub"

    .line 2015
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "newly_added_sub"

    .line 2016
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recently_played_sub"

    .line 2017
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalizedPlaylistsProjection(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8

    const v0, 0x7f1001cb

    .line 2021
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1001ca

    .line 2022
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1001cf

    .line 2023
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1001de

    .line 2025
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "favorites_sub"

    const-string v4, "most_played_sub"

    const-string v5, "newly_added_sub"

    const-string v6, "recently_played_sub"

    .line 2032
    sget-object v7, Lcom/sonyericsson/music/common/DBUtils;->PLAYLISTS_COLUMNS:[Ljava/lang/String;

    .line 2041
    invoke-static {p0, v6, v7}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2038
    invoke-static {v2, v5, p0}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2035
    invoke-static {v1, v4, p0}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2032
    invoke-static {v0, v3, p0}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getMyPlaylistProjection(Z)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 392
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->MY_PLAYLIST_COLUMNS_WITH_DATA:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->MY_PLAYLIST_COLUMNS:[Ljava/lang/String;

    .line 393
    :goto_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getMyPlaylistTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 7

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    .line 747
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "play_order"

    move-object v1, p0

    move-object v3, p1

    .line 746
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMyPlaylistTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6

    if-eqz p2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "play_order"

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    .line 765
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getNewlyAddedDescProperty([Ljava/lang/String;I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;
    .locals 8

    if-nez p0, :cond_0

    .line 479
    sget-object p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->NEWLY_ADDED_TRACKS_COLUMNS:[Ljava/lang/String;

    move-object v2, p0

    goto :goto_0

    :cond_0
    move-object v2, p0

    :goto_0
    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    const/16 p1, 0x32

    const/16 v6, 0x32

    goto :goto_1

    :cond_1
    move v6, p1

    :goto_1
    if-gez v6, :cond_2

    const/4 p0, 0x0

    return-object p0

    .line 490
    :cond_2
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_music <> 0"

    const-string v5, "date_added DESC "

    .line 493
    sget-object p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v7

    .line 495
    new-instance p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V

    return-object p0
.end method

.method public static final getPlayQueueProjection(Z)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 402
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->PLAYQUEUE_COLUMNS_WITH_DATA:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->PLAYQUEUE_COLUMNS:[Ljava/lang/String;

    .line 403
    :goto_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;
    .locals 8

    if-nez p1, :cond_0

    .line 428
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->PLAYED_AND_FAVOURITE_TRACKS_COLUMNS:[Ljava/lang/String;

    move-object v2, p1

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    const/16 p2, 0x32

    const/16 v6, 0x32

    goto :goto_1

    :cond_1
    move v6, p2

    :goto_1
    const/4 p2, 0x0

    if-gez v6, :cond_2

    return-object p2

    .line 442
    :cond_2
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    move-object v7, p2

    const/4 p0, -0x1

    goto :goto_2

    .line 449
    :pswitch_0
    sget-object p3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, p3}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistId(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result p0

    .line 450
    sget-object p3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object p3

    move-object v7, p3

    goto :goto_2

    .line 444
    :pswitch_1
    sget-object p3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, p3}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistId(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result p0

    .line 445
    sget-object p3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object p3

    move-object v7, p3

    :goto_2
    if-eq p0, p1, :cond_3

    .line 455
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order DESC "

    .line 458
    new-instance p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V

    return-object p0

    :cond_3
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPlaylistId(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 1227
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 p1, 0x2

    new-array v3, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "_id"

    aput-object v1, v3, p1

    const-string p1, "is_available"

    const/4 v7, 0x1

    aput-object p1, v3, v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 1231
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    const-string p1, "is_available"

    .line 1234
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v7, :cond_1

    const-string p1, "_id"

    .line 1236
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    move v0, p1

    .line 1238
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 1241
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1242
    throw p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static getPlaylistMediaStoreId(Landroid/content/ContentResolver;J)J
    .locals 7

    long-to-int p2, p1

    .line 1197
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 p1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    .line 1200
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1201
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "mediastore_id"

    .line 1203
    invoke-interface {v6, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 1202
    invoke-interface {v6, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide p1, p0

    :cond_0
    if-eqz v6, :cond_1

    .line 1209
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1206
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-wide p1

    :goto_2
    if-eqz v6, :cond_2

    .line 1209
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1211
    :cond_2
    throw p0

    return-void
.end method

.method public static getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    .line 1260
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v3

    const/4 p1, 0x1

    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v1, "name"

    aput-object v1, v4, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1264
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "name"

    .line 1265
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1266
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 1269
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1270
    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getPlaylistNumberOfTracks(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1899
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1900
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v7, 0x0

    .line 1902
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    .line 1903
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;)Landroid/net/Uri;

    move-result-object v2

    const/4 v8, 0x1

    .line 1904
    new-array v3, v8, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v9, 0x0

    aput-object v1, v3, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_1

    :try_start_1
    const-string v1, "_id"

    .line 1906
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const/4 v1, -0x1

    if-eq v11, v1, :cond_1

    .line 1908
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1910
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1909
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 1911
    new-array v3, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 1912
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1915
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1916
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    .line 1923
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v7, :cond_3

    .line 1926
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v10, v7

    :goto_1
    if-eqz v10, :cond_4

    .line 1923
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v7, :cond_5

    .line 1926
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1928
    :cond_5
    throw p0

    return-void
.end method

.method public static getPlaylistTracksCount(Landroid/content/ContentResolver;I)I
    .locals 7

    .line 1820
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 p1, 0x0

    if-eqz v1, :cond_2

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 1824
    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "audio_id"

    aput-object v0, v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1826
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, p0

    :cond_0
    if-eqz v6, :cond_2

    .line 1829
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1831
    :cond_1
    throw p0

    :cond_2
    :goto_0
    return p1
.end method

.method public static getPlaylistType(Landroid/database/Cursor;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "smart_playlist_type"

    .line 2050
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2055
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p0

    goto :goto_0

    .line 2052
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Missing column in cursor"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getPlayqueueCursor(Landroid/content/Context;Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    .line 1592
    invoke-static {p0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getSmartPlaylistId(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I
    .locals 1

    .line 385
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaBaseID()I

    move-result p0

    return p0

    .line 388
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaProviderName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistId(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getSmartPlaylistTracksCursor(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 535
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->hasLimit()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 536
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhere()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getLimit()I

    move-result v4

    .line 536
    invoke-static {v1, v2, v3, v4}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    .line 538
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getTracksUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getProjection()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 541
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getTracksUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getProjection()[Ljava/lang/String;

    move-result-object v3

    .line 542
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhereArgs()[Ljava/lang/String;

    move-result-object v5

    .line 543
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 541
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getTrackGenre(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    const-string v0, "external"

    .line 803
    invoke-static {v0, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 805
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x1

    .line 806
    new-array v3, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string p1, "name"

    aput-object p1, v3, p0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 809
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "name"

    .line 810
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 816
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 818
    :cond_1
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    .line 816
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getTrackIdBasedOnPath(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 12

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    const-string v1, "content://media/"

    .line 994
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 995
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    move-object v7, p1

    move-object v9, v4

    move-object v10, v9

    goto :goto_0

    .line 1002
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1007
    :catch_0
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_data = ?"

    .line 1011
    new-array v5, v3, [Ljava/lang/String;

    aput-object p1, v5, v2

    move-object v7, v1

    move-object v9, v4

    move-object v10, v5

    .line 1016
    :goto_0
    new-array v8, v3, [Ljava/lang/String;

    const-string p1, "_id"

    aput-object p1, v8, v2

    const/4 v11, 0x0

    move-object v6, p0

    .line 1020
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1023
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "_id"

    .line 1024
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1026
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, p1

    .line 1029
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1030
    throw p1

    :cond_2
    :goto_1
    return v0
.end method

.method public static getTrackInfo(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 913
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 914
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 913
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 916
    sget-object v3, Lcom/sonyericsson/music/common/DBUtils;->ALL_MEDIASTORE_TRACK_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getTrackInfo(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 1

    const/4 v0, 0x0

    .line 975
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getTrackInfo(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackInfo(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 959
    sget-object p2, Lcom/sonyericsson/music/common/DBUtils;->ALL_MEDIASTORE_TRACK_COLUMNS:[Ljava/lang/String;

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 961
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getTrackName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    int-to-long v1, p1

    .line 1404
    invoke-static {p0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getTrackInfo(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1408
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "title"

    .line 1410
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1409
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 1413
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1414
    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getTrackUriFromPlayqueue(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 6

    const-string v0, "track_uri"

    .line 832
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 833
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 834
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 835
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 836
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 841
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "_id"

    .line 842
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 843
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 848
    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getTracksCounts(Landroid/content/Context;)Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1838
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, -0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4}, Lcom/sonyericsson/music/common/DBUtils;->getAllTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1845
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 1847
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/music/common/HDAudioUtils;->getHDContent(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)Ljava/util/HashSet;

    move-result-object p0

    .line 1850
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1853
    throw p0

    :cond_0
    const/4 p0, 0x0

    .line 1855
    :goto_0
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getUserCreatedPlaylistsCount(Landroid/content/Context;)I
    .locals 7

    .line 1884
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_EDITABLE_ONLY:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    .line 1885
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;)Landroid/net/Uri;

    move-result-object v1

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const-string p0, "_id"

    const/4 v6, 0x0

    aput-object p0, v2, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1884
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1888
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 1891
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1893
    :cond_0
    throw v0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 1891
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v6
.end method

.method public static isContainerUri(Landroid/net/Uri;)Z
    .locals 1

    .line 1611
    invoke-static {p0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isCursorWithId(Landroid/database/Cursor;)Z
    .locals 1

    .line 2160
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2161
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 2162
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "_id"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMediaExtraStoreUri(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "com.sonyericsson.mediaextra"

    .line 1516
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMediaScannerScanning(Landroid/content/ContentResolver;)Z
    .locals 8

    .line 1134
    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v6, 0x1

    new-array v2, v6, [Ljava/lang/String;

    const-string v0, "volume"

    const/4 v7, 0x0

    aput-object v0, v2, v7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1139
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external"

    .line 1140
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    .line 1143
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1144
    throw v0

    :cond_1
    :goto_0
    return v7
.end method

.method private static isMediaStoreExternalUri(Landroid/net/Uri;)Z
    .locals 2

    .line 1544
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1545
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 1546
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1547
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1552
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1553
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/common/DBUtils;->SEMC_MEDIA_EXTRA_EXTENDED_AUDIO_URI:Landroid/net/Uri;

    .line 1554
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1555
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isMediaStoreUri(Landroid/net/Uri;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1512
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isMusicInfoStoreUri(Landroid/net/Uri;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1520
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sonyericsson.music.musicinfo"

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPlayQueueModeUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1533
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreExternalUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMusicInfoStoreUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1534
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/DBUtils;->isSmartPlaylistContainerUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isPlaylistUserCreated(JLandroid/content/ContentResolver;)Z
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p0, v1

    if-lez v3, :cond_2

    const/4 v1, 0x0

    long-to-int p1, p0

    .line 1644
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v3

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const-string p0, "path"

    aput-object p0, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1646
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "path"

    .line 1647
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1648
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    :cond_0
    if-eqz v1, :cond_2

    .line 1652
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1654
    :cond_1
    throw p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static isPlaylistUserCreated(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 1621
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1624
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_1

    .line 1625
    sget-object v1, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 1628
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v1, :cond_2

    .line 1629
    sget-object v1, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH_FROM_R:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ".m3u"

    .line 1630
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method public static isSameStorageLocation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 1584
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1585
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1587
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1588
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1587
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    :goto_1
    return v0
.end method

.method public static isSmartPlaylistContainerUri(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-string p0, "com.sonymobile.music.smartplaylist"

    .line 1598
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    return v0
.end method

.method public static isUriCloudFileType(Landroid/net/Uri;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1564
    invoke-static {p0}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isUriCloudFileType(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 1576
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isUriCloudFileType(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static moveItem(JIILandroid/content/ContentResolver;)Z
    .locals 0

    long-to-int p1, p0

    .line 1661
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getMoveContentUri(III)Landroid/net/Uri;

    move-result-object p0

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/4 p2, 0x0

    invoke-virtual {p4, p0, p1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static parseMediaStoreAlbumId(Landroid/net/Uri;)J
    .locals 2

    .line 1166
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static parseMediaStoreArtistId(Landroid/net/Uri;)J
    .locals 2

    .line 1152
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1154
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static parseMediaStorePlaylistId(Landroid/net/Uri;)J
    .locals 2

    .line 1180
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1182
    :try_start_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static parseMembersContainerId(Ljava/lang/String;)J
    .locals 2

    if-eqz p0, :cond_1

    .line 1733
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1734
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMusicInfoStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1735
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 1736
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 1739
    :try_start_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public static setPlaylistName(Landroid/content/ContentResolver;ILjava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    if-eqz p2, :cond_1

    .line 1291
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    .line 1292
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_0

    const-string v2, "path"

    .line 1297
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH_FROM_R:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v2, "path"

    .line 1299
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p2, "date_updated"

    .line 1303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1305
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    .line 1304
    invoke-virtual {p0, p1, v1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
