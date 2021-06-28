.class Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;
.super Lcom/sonyericsson/music/landingpage/CategoryLoader;
.source "NewlyAddedLoader.java"


# static fields
.field private static final LOCAL_ALBUM_PROJECTION:[Ljava/lang/String;

.field private static final LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

.field public static MERGED_CURSOR_TYPE_ALBUM:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

.field public static MERGED_CURSOR_TYPE_PLAYLIST:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;


# instance fields
.field private final mHDAudioObserver:Landroid/database/ContentObserver;

.field private mHDAudioObserverRegistered:Z

.field private final mPlaylistObserver:Landroid/database/ContentObserver;

.field private mPlaylistObserverRegistered:Z

.field private final mTracksObserver:Landroid/database/ContentObserver;

.field private mTracksObserverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 37
    sget-object v0, Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;->TYPE1:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    sput-object v0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->MERGED_CURSOR_TYPE_PLAYLIST:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    .line 39
    sget-object v0, Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;->TYPE2:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    sput-object v0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->MERGED_CURSOR_TYPE_ALBUM:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    const/4 v0, 0x6

    .line 41
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "name"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "mediastore_id"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "date_updated"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "date_created"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "path"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

    .line 50
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "artist"

    aput-object v1, v0, v2

    const-string v1, "artist_id"

    aput-object v1, v0, v3

    const-string v1, "album"

    aput-object v1, v0, v4

    const-string v1, "album_id"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->LOCAL_ALBUM_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 10

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 73
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/music/landingpage/LandingPageCategory;->getItemLimit(Landroid/app/Activity;ZI)I

    move-result v9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    .line 71
    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/music/landingpage/CategoryLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    .line 58
    new-instance p1, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {p1, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object p1, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mHDAudioObserver:Landroid/database/ContentObserver;

    const/4 p1, 0x0

    .line 59
    iput-boolean p1, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mHDAudioObserverRegistered:Z

    .line 61
    new-instance v0, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mPlaylistObserver:Landroid/database/ContentObserver;

    .line 62
    iput-boolean p1, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mPlaylistObserverRegistered:Z

    .line 64
    new-instance v0, Landroidx/loader/content/Loader$ForceLoadContentObserver;

    invoke-direct {v0, p0}, Landroidx/loader/content/Loader$ForceLoadContentObserver;-><init>(Landroidx/loader/content/Loader;)V

    iput-object v0, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mTracksObserver:Landroid/database/ContentObserver;

    .line 65
    iput-boolean p1, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mTracksObserverRegistered:Z

    return-void
.end method

.method private addRow(Landroid/database/Cursor;Landroid/database/MatrixCursor;Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Landroid/database/MatrixCursor;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 242
    invoke-virtual {p2}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 243
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 244
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 246
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 248
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 265
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Invalid column type"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 262
    :pswitch_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 259
    :pswitch_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 256
    :pswitch_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    .line 253
    :pswitch_3
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v1, v3

    goto :goto_1

    :pswitch_4
    const/4 v4, 0x0

    .line 250
    aput-object v4, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->getAlbumIdFromTracksCursor(Landroid/database/Cursor;)J

    move-result-wide v2

    .line 271
    invoke-static {v2, v3, p3}, Lcom/sonyericsson/music/common/HDAudioUtils;->isHighResContent(JLjava/util/HashSet;)Z

    move-result p1

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    .line 274
    invoke-virtual {p2, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getAlbumIdFromTracksCursor(Landroid/database/Cursor;)J
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "album_id"

    .line 234
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 235
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p3, 0x0

    :cond_1
    return p3

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public isClosed(Landroid/database/Cursor;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic isClosed(Ljava/lang/Object;)Z
    .locals 0

    .line 35
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->isClosed(Landroid/database/Cursor;)Z

    move-result p1

    return p1
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 15

    .line 110
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->loadPermissionForLatestLoad()V

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->isPermissionGranted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/CategoryLoader;->getUpperLimit()I

    move-result v0

    .line 122
    iget-object v2, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;->MEDIA_STORE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;

    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;->ALBUM:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/music/common/HDAudioUtils;->getHDContent(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Source;Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia$Type;)Ljava/util/HashSet;

    move-result-object v9

    .line 130
    sget-object v3, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->LOCAL_ALBUM_PROJECTION:[Ljava/lang/String;

    array-length v4, v3

    const/4 v10, 0x1

    add-int/2addr v4, v10

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, [Ljava/lang/String;

    .line 132
    sget-object v3, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->LOCAL_ALBUM_PROJECTION:[Ljava/lang/String;

    array-length v3, v3

    const-string v4, "is_high_res"

    aput-object v4, v11, v3

    .line 138
    :try_start_0
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 139
    sget-object v5, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->LOCAL_ALBUM_PROJECTION:[Ljava/lang/String;

    const-string v6, "is_music <> 0"

    const/4 v7, 0x0

    const-string v8, "date_added DESC"

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v12, 0x0

    if-eqz v3, :cond_3

    .line 142
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 143
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    :try_start_2
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mTracksObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v4, v12, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 146
    iput-boolean v10, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mTracksObserverRegistered:Z

    .line 147
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 149
    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 150
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, v11}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->getAlbumIdFromTracksCursor(Landroid/database/Cursor;)J

    move-result-wide v6

    const-wide/16 v13, -0x1

    cmp-long v8, v6, v13

    if-eqz v8, :cond_1

    .line 154
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 155
    invoke-direct {p0, v3, v5, v9}, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->addRow(Landroid/database/Cursor;Landroid/database/MatrixCursor;Ljava/util/HashSet;)V

    .line 156
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lt v6, v0, :cond_0

    :cond_2
    move-object v9, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 147
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    goto/16 :goto_3

    :cond_3
    move-object v9, v1

    :goto_0
    if-eqz v3, :cond_4

    .line 162
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 168
    :cond_4
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;->PLAYLIST_TYPE_ALL_NOT_SMART:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;

    .line 169
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 168
    invoke-static {v3, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$PlaylistSet;Ljava/lang/Boolean;)Landroid/net/Uri;

    move-result-object v4

    .line 171
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-lt v3, v5, :cond_5

    .line 172
    sget-object v3, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const-string v5, "COALESCE (date_updated, date_created, date_played) DESC "

    invoke-static {v1, v1, v5, v0}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v4, v3, v0, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1

    .line 175
    :cond_5
    sget-object v5, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "COALESCE (date_updated, date_created, date_played) DESC  LIMIT "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_6

    .line 179
    monitor-enter p0

    .line 185
    :try_start_6
    invoke-static {v12}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Z)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mPlaylistObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v1, v10, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 187
    iput-boolean v10, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mPlaylistObserverRegistered:Z

    .line 188
    monitor-exit p0

    goto :goto_2

    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :cond_6
    :goto_2
    if-nez v0, :cond_7

    .line 193
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->LOCAL_PLAYLISTS_PROJECTION:[Ljava/lang/String;

    invoke-direct {v0, v1, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    :cond_7
    move-object v3, v0

    if-nez v9, :cond_8

    .line 195
    new-instance v9, Landroid/database/MatrixCursor;

    invoke-direct {v9, v11, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    :cond_8
    move-object v4, v9

    .line 197
    new-instance v0, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;

    sget-object v5, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->MERGED_CURSOR_TYPE_PLAYLIST:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    sget-object v6, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->MERGED_CURSOR_TYPE_ALBUM:Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;

    new-instance v7, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader$1;

    invoke-direct {v7, p0}, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader$1;-><init>(Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/sonyericsson/music/common/AlphabeticalMergeCursor;-><init>(Landroid/database/Cursor;Landroid/database/Cursor;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;Lcom/sonyericsson/music/common/MixedContentCursor$ContentType;Lcom/sonyericsson/music/common/AlphabeticalMergeCursor$ColumnComparator;)V

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v1

    :goto_3
    if-eqz v3, :cond_9

    .line 162
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 164
    :cond_9
    throw v0

    :cond_a
    move-object v0, v1

    :goto_4
    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 3

    .line 280
    invoke-super {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->onReset()V

    .line 282
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mHDAudioObserver:Landroid/database/ContentObserver;

    iget-boolean v2, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mHDAudioObserverRegistered:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mHDAudioObserverRegistered:Z

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mPlaylistObserver:Landroid/database/ContentObserver;

    iget-boolean v2, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mPlaylistObserverRegistered:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mPlaylistObserverRegistered:Z

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mTracksObserver:Landroid/database/ContentObserver;

    iget-boolean v2, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mTracksObserverRegistered:Z

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->unregisterObserver(Landroid/content/Context;Landroid/database/ContentObserver;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mTracksObserverRegistered:Z

    .line 290
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 4

    .line 92
    invoke-super {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->onStartLoading()V

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mHDAudioObserverRegistered:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/music/common/ArtObservingBackgroundLoader;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mHDAudioObserver:Landroid/database/ContentObserver;

    .line 97
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/sonyericsson/music/landingpage/NewlyAddedLoader;->mHDAudioObserverRegistered:Z

    .line 101
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected useTestStaledataExceptionFixCode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
