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

    .line 1784
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 1788
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "year"

    const-string v3, "^[0]*$"

    .line 1792
    invoke-virtual {p3, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "album_id = ?"

    const/4 v2, 0x1

    .line 1794
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    .line 1795
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

    .line 2067
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    .line 2068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " AND "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2069
    array-length p0, p1

    array-length v0, p3

    add-int/2addr p0, v0

    new-array p0, p0, [Ljava/lang/String;

    .line 2072
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p1, v2

    add-int/lit8 v5, v3, 0x1

    .line 2073
    aput-object v4, p0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v5

    goto :goto_0

    .line 2076
    :cond_0
    array-length p1, p3

    :goto_1
    if-ge v1, p1, :cond_2

    aget-object v0, p3, v1

    add-int/lit8 v2, v3, 0x1

    .line 2077
    aput-object v0, p0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_1

    :cond_1
    move-object p0, p3

    .line 2084
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

    .line 1676
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    .line 1677
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1679
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 1680
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1697
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Invalid column type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1694
    :pswitch_0
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 1691
    :pswitch_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 1688
    :pswitch_2
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 1685
    :pswitch_3
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    goto :goto_1

    .line 1682
    :pswitch_4
    aput-object v0, v2, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1701
    :cond_1
    new-instance p0, Landroid/database/MatrixCursor;

    invoke-direct {p0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1702
    invoke-virtual {p0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1703
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

    .line 1715
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1716
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

    .line 925
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "android:query-arg-sql-selection"

    .line 927
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p1, :cond_2

    const-string p0, "android:query-arg-sql-selection-args"

    .line 930
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    const-string p0, "android:query-arg-sql-sort-order"

    .line 933
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-lez p3, :cond_4

    const-string p0, "android:query-arg-limit"

    .line 936
    invoke-virtual {v0, p0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    return-object v0
.end method

.method public static getAlbumId(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 7

    .line 1761
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfMainDebug()V

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "album = ?"

    const/4 v1, 0x1

    .line 1765
    new-array v5, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v5, v2

    .line 1766
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

    .line 1770
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "album_id"

    .line 1771
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1776
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

    .line 1778
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

    .line 1093
    new-array v4, v1, [Ljava/lang/String;

    const-string v2, "album"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v5, "album_id = ?"

    .line 1099
    new-array v6, v1, [Ljava/lang/String;

    .line 1100
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    .line 1103
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1108
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "album"

    .line 1109
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1111
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 1114
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1115
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

    .line 684
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 685
    sget-object v5, Lcom/sonyericsson/music/common/DBUtils;->ALBUM_TRACK_COLUMNS:[Ljava/lang/String;

    .line 686
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/DBUtils;->getAlbumTracksSelection(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const-string v8, "track"

    move-object v3, p0

    .line 688
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getAlbumTracksSelection(J)Ljava/lang/String;
    .locals 2

    .line 575
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

    .line 1042
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-lez v3, :cond_3

    const/4 v1, 0x1

    .line 1045
    new-array v4, v1, [Ljava/lang/String;

    const-string v2, "year"

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const-string v5, "album_id = ?"

    .line 1051
    new-array v6, v1, [Ljava/lang/String;

    .line 1052
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v3

    .line 1055
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1060
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "year"

    .line 1062
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1061
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1064
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_0

    .line 1065
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1066
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1067
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1072
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1073
    throw p1

    .line 1075
    :cond_2
    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1078
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

    .line 1860
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

    .line 1863
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 1866
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1868
    :cond_0
    throw v0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 1866
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v6
.end method

.method public static getAllPlaylistsCount(Landroid/content/Context;)I
    .locals 7

    .line 1872
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;)Landroid/net/Uri;

    move-result-object v2

    .line 1873
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

    .line 1874
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1876
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 1879
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1881
    :cond_0
    throw v0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 1879
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v0
.end method

.method public static getAllTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 862
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/music/common/DBUtils;->getAllTracksFromMediaStore(Landroid/content/ContentResolver;[Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method private static getAllTracksFromMediaStore(Landroid/content/ContentResolver;[Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 6

    if-eqz p1, :cond_3

    .line 881
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 883
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "title COLLATE NOCASE"

    .line 887
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    const-string v0, "is_music <> 0"

    const/4 v2, 0x0

    .line 888
    invoke-static {v0, v2, p3, p2}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p0, v1, p1, p2, v2}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, -0x1

    if-le p2, v0, :cond_2

    .line 892
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

    .line 894
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 878
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "projection not allowed to be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final getAllTracksProjection(Z)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 404
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->ALL_TRACKS_COLUMNS_WITH_DATA:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->ALL_TRACKS_COLUMNS:[Ljava/lang/String;

    .line 405
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

    .line 1803
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x1

    .line 1807
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

    .line 1808
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1809
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

    .line 1813
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1816
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

    .line 1813
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1815
    :cond_4
    throw p1
.end method

.method public static final getArtistAlbumsCursor(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    if-eqz p1, :cond_0

    .line 657
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getArtistId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const-string v5, "album != \'\'"

    const-string v7, "year DESC, album COLLATE NOCASE"

    const-string p1, "external"

    .line 666
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Artists$Albums;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/music/common/DBUtils;->ARTIST_ALBUMS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v2, p0

    .line 665
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

    .line 618
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

    .line 637
    invoke-static {p1, p2}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAllTracksSelection(J)Ljava/lang/String;

    move-result-object v6

    .line 638
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "title COLLATE NOCASE"

    move-object v3, p0

    move-object v5, p3

    .line 640
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getArtistAllTracksCursor(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .line 589
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getArtistId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x2

    .line 592
    new-array v4, p1, [Ljava/lang/String;

    const/4 p1, 0x0

    const-string v2, "_data"

    aput-object v2, v4, p1

    const/4 p1, 0x1

    const-string v2, "_id"

    aput-object v2, v4, p1

    .line 596
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/DBUtils;->getArtistAllTracksSelection(J)Ljava/lang/String;

    move-result-object v5

    .line 598
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

    .line 561
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

    .line 1483
    new-array v4, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const/4 p1, 0x2

    .line 1484
    new-array p1, p1, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, p1, p2

    const-string v0, "album"

    aput-object v0, p1, v6

    const/4 v7, 0x0

    .line 1488
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 1489
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 1492
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    new-instance v7, Landroid/util/Pair;

    aget-object p2, p1, p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    aget-object p1, p1, v6

    .line 1494
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

    .line 1499
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7

    :catchall_1
    move-exception p1

    move-object p0, v7

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1501
    :cond_2
    throw p1
.end method

.method public static final getArtistId(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 8

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_1

    const-string v5, "artist = ?"

    const/4 v2, 0x1

    .line 1435
    new-array v6, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3

    .line 1437
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

    .line 1441
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_id"

    .line 1442
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1443
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1446
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1447
    throw p1

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public static final getArtistName(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 6

    const-string v3, "_id = ?"

    const/4 v0, 0x1

    .line 1458
    new-array v4, v0, [Ljava/lang/String;

    .line 1459
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    .line 1462
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

    .line 1468
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "artist"

    .line 1469
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1470
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1473
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1474
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

    .line 698
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 699
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

    .line 701
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    :cond_0
    if-eqz v1, :cond_2

    .line 704
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 706
    :cond_1
    throw p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static getCursorWithId(Landroid/content/Context;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 9

    if-eqz p1, :cond_5

    .line 2104
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 2106
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isCursorWithId(Landroid/database/Cursor;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 2113
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, ""

    .line 2117
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    const/16 v3, 0x3e7

    if-lt v1, v3, :cond_1

    const/16 v1, 0x3e6

    .line 2121
    :cond_1
    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-lez v0, :cond_2

    .line 2125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OR "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2127
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

    .line 2129
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "artist"

    .line 2130
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2131
    aput-object v3, v7, v0

    add-int/lit8 v0, v0, 0x1

    .line 2133
    aput-object v4, v7, v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const/16 v4, 0x3e5

    if-le v0, v4, :cond_3

    goto :goto_1

    .line 2139
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 2140
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    if-eqz p0, :cond_5

    const/4 p1, 0x5

    .line 2143
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

    .line 2149
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2150
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

    .line 1366
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1371
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "SemcMusicPlayer"

    .line 1375
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

    .line 1380
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_data"

    .line 1381
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1382
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, p1

    .line 1385
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1386
    throw p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getDataPathForTrackId(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 1

    .line 1321
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1322
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 1321
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1323
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/DBUtils;->getDataPathForUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDataPathForUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 1337
    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 1340
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1343
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_data"

    .line 1344
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1345
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 1348
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1349
    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getFavouritesProperties(Landroid/content/ContentResolver;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;
    .locals 7

    .line 504
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistId(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 510
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 511
    sget-object v2, Lcom/sonyericsson/music/common/SmartPlaylistUtils;->PLAYED_AND_FAVOURITE_TRACKS_COLUMNS:[Ljava/lang/String;

    const-string v5, "play_order"

    .line 513
    sget-object p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v6

    .line 515
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

    .line 394
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->GENRE_COLUMNS_WITH_DATA:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->GENRE_COLUMNS:[Ljava/lang/String;

    .line 395
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

    .line 781
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getGenresCount(Landroid/content/Context;)I
    .locals 7

    .line 715
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

    .line 722
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 725
    throw v0

    :cond_0
    :goto_0
    return v6
.end method

.method public static getLocalMediaStorePlaylists(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 7

    const/4 v0, 0x5

    .line 1991
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

    .line 1995
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v6, "name COLLATE NOCASE ASC"

    .line 1997
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1998
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

    .line 1939
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1943
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistSortOrder:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1952
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->getLocalizedPlaylistsProjection(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    .line 1953
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->getLocalizedPlaylistsAlphabeticSortOrder(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    move-object v3, p2

    move-object v6, v0

    goto :goto_0

    .line 1945
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->getLocalizedPlaylistsProjection(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    const-string v0, "MAX (date_created, date_updated, date_played) DESC, name ASC"

    move-object v3, p2

    move-object v6, v0

    .line 1957
    :goto_0
    sget-object p2, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$DBUtils$PlaylistsFilter:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1977
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    .line 1973
    :pswitch_0
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    .line 1969
    :pswitch_1
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Z)Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    .line 1964
    :pswitch_2
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    .line 1965
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1964
    invoke-static {p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;Ljava/lang/Boolean;)Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    goto :goto_1

    .line 1959
    :pswitch_3
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_EDITABLE_ONLY:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    .line 1960
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 1959
    invoke-static {p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;Ljava/lang/Boolean;)Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    .line 1981
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

    .line 2006
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1001ca

    .line 2007
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1001cf

    .line 2008
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1001de

    .line 2010
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "replace(replace(replace(replace(name, \"Music_favorites\", \"favorites_sub\"), \"Music_most_played_tracks\", \"most_played_sub\"), \"Music_newly_added_tracks\", \"newly_added_sub\"), \"Music_recently_played_tracks\", \"recently_played_sub\") COLLATE NOCASE"

    const-string v4, "favorites_sub"

    .line 2015
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "most_played_sub"

    .line 2016
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "newly_added_sub"

    .line 2017
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "recently_played_sub"

    .line 2018
    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLocalizedPlaylistsProjection(Landroid/content/Context;)[Ljava/lang/String;
    .locals 8

    const v0, 0x7f1001cb

    .line 2022
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1001ca

    .line 2023
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1001cf

    .line 2024
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1001de

    .line 2026
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v3, "favorites_sub"

    const-string v4, "most_played_sub"

    const-string v5, "newly_added_sub"

    const-string v6, "recently_played_sub"

    .line 2033
    sget-object v7, Lcom/sonyericsson/music/common/DBUtils;->PLAYLISTS_COLUMNS:[Ljava/lang/String;

    .line 2042
    invoke-static {p0, v6, v7}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2039
    invoke-static {v2, v5, p0}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2036
    invoke-static {v1, v4, p0}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2033
    invoke-static {v0, v3, p0}, Lcom/sonyericsson/music/common/StringUtils;->getLocalizedStringArray(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getMyPlaylistProjection(Z)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 389
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->MY_PLAYLIST_COLUMNS_WITH_DATA:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->MY_PLAYLIST_COLUMNS:[Ljava/lang/String;

    .line 390
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

    .line 743
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "play_order"

    move-object v1, p0

    move-object v3, p1

    .line 742
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

    .line 761
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

    .line 476
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

    .line 487
    :cond_2
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "is_music <> 0"

    const-string v5, "date_added DESC "

    .line 490
    sget-object p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v7

    .line 492
    new-instance p0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;-><init>(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILandroid/net/Uri;)V

    return-object p0
.end method

.method public static final getPlayQueueProjection(Z)[Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    .line 399
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->PLAYQUEUE_COLUMNS_WITH_DATA:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sonyericsson/music/common/DBUtils;->PLAYQUEUE_COLUMNS:[Ljava/lang/String;

    .line 400
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

    .line 425
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

    .line 439
    :cond_2
    sget-object v0, Lcom/sonyericsson/music/common/DBUtils$1;->$SwitchMap$com$sonyericsson$music$common$SmartPlaylistUtils$SmartPlaylistType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    packed-switch p3, :pswitch_data_0

    move-object v7, p2

    const/4 p0, -0x1

    goto :goto_2

    .line 446
    :pswitch_0
    sget-object p3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, p3}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistId(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result p0

    .line 447
    sget-object p3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object p3

    move-object v7, p3

    goto :goto_2

    .line 441
    :pswitch_1
    sget-object p3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, p3}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistId(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result p0

    .line 442
    sget-object p3, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {p3}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object p3

    move-object v7, p3

    :goto_2
    if-eq p0, p1, :cond_3

    .line 452
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    const-string v5, "play_order DESC "

    .line 455
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

    .line 1228
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

    .line 1232
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    const-string p1, "is_available"

    .line 1235
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v7, :cond_1

    const-string p1, "_id"

    .line 1237
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    move v0, p1

    .line 1239
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 1242
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1243
    throw p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static getPlaylistMediaStoreId(Landroid/content/ContentResolver;J)J
    .locals 7

    .line 1193
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1194
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 1196
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v1

    .line 1197
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 1195
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 1198
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 p1, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    .line 1201
    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1202
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "mediastore_id"

    .line 1204
    invoke-interface {v6, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 1203
    invoke-interface {v6, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide p1, p0

    :cond_0
    if-eqz v6, :cond_1

    .line 1210
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 1207
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

    .line 1210
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1212
    :cond_2
    throw p0

    return-void
.end method

.method public static getPlaylistName(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-le p1, v1, :cond_1

    .line 1261
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

    .line 1265
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "name"

    .line 1266
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1267
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 1270
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1271
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

    .line 1900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1901
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v7, 0x0

    .line 1903
    :try_start_0
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    .line 1904
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;)Landroid/net/Uri;

    move-result-object v2

    const/4 v8, 0x1

    .line 1905
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

    .line 1907
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const/4 v1, -0x1

    if-eq v11, v1, :cond_1

    .line 1909
    :cond_0
    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1911
    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1910
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    .line 1912
    new-array v3, v8, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 1913
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 1916
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1917
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    .line 1924
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v7, :cond_3

    .line 1927
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p0

    move-object v10, v7

    :goto_1
    if-eqz v10, :cond_4

    .line 1924
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v7, :cond_5

    .line 1927
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1929
    :cond_5
    throw p0

    return-void
.end method

.method public static getPlaylistTracksCount(Landroid/content/ContentResolver;I)I
    .locals 7

    .line 1821
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object v1

    const/4 p1, 0x0

    if-eqz v1, :cond_2

    const/4 v6, 0x0

    const/4 v0, 0x1

    .line 1825
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

    .line 1827
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p1, p0

    :cond_0
    if-eqz v6, :cond_2

    .line 1830
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1832
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

    .line 2051
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2056
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    invoke-static {p0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object p0

    goto :goto_0

    .line 2053
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

    .line 1593
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
    .locals 0

    .line 385
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

    .line 532
    :try_start_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->hasLimit()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_0

    .line 533
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhere()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getLimit()I

    move-result v4

    .line 533
    invoke-static {v1, v2, v3, v4}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    .line 535
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getTracksUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getProjection()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v1, v0}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    move-object v0, p0

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getTracksUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getProjection()[Ljava/lang/String;

    move-result-object v3

    .line 539
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhere()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getWhereArgs()[Ljava/lang/String;

    move-result-object v5

    .line 540
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getOrderBy()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 538
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

    .line 799
    invoke-static {v0, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 801
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x1

    .line 802
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

    .line 805
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "name"

    .line 806
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 812
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 814
    :cond_1
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    .line 812
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

    .line 990
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 991
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    move-object v7, p1

    move-object v9, v4

    move-object v10, v9

    goto :goto_0

    .line 998
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :catch_0
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_data = ?"

    .line 1007
    new-array v5, v3, [Ljava/lang/String;

    aput-object p1, v5, v2

    move-object v7, v1

    move-object v9, v4

    move-object v10, v5

    .line 1012
    :goto_0
    new-array v8, v3, [Ljava/lang/String;

    const-string p1, "_id"

    aput-object p1, v8, v2

    const/4 v11, 0x0

    move-object v6, p0

    .line 1016
    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1019
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "_id"

    .line 1020
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1022
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, p1

    .line 1025
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1026
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

    .line 909
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 910
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 909
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 912
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

    .line 971
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/DBUtils;->getTrackInfo(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackInfo(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 955
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

    .line 957
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

    .line 1405
    invoke-static {p0, v1, v2}, Lcom/sonyericsson/music/common/DBUtils;->getTrackInfo(Landroid/content/ContentResolver;J)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1409
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "title"

    .line 1411
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1410
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    .line 1414
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1415
    throw p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getTrackUriFromPlayqueue(Landroid/database/Cursor;Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 6

    const-string v0, "track_uri"

    .line 828
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 829
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 830
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 831
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 832
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

    .line 837
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "_id"

    .line 838
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 839
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p0

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 843
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 844
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

    .line 1839
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

    .line 1846
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 1848
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->TRACK:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/music/common/HDAudioUtils;->getHDContent(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)Ljava/util/HashSet;

    move-result-object p0

    .line 1851
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1853
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1854
    throw p0

    :cond_0
    const/4 p0, 0x0

    .line 1856
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

    .line 1885
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object p0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_EDITABLE_ONLY:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    .line 1886
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

    .line 1885
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1889
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    .line 1892
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1894
    :cond_0
    throw v0

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 1892
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v6
.end method

.method public static isContainerUri(Landroid/net/Uri;)Z
    .locals 1

    .line 1612
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

    .line 2161
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2162
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 2163
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

    .line 1517
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

    .line 1130
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

    .line 1135
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v6, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "external"

    .line 1136
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v0

    .line 1139
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1140
    throw v0

    :cond_1
    :goto_0
    return v7
.end method

.method private static isMediaStoreExternalUri(Landroid/net/Uri;)Z
    .locals 2

    .line 1545
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1546
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 1547
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1548
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1553
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1554
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/common/DBUtils;->SEMC_MEDIA_EXTRA_EXTENDED_AUDIO_URI:Landroid/net/Uri;

    .line 1555
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1556
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

    .line 1513
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

    .line 1521
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

    .line 1534
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreExternalUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMusicInfoStoreUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1535
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

    .line 1645
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

    .line 1647
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "path"

    .line 1648
    invoke-interface {v1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 1649
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isPlaylistUserCreated(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, p0

    :cond_0
    if-eqz v1, :cond_2

    .line 1653
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1655
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

    .line 1622
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1625
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-gt v1, v2, :cond_1

    .line 1626
    sget-object v1, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    .line 1629
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v1, :cond_2

    .line 1630
    sget-object v1, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH_FROM_R:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ".m3u"

    .line 1631
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

    .line 1585
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1586
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1588
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 1589
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1588
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

    .line 1599
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

    .line 1565
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

    .line 1577
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

    .line 1662
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

    .line 1162
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
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

    .line 1148
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
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

    .line 1176
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1178
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

    .line 1734
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 1735
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMusicInfoStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1736
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 1737
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 1740
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

    .line 1292
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    .line 1293
    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1d

    if-le v2, v3, :cond_0

    const-string v2, "path"

    .line 1298
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

    .line 1300
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

    .line 1304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1306
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    .line 1305
    invoke-virtual {p0, p1, v1, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
