.class public Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;
.super Landroid/content/ContentProvider;
.source "MusicInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;
    }
.end annotation


# static fields
.field private static final ALBUMS:I = 0x4

.field private static final ARTISTS:I = 0x1

.field static final AUDIO_ALBUMS:I = 0x74

.field static final AUDIO_ALBUMS_ID:I = 0x75

.field static final AUDIO_ARTISTS:I = 0x72

.field static final AUDIO_ARTISTS_ID:I = 0x73

.field static final AUDIO_ARTISTS_ID_ALBUMS:I = 0x76

.field private static final AUDIO_COLUMNS:Landroidx/collection/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final AUDIO_GENRES:I = 0x6a

.field static final AUDIO_GENRES_ID:I = 0x6b

.field static final AUDIO_GENRES_ID_MEMBERS:I = 0x6c

.field static final AUDIO_MEDIA:I = 0x64

.field static final AUDIO_MEDIA_ID:I = 0x65

.field static final AUDIO_MEDIA_ID_GENRES:I = 0x66

.field static final AUDIO_MEDIA_ID_GENRES_ID:I = 0x67

.field static final AUDIO_PLAYLISTS:I = 0x6e

.field static final AUDIO_PLAYLISTS_ID:I = 0x6f

.field static final AUDIO_PLAYLISTS_ID_MEMBERS:I = 0x70

.field static final AUDIO_PLAYLISTS_ID_MEMBERS_ID:I = 0x71

.field private static final CLOUD_ACCOUNT:I = 0xb

.field private static final CLOUD_ACCOUNT_PARENT_FILES:I = 0xe

.field private static final CLOUD_FILE:I = 0xd

.field private static final CLOUD_FILES:I = 0xc

.field static final FILES:I = 0x2bc

.field static final FILES_ID:I = 0x2bd

.field private static final HIGH_RES_MEDIA:I = 0xa

.field private static final MEDIA_PROJECTION:[Ljava/lang/String;

.field static final MEDIA_URI:Landroid/content/UriMatcher;

.field static final NOTIFY_AUDIO_URI:Landroid/net/Uri;

.field static final NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

.field private static final PLAYLIST:I = 0x8

.field private static final PLAYLISTS:I = 0x7

.field private static final PLAYLISTS_PROJECTION:[Ljava/lang/String;

.field private static final PLAYLIST_MEMBERS:I = 0x9

.field private static final SEARCH_HISTORY:I = 0xf

.field private static final SYNC_CONSECUTIVE_CALLS_LIMIT:I = 0xa

.field private static final SYNC_DELAY_MS:I = 0x12c

.field private static final TRACKS:I = 0x5

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static mMediaGenerationCode:J

.field private static mMediaVersionCode:Ljava/lang/String;


# instance fields
.field private mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

.field private mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

.field private mNbrOfConsecutiveHighResMediaSyncs:I

.field private mNbrOfConsecutivePlaylistsSyncs:I

.field private mNbrOfLegacyCopyRetry:I

.field private final mPlaylistDatabaseLock:Ljava/lang/Object;

.field private final mRefreshPlaylistArtRunnable:Ljava/lang/Runnable;

.field private final mSyncHighResMediaLock:Ljava/lang/Object;

.field private final mSyncPlaylistsLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 159
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 161
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v0, "content://com.sonyericsson.music.musicinfo/external/audio"

    .line 162
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    const-string v0, "content://com.sonyericsson.music.musicinfo/external/playlist"

    .line 163
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    .line 165
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    const/16 v0, 0x37

    .line 166
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "_data"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "_size"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "date_added"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "date_modified"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "datetaken"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "mime_type"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "title"

    const/4 v8, 0x7

    aput-object v1, v0, v8

    const-string v1, "_display_name"

    const/16 v9, 0x8

    aput-object v1, v0, v9

    const-string v1, "bucket_id"

    const/16 v10, 0x9

    aput-object v1, v0, v10

    const-string v1, "bucket_display_name"

    const/16 v11, 0xa

    aput-object v1, v0, v11

    const-string v1, "title_key"

    const/16 v12, 0xb

    aput-object v1, v0, v12

    const-string v1, "artist_id"

    const/16 v13, 0xc

    aput-object v1, v0, v13

    const-string v1, "album_id"

    const/16 v14, 0xd

    aput-object v1, v0, v14

    const-string v1, "track"

    const/16 v15, 0xe

    aput-object v1, v0, v15

    const-string v1, "composer"

    const/16 v15, 0xf

    aput-object v1, v0, v15

    const-string v1, "year"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, "is_music"

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "is_ringtone"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "is_notification"

    const/16 v17, 0x13

    aput-object v1, v0, v17

    const-string v1, "is_alarm"

    const/16 v17, 0x14

    aput-object v1, v0, v17

    const-string v1, "is_podcast"

    const/16 v17, 0x15

    aput-object v1, v0, v17

    const-string v1, "is_pending"

    const/16 v17, 0x16

    aput-object v1, v0, v17

    const-string v1, "album_artist"

    const/16 v17, 0x17

    aput-object v1, v0, v17

    const-string v1, "duration"

    const/16 v17, 0x18

    aput-object v1, v0, v17

    const-string v1, "bookmark"

    const/16 v17, 0x19

    aput-object v1, v0, v17

    const-string v1, "artist"

    const/16 v17, 0x1a

    aput-object v1, v0, v17

    const-string v1, "album"

    const/16 v17, 0x1b

    aput-object v1, v0, v17

    const-string v1, "is_drm"

    const/16 v17, 0x1c

    aput-object v1, v0, v17

    const-string v1, "is_audiobook"

    const/16 v17, 0x1d

    aput-object v1, v0, v17

    const-string v1, "title_resource_uri"

    const/16 v17, 0x1e

    aput-object v1, v0, v17

    const-string v1, "owner_package_name"

    const/16 v17, 0x1f

    aput-object v1, v0, v17

    const-string v1, "is_download"

    const/16 v17, 0x20

    aput-object v1, v0, v17

    const-string v1, "date_expires"

    const/16 v17, 0x21

    aput-object v1, v0, v17

    const-string v1, "is_trashed"

    const/16 v17, 0x22

    aput-object v1, v0, v17

    const-string v1, "document_id"

    const/16 v17, 0x23

    aput-object v1, v0, v17

    const-string v1, "instance_id"

    const/16 v17, 0x24

    aput-object v1, v0, v17

    const-string v1, "original_document_id"

    const/16 v17, 0x25

    aput-object v1, v0, v17

    const-string v1, "relative_path"

    const/16 v17, 0x26

    aput-object v1, v0, v17

    const-string v1, "volume_name"

    const/16 v17, 0x27

    aput-object v1, v0, v17

    const-string v1, "artist_key"

    const/16 v17, 0x28

    aput-object v1, v0, v17

    const-string v1, "album_key"

    const/16 v17, 0x29

    aput-object v1, v0, v17

    const-string v1, "genre"

    const/16 v17, 0x2a

    aput-object v1, v0, v17

    const-string v1, "genre_key"

    const/16 v17, 0x2b

    aput-object v1, v0, v17

    const-string v1, "genre_id"

    const/16 v17, 0x2c

    aput-object v1, v0, v17

    const-string v1, "author"

    const/16 v17, 0x2d

    aput-object v1, v0, v17

    const-string v1, "bitrate"

    const/16 v17, 0x2e

    aput-object v1, v0, v17

    const-string v1, "cd_track_number"

    const/16 v17, 0x2f

    aput-object v1, v0, v17

    const-string v1, "compilation"

    const/16 v17, 0x30

    aput-object v1, v0, v17

    const-string v1, "disc_number"

    const/16 v17, 0x31

    aput-object v1, v0, v17

    const-string v1, "is_favorite"

    const/16 v17, 0x32

    aput-object v1, v0, v17

    const-string v1, "num_tracks"

    const/16 v17, 0x33

    aput-object v1, v0, v17

    const-string v1, "writer"

    const/16 v17, 0x34

    aput-object v1, v0, v17

    const-string v1, "generation_added"

    const/16 v17, 0x35

    aput-object v1, v0, v17

    const-string v1, "generation_modified"

    const/16 v17, 0x36

    aput-object v1, v0, v17

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0x14

    .line 194
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "_data"

    aput-object v1, v0, v3

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    const-string v1, "title"

    aput-object v1, v0, v5

    const-string v1, "_display_name"

    aput-object v1, v0, v6

    const-string v1, "relative_path"

    aput-object v1, v0, v7

    const-string v1, "volume_name"

    const/16 v17, 0x6

    aput-object v1, v0, v17

    const-string v1, "owner_package_name"

    aput-object v1, v0, v8

    const-string v1, "date_added"

    aput-object v1, v0, v9

    const-string v1, "date_modified"

    aput-object v1, v0, v10

    const-string v1, "datetaken"

    aput-object v1, v0, v11

    const-string v1, "date_expires"

    aput-object v1, v0, v12

    const-string v1, "generation_added"

    aput-object v1, v0, v13

    const-string v1, "generation_modified"

    aput-object v1, v0, v14

    const-string v1, "is_pending"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "is_download"

    aput-object v1, v0, v15

    const-string v1, "is_favorite"

    const/16 v17, 0x10

    aput-object v1, v0, v17

    const-string v1, "is_trashed"

    const/16 v17, 0x11

    aput-object v1, v0, v17

    const-string v1, "bucket_id"

    const/16 v17, 0x12

    aput-object v1, v0, v17

    const-string v1, "bucket_display_name"

    const/16 v17, 0x13

    aput-object v1, v0, v17

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    .line 208
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "artist"

    invoke-virtual {v0, v1, v5, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "albums"

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "tracks"

    invoke-virtual {v0, v1, v5, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "tracks/#"

    invoke-virtual {v0, v1, v5, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "playlists"

    invoke-virtual {v0, v1, v5, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "playlists/#"

    invoke-virtual {v0, v1, v5, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 214
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "playlists/#/members"

    invoke-virtual {v0, v1, v5, v10}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "high_res_media"

    invoke-virtual {v0, v1, v5, v11}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 216
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "cloud_account"

    invoke-virtual {v0, v1, v5, v12}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 217
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "cloud_files"

    invoke-virtual {v0, v1, v5, v13}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 218
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "cloud_files/#"

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 219
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "cloud_files/account/#/parent/*"

    const/16 v14, 0xe

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 220
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "search_history"

    invoke-virtual {v0, v1, v5, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 222
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/media"

    const/16 v14, 0x64

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 223
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/media/#"

    const/16 v14, 0x65

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 224
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/media/#/genres"

    const/16 v14, 0x66

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 225
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/media/#/genres/#"

    const/16 v14, 0x67

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/genres"

    const/16 v14, 0x6a

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 227
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/genres/#"

    const/16 v14, 0x6b

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 228
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/genres/#/members"

    const/16 v14, 0x6c

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/playlists"

    const/16 v14, 0x6e

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 230
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/playlists/#"

    const/16 v14, 0x6f

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 231
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/playlists/#/members"

    const/16 v14, 0x70

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 232
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/playlists/#/members/#"

    const/16 v14, 0x71

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/artists"

    const/16 v14, 0x72

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 234
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/artists/#"

    const/16 v14, 0x73

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 235
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/artists/#/albums"

    const/16 v14, 0x76

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 236
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/albums"

    const/16 v14, 0x74

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 237
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/audio/albums/#"

    const/16 v14, 0x75

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/file"

    const/16 v14, 0x2bc

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 239
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/file/#"

    const/16 v14, 0x2bd

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 240
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v5, "*/file/*"

    invoke-virtual {v0, v1, v5, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 242
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_0

    .line 243
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    const/16 v1, 0x37

    new-array v1, v1, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v1, v2

    const-string v2, "_data"

    aput-object v2, v1, v3

    const-string v2, "_size"

    aput-object v2, v1, v4

    const-string v2, "date_added"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "date_modified"

    aput-object v2, v1, v6

    const-string v2, "datetaken"

    aput-object v2, v1, v7

    const/4 v2, 0x6

    const-string v3, "mime_type"

    aput-object v3, v1, v2

    const-string v2, "title"

    aput-object v2, v1, v8

    const-string v2, "_display_name"

    aput-object v2, v1, v9

    const-string v2, "bucket_id"

    aput-object v2, v1, v10

    const-string v2, "bucket_display_name"

    aput-object v2, v1, v11

    const-string v2, "title_key"

    aput-object v2, v1, v12

    const-string v2, "artist_id"

    aput-object v2, v1, v13

    const-string v2, "album_id"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "track"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    const-string v2, "composer"

    aput-object v2, v1, v15

    const/16 v2, 0x10

    const-string v3, "year"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "is_music"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "is_ringtone"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "is_notification"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "is_alarm"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "is_podcast"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "is_pending"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "album_artist"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "duration"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "bookmark"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "artist"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "album"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "is_drm"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "is_audiobook"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "title_resource_uri"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "owner_package_name"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "is_download"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "date_expires"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "is_trashed"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "document_id"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "instance_id"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "original_document_id"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "relative_path"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "volume_name"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "artist_key"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "album_key"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "genre"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "genre_key"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "genre_id"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "author"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "bitrate"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "cd_track_number"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "compilation"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "disc_number"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "is_favorite"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "num_tracks"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "writer"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "generation_added"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "generation_modified"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v0, 0x0

    .line 302
    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 303
    sput-wide v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 305
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 275
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;-><init>(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mRefreshPlaylistArtRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 295
    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutivePlaylistsSyncs:I

    .line 296
    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutiveHighResMediaSyncs:I

    .line 297
    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    .line 299
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    .line 300
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncPlaylistsLock:Ljava/lang/Object;

    .line 301
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncHighResMediaLock:Ljava/lang/Object;

    .line 306
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->createMusicInfoSyncHandler(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;Landroid/os/Bundle;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncPlaylistsWithMediaStoreFromR(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncMediaStoreAudioData()V

    return-void
.end method

.method private addPlaylistMembers(J[Landroid/content/ContentValues;)I
    .locals 8

    .line 4544
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "audio_playlists"

    .line 4549
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryForDataFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4556
    :cond_1
    new-instance v2, Lcom/sonyericsson/music/playlist/file/Playlist;

    invoke-direct {v2}, Lcom/sonyericsson/music/playlist/file/Playlist;-><init>()V

    .line 4557
    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/playlist/file/Playlist;->read(Ljava/io/File;)V

    .line 4559
    array-length v3, p3

    :goto_0
    if-ge v1, v3, :cond_4

    aget-object v4, p3, v1

    const-string v5, "audio_id"

    .line 4560
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v7, "audio"

    .line 4561
    invoke-direct {p0, v5, v6, v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryForDataFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "play_order"

    .line 4563
    invoke-virtual {v4, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4564
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_3
    const v4, 0x7fffffff

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4565
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4566
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v6

    invoke-interface {v6}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v6

    invoke-virtual {v5}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v5

    .line 4565
    invoke-virtual {v2, v4, v5}, Lcom/sonyericsson/music/playlist/file/Playlist;->add(ILjava/nio/file/Path;)I

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4568
    :cond_4
    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/playlist/file/Playlist;->write(Ljava/io/File;)V

    .line 4570
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->resolvePlaylistMembersInternal(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 4572
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update playlist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 4574
    :goto_3
    array-length p1, p3

    return p1
.end method

.method private addSmartPlaylist(JLandroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 17

    move-wide/from16 v1, p1

    .line 2124
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    const-wide/16 v4, 0x2

    cmp-long v0, v1, v4

    if-nez v0, :cond_1

    return-object v3

    :cond_1
    move-object/from16 v4, p0

    .line 2130
    iget-object v0, v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 2131
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "audio_id"

    move-object/from16 v7, p3

    .line 2132
    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-gtz v0, :cond_2

    return-object v3

    :cond_2
    const-string v0, "audio_id"

    .line 2136
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "playlist_id"

    .line 2137
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v6, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "external"

    .line 2142
    invoke-static {v0, v7, v8}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    .line 2144
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v0, 0x4

    new-array v13, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v7, "_id"

    aput-object v7, v13, v0

    const/4 v0, 0x1

    const-string v7, "volume_name"

    aput-object v7, v13, v0

    const/4 v0, 0x2

    const-string v7, "relative_path"

    aput-object v7, v13, v0

    const/4 v0, 0x3

    const-string v7, "_display_name"

    aput-object v7, v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_4

    if-eqz v7, :cond_3

    .line 2160
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v3

    .line 2151
    :cond_4
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "volume_name"

    .line 2152
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v0, "relative_path"

    .line 2153
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    const-string v0, "_display_name"

    .line 2154
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v11, v3

    goto :goto_2

    :cond_5
    move-object v0, v3

    move-object v8, v0

    move-object v11, v8

    :goto_0
    if-eqz v7, :cond_7

    .line 2160
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v8, v3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object v7, v3

    move-object v8, v7

    :goto_1
    move-object v11, v8

    .line 2157
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v7, :cond_6

    .line 2160
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    move-object v0, v3

    .line 2164
    :cond_7
    :goto_3
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 2165
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto/16 :goto_5

    :cond_8
    const-string v7, "volume_name"

    .line 2169
    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "relative_path"

    .line 2170
    invoke-virtual {v6, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "_display_name"

    .line 2171
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "smart_playlists"

    const/4 v7, 0x5

    .line 2172
    invoke-virtual {v5, v0, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    cmp-long v0, v6, v9

    if-lez v0, :cond_a

    const-wide/16 v6, 0x4

    cmp-long v0, v1, v6

    if-nez v0, :cond_9

    .line 2174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_9
    const-string v0, "3, 2"

    .line 2176
    :goto_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE audio_playlists SET members_count = (SELECT count(*) FROM smart_playlists_map WHERE playlist_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") , date_updated = "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v7, 0x3e8

    div-long/2addr v1, v7

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " WHERE _id IN ("

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2176
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2182
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2183
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2184
    invoke-virtual/range {p4 .. p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_a
    return-object v3

    :cond_b
    :goto_5
    return-object v3

    :catchall_1
    move-exception v0

    move-object v3, v7

    :goto_6
    if-eqz v3, :cond_c

    .line 2160
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2162
    :cond_c
    throw v0
.end method

.method private bulkInsertMediaInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2

    .line 2321
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media bulk insert is not supported, URI : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private bulkInsertPlaylist(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    .line 5051
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5053
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 5054
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 5055
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5057
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v9, 0x0

    const/4 v10, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/content/ContentValues;

    .line 5058
    invoke-static {v11}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validatePlaylistValues(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5059
    invoke-direct {p0, v8, v11}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->createMediaStorePlaylistOrGetInfo(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5060
    invoke-direct {p0, v11}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateMediastoreInsertValuesAvailable(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v5, "mediastore_id = ?"

    const/4 v2, 0x1

    .line 5065
    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "mediastore_id"

    .line 5066
    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    const-string v3, "playlists"

    const/4 v7, 0x5

    move-object v2, v1

    move-object v4, v11

    .line 5068
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    const-string v2, "playlists"

    const/4 v3, 0x0

    .line 5072
    invoke-virtual {v1, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    :cond_1
    int-to-long v4, v10

    add-long/2addr v4, v2

    long-to-int v2, v4

    move v10, v2

    goto :goto_0

    .line 5061
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v2, "Incorrect columns available."

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5079
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5081
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5083
    monitor-exit v0

    return v10

    :catchall_0
    move-exception p1

    .line 5081
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5082
    throw p1

    :catchall_1
    move-exception p1

    .line 5084
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    return-void
.end method

.method private bulkInsertPlaylistsInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9

    .line 2325
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2329
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v1

    .line 2339
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2340
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isSmartPlaylist(J)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2341
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    return p1

    .line 2343
    :cond_1
    invoke-direct {p0, v0, v1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->addPlaylistMembers(J[Landroid/content/ContentValues;)I

    move-result p2

    if-lez p2, :cond_2

    .line 2346
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2347
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2349
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE audio_playlists SET date_updated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2349
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2353
    invoke-virtual {v2, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    return p2

    .line 2333
    :pswitch_1
    array-length v0, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v3, p2, v1

    .line 2334
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->insertPlaylistsInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private callSyncMediaStoreAudio()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 420
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private checkUpdateSmartPlaylistColumns()V
    .locals 12

    .line 4737
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 4738
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v2, "smart_playlists"

    const/4 v3, 0x0

    const-string v4, "volume_name IS NULL OR relative_path IS NULL OR _display_name IS NULL "

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 4739
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_2

    if-eqz v9, :cond_1

    .line 4798
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 4745
    :cond_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_4

    if-eqz v9, :cond_3

    .line 4798
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    const-string v1, "audio_id"

    .line 4748
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "volume_name"

    .line 4749
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "relative_path"

    .line 4750
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name"

    .line 4751
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4752
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4753
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    const-string v2, "audio"

    const/4 v3, 0x4

    .line 4754
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    const/4 v10, 0x0

    aput-object v4, v3, v10

    const-string v4, "volume_name"

    const/4 v11, 0x1

    aput-object v4, v3, v11

    const/4 v4, 0x2

    const-string v5, "relative_path"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "_display_name"

    aput-object v5, v3, v4

    const-string v4, "_id = ? "

    new-array v5, v11, [Ljava/lang/String;

    .line 4759
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 4754
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_6

    goto/16 :goto_1

    .line 4761
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_7

    .line 4762
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_7
    const-string v1, "_id"

    .line 4765
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "volume_name"

    .line 4766
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "relative_path"

    .line 4767
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name"

    .line 4768
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 4769
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 4770
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_0

    .line 4774
    :cond_8
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "audio_id"

    .line 4775
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "volume_name"

    .line 4776
    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "relative_path"

    .line 4777
    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 4778
    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "smart_playlists"

    const-string v4, "audio_id = ? "

    .line 4780
    new-array v6, v11, [Ljava/lang/String;

    .line 4782
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    const/4 v8, 0x5

    move-object v1, v0

    move-object v3, v5

    move-object v5, v6

    move v6, v8

    .line 4780
    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 4783
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 4771
    :cond_9
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 4785
    :cond_a
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    if-eqz v9, :cond_c

    .line 4793
    :goto_2
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4796
    :cond_b
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :catch_0
    nop

    if-eqz v9, :cond_c

    goto :goto_2

    :cond_c
    :goto_3
    if-eqz v9, :cond_d

    .line 4798
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d
    return-void

    :catch_1
    move-exception v0

    if-eqz v9, :cond_e

    .line 4739
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_e
    :goto_4
    throw v0

    return-void
.end method

.method private computeIdAndKey(Landroid/content/ContentValues;)V
    .locals 14

    .line 3471
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "title"

    .line 3472
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "title"

    .line 3475
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3474
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "title_key"

    .line 3476
    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "album"

    .line 3479
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v1, :cond_5

    const-string v2, "audio"

    .line 3481
    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "album_id"

    aput-object v1, v3, v13

    const-string v1, "album"

    aput-object v1, v3, v12

    const-string v1, "album_key"

    aput-object v1, v3, v10

    const-string v4, "album = ?"

    new-array v5, v12, [Ljava/lang/String;

    const-string v1, "album"

    .line 3488
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "album_key"

    move-object v1, v0

    .line 3481
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3490
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "album_id"

    const-string v3, "album_id"

    .line 3493
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3492
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3491
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "album_key"

    const-string v3, "album_key"

    .line 3496
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3495
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3494
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3497
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 3499
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v2, "audio_albums"

    .line 3500
    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v13

    const-string v1, "album"

    aput-object v1, v3, v12

    const-string v1, "album_key"

    aput-object v1, v3, v10

    const-string v4, "album = ?"

    new-array v5, v12, [Ljava/lang/String;

    const-string v1, "album"

    .line 3507
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 3500
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3509
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "album_id"

    const-string v3, "_id"

    .line 3512
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3511
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3510
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "album_key"

    const-string v3, "album_key"

    .line 3515
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3514
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3513
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3516
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    .line 3518
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v1, "album"

    .line 3519
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3520
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "album"

    const-string v4, "album"

    .line 3521
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "album_key"

    .line 3522
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audio_albums"

    .line 3523
    invoke-virtual {v0, v3, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-string v4, "album_id"

    .line 3524
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "album_key"

    .line 3525
    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    const-string v1, "artist"

    .line 3530
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v2, "audio"

    .line 3531
    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "artist_id"

    aput-object v1, v3, v13

    const-string v1, "artist"

    aput-object v1, v3, v12

    const-string v1, "artist_key"

    aput-object v1, v3, v10

    const-string v4, "artist = ?"

    new-array v5, v12, [Ljava/lang/String;

    const-string v1, "artist"

    .line 3537
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "artist_key"

    move-object v1, v0

    .line 3531
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 3539
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "artist_id"

    const-string v3, "artist_id"

    .line 3542
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3541
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3540
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "artist_key"

    const-string v3, "artist_key"

    .line 3545
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3544
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3543
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3546
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_6
    if-eqz v1, :cond_7

    .line 3548
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string v2, "audio_artists"

    .line 3549
    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v13

    const-string v1, "artist"

    aput-object v1, v3, v12

    const-string v1, "artist_key"

    aput-object v1, v3, v10

    const-string v4, "artist = ?"

    new-array v5, v12, [Ljava/lang/String;

    const-string v1, "artist"

    .line 3556
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 3549
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 3558
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "artist_id"

    const-string v3, "_id"

    .line 3561
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3560
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 3559
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "artist_key"

    const-string v3, "artist_key"

    .line 3564
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3563
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3562
    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3565
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_8
    if-eqz v1, :cond_9

    .line 3567
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    const-string v1, "artist"

    .line 3569
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3568
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3570
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "artist"

    const-string v4, "artist"

    .line 3572
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3571
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "artist_key"

    .line 3573
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audio_artists"

    .line 3574
    invoke-virtual {v0, v3, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-string v4, "artist_id"

    .line 3575
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "artist_key"

    .line 3576
    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_1
    const-string v1, "genre"

    .line 3581
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v2, "audio"

    .line 3582
    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "genre_id"

    aput-object v1, v3, v13

    const-string v1, "genre"

    aput-object v1, v3, v12

    const-string v1, "genre_key"

    aput-object v1, v3, v10

    const-string v4, "genre = ?"

    new-array v5, v12, [Ljava/lang/String;

    const-string v1, "genre"

    .line 3588
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 3582
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 3591
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v0, "genre_id"

    const-string v2, "genre_id"

    .line 3594
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3593
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3592
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "genre_key"

    const-string v2, "genre_key"

    .line 3597
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3596
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3595
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3598
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_b
    if-eqz v1, :cond_c

    .line 3600
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    const-string v2, "audio_genres"

    .line 3601
    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v3, v13

    const-string v1, "genre"

    aput-object v1, v3, v12

    const-string v1, "genre_key"

    aput-object v1, v3, v10

    const-string v4, "genre = ?"

    new-array v5, v12, [Ljava/lang/String;

    const-string v1, "genre"

    .line 3608
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v13

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 3601
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 3610
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v0, "genre_id"

    const-string v2, "_id"

    .line 3613
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3612
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3611
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "genre_key"

    const-string v2, "genre_key"

    .line 3616
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3615
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3614
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3617
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_d
    if-eqz v1, :cond_e

    .line 3619
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    const-string v1, "genre"

    .line 3621
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3620
    invoke-static {v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3622
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "genre"

    const-string v4, "genre"

    .line 3624
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3623
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "genre_key"

    .line 3625
    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "audio_genres"

    .line 3626
    invoke-virtual {v0, v3, v9, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-string v0, "genre_id"

    .line 3627
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "genre_key"

    .line 3628
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_2
    return-void
.end method

.method private copyContentValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 5195
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5196
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createMediaStorePlaylistOrGetInfo(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z
    .locals 2

    const-string v0, "name"

    .line 5174
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediastore_id"

    .line 5176
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5178
    invoke-static {p1, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createOrGetPlaylistData(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "mediastore_id"

    .line 5185
    iget v1, p1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "path"

    .line 5186
    iget-object v1, p1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mPath:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "date_created"

    .line 5187
    iget v1, p1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mDateCreated:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "date_updated"

    .line 5188
    iget p1, p1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mDateModified:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static createSmartPlaylists(Landroid/content/Context;)V
    .locals 1

    .line 5372
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 5373
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createSmartPlaylist(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    .line 5374
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createSmartPlaylist(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    .line 5375
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createSmartPlaylist(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    return-void
.end method

.method private deleteMediaInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 2713
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "media"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2717
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 2720
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 2722
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2724
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "audio"

    .line 2725
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 2727
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p2

    .line 2733
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Uri "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not support for media delete operation"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private deletePlaylistsInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2739
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 2743
    :cond_0
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2744
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 2748
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v13, 0x0

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_6

    .line 2776
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 2777
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v4

    .line 2778
    invoke-direct {v1, v14, v15}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isSmartPlaylist(J)Z

    move-result v6

    const-wide/16 v16, 0x3e8

    if-eqz v6, :cond_3

    const-wide/16 v5, 0x4

    cmp-long v7, v14, v5

    if-nez v7, :cond_2

    .line 2780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "playlist_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "audio_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ? "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2782
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    const-string v5, "smart_playlists"

    .line 2783
    invoke-virtual {v2, v5, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 2785
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE audio_playlists SET members_count = (SELECT count(*) FROM smart_playlists WHERE playlist_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ") , date_updated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long v5, v5, v16

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " WHERE _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2785
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2791
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v12, v0, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return v3

    :cond_2
    return v3

    .line 2798
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playlist_id="

    .line 2799
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id IN ("

    .line 2800
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2801
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    array-length v7, v4

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_5

    aget-object v9, v4, v8

    .line 2802
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2803
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2806
    :cond_5
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    .line 2807
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2808
    new-array v4, v3, [I

    const-string v7, "audio_playlists_track"

    .line 2810
    new-array v8, v5, [Ljava/lang/String;

    const-string v4, "play_order"

    aput-object v4, v8, v3

    .line 2812
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const-string v19, "play_order DESC "

    move-object v4, v2

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    .line 2810
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 2813
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2814
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    new-array v5, v5, [I

    const/4 v6, 0x0

    .line 2817
    :cond_6
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-lez v7, :cond_7

    add-int/lit8 v7, v7, -0x1

    .line 2819
    aput v7, v5, v6

    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 2822
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 2823
    invoke-direct {v1, v14, v15, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->removePlaylistMembers(J[I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_8

    .line 2810
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_1
    throw v2

    :cond_9
    :goto_2
    if-eqz v4, :cond_a

    .line 2825
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a
    if-lez v3, :cond_b

    .line 2828
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE audio_playlists SET date_updated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long v5, v5, v16

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2828
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2832
    invoke-virtual {v12, v0, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_b
    return v3

    :pswitch_1
    const-string v6, "audio_playlists"

    .line 2752
    new-array v7, v5, [Ljava/lang/String;

    const-string v4, "mediastore_id"

    aput-object v4, v7, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2754
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v4, v2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v14

    .line 2752
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2756
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_c

    .line 2757
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    goto :goto_3

    :cond_c
    move-wide v7, v5

    :goto_3
    cmp-long v4, v7, v5

    if-lez v4, :cond_d

    const-string v4, "external_primary"

    .line 2760
    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2761
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :cond_d
    move-object v4, v13

    :goto_4
    if-eqz v2, :cond_e

    .line 2763
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v4, :cond_11

    .line 2768
    invoke-virtual {v12, v4, v13, v13}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_f

    .line 2770
    invoke-virtual {v12, v0, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_f
    return v2

    :catch_2
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_10

    .line 2752
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_5
    throw v3

    .line 2750
    :pswitch_2
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operation not supported "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_11
    :goto_6
    return v3

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static deleteSensMePlaylists(Landroid/content/Context;)V
    .locals 4

    .line 5382
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "WALKMAN SensMe channel"

    .line 5384
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "Music_SensMe_channel"

    .line 5387
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 5390
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 5391
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 5392
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 5391
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5392
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 5390
    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private extractAndSaveAlbumArtFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/database/Cursor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    .line 5009
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 5011
    invoke-static {v2, v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getAlbumArtPath(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5012
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 5013
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 5014
    invoke-static {}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 5013
    invoke-static {v3, v2, v5, v6}, Lcom/sonyericsson/music/common/FileUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5017
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "artist"

    .line 5018
    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "album"

    .line 5019
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "art_path"

    .line 5020
    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albums"

    move-object v1, p1

    .line 5022
    invoke-virtual {p1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v5, -0x1

    cmp-long v0, v2, v5

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const-string v6, "albums"

    const/4 v11, 0x0

    move-object v5, p1

    move-object v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    .line 5024
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5047
    :goto_0
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private extractAndSaveEmbeddedAlbumArt(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/database/Cursor;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    .line 4952
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "artist =? AND album =?"

    const/4 v2, 0x2

    .line 4955
    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v7, v2

    const/4 v9, 0x1

    aput-object v1, v7, v9

    const/4 v10, 0x0

    .line 4958
    :try_start_0
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v5, v9, [Ljava/lang/String;

    const-string v8, "_data"

    aput-object v8, v5, v2

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_3

    .line 4961
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "_data"

    .line 4962
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_2

    move-object/from16 v5, p0

    .line 4966
    :try_start_2
    invoke-direct {v5, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isSkipExtractingEmbeddedAlbumArt(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 4968
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/sonyericsson/music/metadata/EmbeddedMetaDataUtils;->getAndSaveEmbeddedAlbumArt(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v10

    .line 4971
    :goto_0
    sget-boolean v7, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_Q_API:Z

    if-eqz v7, :cond_1

    if-nez v6, :cond_1

    .line 4972
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/sonyericsson/music/metadata/EmbeddedMetaDataUtils;->getAndSaveAlbumArtFromUri(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    move-object/from16 v5, p0

    move-object v4, v10

    :goto_1
    if-eqz v4, :cond_4

    .line 4976
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "artist"

    .line 4977
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "album"

    .line 4978
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "art_path"

    .line 4980
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 4979
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albums"

    move-object/from16 v1, p1

    .line 4981
    invoke-virtual {v1, v0, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v11, -0x1

    cmp-long v0, v6, v11

    if-lez v0, :cond_4

    const-string v12, "albums"

    const/16 v17, 0x0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v18, p6

    .line 4983
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_3

    :cond_3
    move-object/from16 v5, p0

    :cond_4
    const/4 v9, 0x0

    :goto_2
    if-eqz v3, :cond_5

    .line 4996
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 5000
    :cond_5
    new-instance v0, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v10

    :goto_3
    if-eqz v3, :cond_6

    .line 4996
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 4998
    :cond_6
    throw v0
.end method

.method private forceResolvePlaylistMembers()V
    .locals 21

    move-object/from16 v1, p0

    .line 4359
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 4360
    :cond_0
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4361
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    const-string v2, "SELECT DISTINCT am.playlist_id, am.orignal_audio_path  FROM audio_playlists_map am WHERE NOT EXISTS (SELECT _id FROM audio_playlists_track at WHERE  at._id = am._id)"

    const/4 v11, 0x0

    .line 4362
    invoke-virtual {v0, v2, v11}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_c

    .line 4365
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4367
    :cond_1
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 4368
    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 4369
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_3

    .line 4371
    :cond_2
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x2

    if-nez v2, :cond_6

    const-string v3, "audio_playlists"

    .line 4372
    new-array v4, v7, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v4, v14

    const-string v2, "path"

    aput-object v2, v4, v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smart_playlist_type = 0 AND _id = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v2, v0

    move-object/from16 v7, v16

    move-wide/from16 v19, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v2, :cond_5

    .line 4377
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4378
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 4379
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4380
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_3

    if-eqz v2, :cond_a

    .line 4383
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_3

    .line 4381
    :cond_3
    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v10, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_4

    .line 4372
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v0

    :try_start_5
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v3

    :cond_5
    :goto_1
    if-eqz v2, :cond_7

    .line 4383
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_6
    move-wide/from16 v19, v8

    .line 4385
    :cond_7
    :goto_2
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4386
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_8

    goto :goto_3

    .line 4388
    :cond_8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 4390
    :try_start_6
    invoke-direct {v1, v2, v11}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryForPlaylistMember(Ljava/nio/file/Path;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v2

    if-nez v2, :cond_9

    goto :goto_3

    .line 4393
    :cond_9
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "audio_id"

    .line 4394
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "media_audio_path"

    .line 4395
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "audio_playlists_map"

    const-string v4, "playlist_id = ?  AND orignal_audio_path = ? "

    const/4 v5, 0x2

    .line 4397
    new-array v5, v5, [Ljava/lang/String;

    .line 4400
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    aput-object v15, v5, v13

    .line 4397
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 4408
    :catch_2
    :cond_a
    :goto_3
    :try_start_7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    if-nez v2, :cond_1

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v0

    if-eqz v12, :cond_b

    .line 4362
    :try_start_8
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b
    :goto_4
    throw v2

    :cond_c
    :goto_5
    if-eqz v12, :cond_d

    .line 4410
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_d
    :try_start_9
    const-string v3, "audio_playlists"

    .line 4412
    new-array v4, v13, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v4, v14

    const-string v5, "smart_playlist_type = 0"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    if-eqz v2, :cond_11

    .line 4416
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 4418
    :cond_e
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_f

    .line 4420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE audio_playlists SET members_count = (SELECT count(*) FROM audio_playlists_track WHERE playlist_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")  WHERE _id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4426
    :cond_f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    if-nez v3, :cond_e

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_10

    .line 4412
    :try_start_b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v2, v0

    :try_start_c
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_10
    :goto_6
    throw v3

    :cond_11
    :goto_7
    if-eqz v2, :cond_12

    .line 4428
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    .line 4429
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4431
    :cond_12
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4432
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private static getAlbumArtPath(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    .line 4917
    new-array v3, v0, [Ljava/lang/String;

    const-string v1, "album_art"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const-string v4, "album =? AND artist=?"

    const/4 v1, 0x2

    .line 4920
    new-array v5, v1, [Ljava/lang/String;

    aput-object p2, v5, v2

    aput-object p1, v5, v0

    const/4 p1, 0x0

    .line 4922
    :try_start_0
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v1, p0

    .line 4923
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 4926
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "album_art"

    .line 4927
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p0, :cond_1

    .line 4931
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :catchall_1
    move-exception p0

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_1
    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 4933
    :cond_2
    throw p1
.end method

.method private getAllPlaylistMembers(J)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 4651
    new-instance v0, Landroidx/collection/ArrayMap;

    invoke-direct {v0}, Landroidx/collection/ArrayMap;-><init>()V

    .line 4652
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v1, :cond_0

    return-object v0

    .line 4653
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v1, 0x2

    .line 4654
    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "_data"

    const/4 v10, 0x0

    aput-object v1, v4, v10

    const-string v1, "audio_id"

    const/4 v11, 0x1

    aput-object v1, v4, v11

    .line 4658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "audio_playlists_track"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 4659
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2

    if-eqz p1, :cond_1

    .line 4669
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    .line 4666
    :cond_2
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 4667
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 4669
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catch_0
    move-exception p2

    if-eqz p1, :cond_5

    .line 4659
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw p2

    return-void
.end method

.method private getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_2

    .line 5312
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5313
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "playlists"

    .line 5315
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 5318
    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "mediastore_id"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "name"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "_id = ?"

    new-array v7, v7, [Ljava/lang/String;

    .line 5320
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v6

    const/4 p1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v7

    move-object v7, p1

    .line 5318
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 5321
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "mediastore_id"

    .line 5322
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "name"

    .line 5323
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v10

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 5327
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5329
    :cond_1
    throw p1

    .line 5331
    :cond_2
    :goto_2
    new-instance p1, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private getPlaylistTracksCount(ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 4891
    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-eq v1, p2, :cond_2

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-eq v1, p2, :cond_2

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 4894
    :cond_0
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne p1, p2, :cond_1

    .line 4895
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v2, p1

    goto :goto_1

    :cond_1
    move-object v2, v0

    goto :goto_1

    :cond_2
    :goto_0
    const-string p2, "external"

    int-to-long v1, p1

    .line 4893
    invoke-static {p2, v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    :goto_1
    const/4 p1, 0x0

    if-eqz v2, :cond_5

    .line 4901
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p2, 0x1

    new-array v3, p2, [Ljava/lang/String;

    const-string p2, "_id"

    aput-object p2, v3, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4903
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v0, :cond_5

    .line 4906
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4908
    :cond_4
    throw p1

    :cond_5
    :goto_2
    return p1
.end method

.method private initialiseSmartPlaylist(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)J
    .locals 10

    const-string v1, "audio_playlists"

    const/4 v8, 0x1

    .line 4436
    new-array v2, v8, [Ljava/lang/String;

    const-string v0, "_id"

    const/4 v9, 0x0

    aput-object v0, v2, v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smart_playlist_type =  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4437
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 4436
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4439
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4440
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_0
    if-eqz v0, :cond_1

    .line 4443
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4444
    :cond_1
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne p2, v0, :cond_4

    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_4

    .line 4445
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4446
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v9

    const-string v4, "name =? "

    new-array v5, v8, [Ljava/lang/String;

    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 4449
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaProviderName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    const/4 v6, 0x0

    .line 4446
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4450
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4451
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 4452
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {p0, v2, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncSmartPlaylistToLocalDb(Landroid/content/Context;II)V

    goto :goto_0

    :cond_2
    const-string v1, "UPDATE smart_playlists SET playlist_id = 4 WHERE playlist_id = -5 "

    .line 4454
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v0, :cond_4

    .line 4458
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception p1

    if-eqz v0, :cond_3

    .line 4446
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p1

    .line 4460
    :cond_4
    :goto_2
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne p2, v0, :cond_7

    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_7

    .line 4461
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4462
    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v3, v9

    const-string v4, "name =? "

    new-array v5, v8, [Ljava/lang/String;

    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 4465
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaProviderName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v9

    const/4 v6, 0x0

    .line 4462
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4466
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4467
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 4468
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {p0, v2, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncSmartPlaylistToLocalDb(Landroid/content/Context;II)V

    goto :goto_3

    :cond_5
    const-string v1, "UPDATE smart_playlists SET playlist_id = 3 WHERE playlist_id = -7 "

    .line 4470
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    if-eqz v0, :cond_7

    .line 4474
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catch_2
    move-exception p1

    if-eqz v0, :cond_6

    .line 4462
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p1

    .line 4476
    :cond_7
    :goto_5
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 4477
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "path"

    .line 4478
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_data"

    .line 4479
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mediastore_id"

    .line 4480
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaBaseID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_id"

    .line 4481
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaBaseID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "smart_playlist_type"

    .line 4482
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "date_created"

    .line 4483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "audio_playlists"

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 4484
    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    .line 4486
    sget-object v2, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne p2, v2, :cond_8

    .line 4487
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaBaseID()I

    move-result p2

    int-to-long v2, p2

    .line 4488
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UPDATE audio_playlists SET members_count = (SELECT count(*) FROM smart_playlists_map WHERE playlist_id = "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ") , date_updated = "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4492
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v4

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " WHERE _id IN ("

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 4488
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_8
    return-wide v0
.end method

.method private insertMediaInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    .line 2005
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "media"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2010
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    .line 2014
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2015
    invoke-virtual {v1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 2017
    invoke-virtual {p2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 2021
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2022
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "playlists"

    const/4 v1, 0x1

    .line 2023
    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "smart_playlist_type"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "mediastore_id =?"

    new-array v7, v1, [Ljava/lang/String;

    aput-object v0, v7, v6

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v7

    move-object v7, v0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2027
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "smart_playlist_type"

    .line 2028
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2030
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_1

    .line 2031
    :cond_0
    throw p2

    .line 2039
    :cond_1
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not support for media insert operation"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private insertPlaylistsInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 2045
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 2049
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2050
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 2051
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    const/4 v7, 0x7

    const-wide/16 v14, 0x3e8

    const/4 v8, 0x1

    const/4 v13, 0x0

    if-eq v6, v7, :cond_4

    const/16 v7, 0x9

    if-eq v6, v7, :cond_1

    goto :goto_0

    .line 2094
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x2

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2095
    invoke-direct {v1, v6, v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isSmartPlaylist(J)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2096
    invoke-direct {v1, v6, v7, v0, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->addSmartPlaylist(JLandroid/content/ContentValues;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 2098
    :cond_2
    new-array v8, v8, [Landroid/content/ContentValues;

    aput-object v0, v8, v13

    .line 2100
    invoke-direct {v1, v6, v7, v8}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->addPlaylistMembers(J[Landroid/content/ContentValues;)I

    move-result v0

    if-lez v0, :cond_3

    .line 2102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE audio_playlists SET date_updated = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    div-long/2addr v8, v14

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " WHERE "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_id"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2102
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2106
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object v2

    :cond_3
    :goto_0
    return-object v4

    .line 2053
    :cond_4
    iget-object v12, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2055
    :try_start_0
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validatePlaylistValues(Landroid/content/ContentValues;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2056
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "name"

    const-string v9, "name"

    .line 2058
    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2057
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2060
    :try_start_1
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    .line 2062
    :goto_1
    :try_start_2
    sget-object v6, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error inserting playlist into "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v9, v0}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_9

    .line 2070
    invoke-direct {v1, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncPlaylistsWithMediaStoreFromR(Landroid/os/Bundle;)V

    const-string v7, "audio_playlists"

    .line 2071
    new-array v8, v8, [Ljava/lang/String;

    const-string v6, "_id"

    aput-object v6, v8, v13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mediastore_id = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2073
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    move-object v6, v5

    move-object/from16 v17, v12

    move-object v12, v0

    const/4 v4, 0x0

    move-object/from16 v13, v16

    .line 2071
    :try_start_3
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2076
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2077
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    goto :goto_3

    :cond_6
    const/4 v13, 0x0

    :goto_3
    if-eqz v0, :cond_7

    .line 2079
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v13, :cond_8

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE audio_playlists SET date_updated = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2082
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    div-long/2addr v6, v14

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " WHERE "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_id"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2081
    invoke-virtual {v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 2084
    invoke-virtual {v3, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2085
    invoke-static {v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v4

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    goto :goto_4

    :cond_9
    move-object/from16 v17, v12

    move-object v4, v0

    .line 2090
    :goto_4
    monitor-exit v17

    return-object v4

    :catchall_0
    move-exception v0

    move-object/from16 v17, v12

    .line 2091
    :goto_5
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method private isOnlyRefreshMusicInfoInternalValues(Landroid/content/ContentValues;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 5397
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 5398
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 5399
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_HIDDEN:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_SET:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 5400
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_TYPE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 5401
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private isSkipExtractingEmbeddedAlbumArt(Ljava/lang/String;)Z
    .locals 1

    .line 4938
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".xmf"

    .line 4940
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mxmf"

    .line 4941
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mid"

    .line 4942
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".midi"

    .line 4943
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isSmartPlaylist(J)Z
    .locals 3

    const-wide/16 v0, 0x2

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x3

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x4

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isUserCreatedPlaylist(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    .line 5278
    :try_start_0
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    .line 5279
    new-array v3, v7, [Ljava/lang/String;

    const-string v1, "_data"

    const/4 v8, 0x0

    aput-object v1, v3, v8

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 5280
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "_data"

    .line 5282
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 5283
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    if-eqz v0, :cond_0

    .line 5302
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    .line 5288
    :cond_1
    :try_start_1
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH_FROM_R:Ljava/lang/String;

    .line 5289
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ".m3u"

    .line 5290
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 5302
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return v7

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return v8

    :cond_5
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return v8

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 5304
    :cond_7
    throw p1
.end method

.method private movePlaylistMembers(JII)I
    .locals 3

    .line 4578
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    add-int/lit8 p3, p3, -0x1

    add-int/lit8 p4, p4, -0x1

    if-ltz p3, :cond_3

    if-gez p4, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "audio_playlists"

    .line 4586
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryForDataFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 4593
    :cond_2
    new-instance v2, Lcom/sonyericsson/music/playlist/file/Playlist;

    invoke-direct {v2}, Lcom/sonyericsson/music/playlist/file/Playlist;-><init>()V

    .line 4594
    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/playlist/file/Playlist;->read(Ljava/io/File;)V

    .line 4595
    invoke-virtual {v2, p3, p4}, Lcom/sonyericsson/music/playlist/file/Playlist;->move(II)I

    .line 4596
    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/playlist/file/Playlist;->write(Ljava/io/File;)V

    .line 4598
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p3, p1, p2, p4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->resolvePlaylistMembersInternal(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 4601
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to update playlist"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method private queryAudioForSingleItem([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4715
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "audio"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 4716
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4720
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    .line 4723
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-gt p2, v0, :cond_1

    .line 4728
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    .line 4731
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4732
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to read row from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4724
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4725
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple items at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4721
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4722
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No item at "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4719
    :cond_3
    new-instance p1, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing cursor for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private queryForDataFile(JLjava/lang/String;)Ljava/io/File;
    .locals 4

    .line 4631
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_5

    .line 4633
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT _data FROM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " WHERE _id = "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4636
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 4637
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v1

    .line 4642
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 4643
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    .line 4645
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p3

    :cond_3
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_0
    move-exception p2

    if-eqz p1, :cond_4

    .line 4634
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw p2

    :cond_5
    :goto_2
    return-object v1
.end method

.method private queryForPlaylistMember(Ljava/nio/file/Path;Ljava/util/Map;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4681
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 4682
    :cond_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 4683
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4684
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_1

    .line 4685
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    :cond_1
    return-object v1

    :cond_2
    const/4 p2, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4688
    :try_start_0
    new-array v4, p2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v2

    const-string v5, "_data"

    aput-object v5, v4, v3

    const-string v5, "_data=?"

    new-array v6, v3, [Ljava/lang/String;

    aput-object v0, v6, v2

    invoke-direct {p0, v4, v5, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryAudioForSingleItem([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 4691
    :try_start_1
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    .line 4693
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_3
    return-object v1

    .line 4692
    :cond_4
    :try_start_3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v0, :cond_5

    .line 4693
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_5
    return-object v4

    :catch_0
    move-exception v4

    if-eqz v0, :cond_6

    .line 4688
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_0
    throw v4
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    .line 4699
    :catch_2
    :try_start_7
    new-array p2, p2, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, p2, v2

    const-string v0, "_data"

    aput-object v0, p2, v3

    const-string v0, "_display_name=?"

    new-array v4, v3, [Ljava/lang/String;

    .line 4701
    invoke-interface {p1}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 4699
    invoke-direct {p0, p2, v0, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryAudioForSingleItem([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_5

    .line 4702
    :try_start_8
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz p2, :cond_8

    if-eqz p1, :cond_7

    .line 4704
    :try_start_9
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_7
    return-object v1

    .line 4703
    :cond_8
    :try_start_a
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_5

    if-eqz p1, :cond_9

    .line 4704
    :try_start_b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_5

    :cond_9
    return-object p2

    :catch_3
    move-exception p2

    if-eqz p1, :cond_a

    .line 4699
    :try_start_c
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_1

    :catch_4
    move-exception p1

    :try_start_d
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_1
    throw p2
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_5

    :catch_5
    return-object v1
.end method

.method private queryMediaInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    .line 1109
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.sonyericsson.music.musicinfo"

    const-string v5, "media"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1113
    sget-boolean v4, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 1114
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    if-eqz v1, :cond_1

    const-string v4, "android:query-arg-sql-selection"

    .line 1116
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    if-eqz v1, :cond_2

    const-string v6, "android:query-arg-sql-selection-args"

    .line 1117
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v5

    :goto_1
    if-eqz v1, :cond_3

    const-string v7, "android:query-arg-sql-sort-order"

    .line 1118
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_2

    :cond_3
    move-object v8, v5

    :goto_2
    if-eqz v1, :cond_4

    const-string v7, "android:query-arg-sql-group-by"

    .line 1119
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    move-object v7, v5

    :goto_3
    if-eqz v1, :cond_5

    const-string v9, "android:query-arg-sql-having"

    .line 1120
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    move-object v9, v5

    :goto_4
    if-eqz v1, :cond_6

    const-string v11, "android:query-arg-sql-limit"

    .line 1121
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    move-object/from16 v11, p0

    goto :goto_5

    :cond_6
    move-object/from16 v11, p0

    move-object v12, v5

    .line 1123
    :goto_5
    iget-object v13, v11, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    if-nez v3, :cond_7

    const-string v14, "*"

    goto :goto_6

    :cond_7
    const-string v14, ", "

    .line 1126
    invoke-static {v14, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 1127
    :goto_6
    sget-object v15, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    :pswitch_0
    const-string v0, "mounted"

    .line 1319
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1320
    invoke-virtual {v10, v2, v3, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_1
    if-eqz v4, :cond_8

    .line 1180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_8
    const-string v1, ""

    .line 1182
    :goto_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "artist_id = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1183
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT "

    .line 1184
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM ("

    .line 1185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SELECT album_id AS _id, album_id AS album_id, album AS album, album_key AS album_key, artist_id AS artist_id, artist AS artist, artist_key AS artist_key, COUNT(DISTINCT _id) AS numsongs, COUNT(DISTINCT _id) AS numsongs_by_artist, MIN(year) AS minyear, MAX(year) AS maxyear, NULL AS album_art FROM audio WHERE is_music = 1 GROUP BY artist_id, album_id"

    .line 1186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    .line 1194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    const-string v3, "WHERE "

    .line 1196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v8, :cond_a

    const-string v1, " ORDER BY "

    .line 1199
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1202
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    :pswitch_2
    if-eqz v4, :cond_b

    .line 1153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_b
    const-string v1, ""

    .line 1155
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1157
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    .line 1158
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM ("

    .line 1159
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SELECT album_id AS _id, album_id AS album_id, album AS album, album_key AS album_key, artist_id AS artist_id, artist AS artist, artist_key AS artist_key, COUNT(DISTINCT _id) AS numsongs, COUNT(DISTINCT _id) AS numsongs_by_artist, MIN(year) AS minyear, MAX(year) AS maxyear, NULL AS album_art FROM audio WHERE is_music = 1 GROUP BY album_id"

    .line 1160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    .line 1169
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_c

    const-string v2, "WHERE "

    .line 1171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v8, :cond_d

    const-string v2, " ORDER BY "

    .line 1174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1177
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    :pswitch_4
    if-eqz v4, :cond_e

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_9

    :cond_e
    const-string v1, ""

    .line 1131
    :goto_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1133
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    .line 1134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM ("

    .line 1135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SELECT artist_id AS _id, MIN(artist) AS artist, artist_key AS artist_key, COUNT(DISTINCT album_id) AS number_of_albums, COUNT(DISTINCT _id) AS number_of_tracks FROM audio WHERE is_music = 1 GROUP BY artist_id"

    .line 1136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    .line 1142
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_f

    const-string v2, "WHERE "

    .line 1144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    if-eqz v8, :cond_10

    const-string v2, "ORDER BY "

    .line 1147
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1150
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    .line 1222
    :pswitch_6
    invoke-virtual {v10, v2, v5, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 1223
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_12

    :cond_11
    const-string v6, "audio_id"

    .line 1232
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v15, "tracks"

    const/16 v16, 0x0

    .line 1233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "track_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v13

    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1236
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_12

    .line 1238
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x1

    goto :goto_a

    .line 1241
    :cond_12
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1242
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, 0x0

    :goto_a
    if-nez v6, :cond_14

    .line 1245
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1246
    invoke-virtual {v10, v2, v3, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1247
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_13
    return-object v1

    :cond_14
    if-nez v3, :cond_15

    .line 1250
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_b

    :cond_15
    move-object v6, v3

    .line 1251
    :goto_b
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1252
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_c
    const-string v1, "audio_id"

    .line 1254
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v15, "audio"

    const/16 v16, 0x0

    const-string v17, "_id = ?"

    .line 1255
    new-array v3, v9, [Ljava/lang/String;

    .line 1256
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v13

    move-object/from16 v18, v3

    .line 1255
    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1258
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_10

    .line 1262
    :cond_16
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 1263
    array-length v3, v6

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v3, :cond_1b

    aget-object v14, v6, v12

    .line 1264
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getType(I)I

    move-result v15

    if-eq v15, v9, :cond_18

    const/4 v8, 0x3

    if-eq v15, v8, :cond_17

    move-object v8, v5

    goto :goto_f

    .line 1278
    :cond_17
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :cond_18
    const-string v8, "audio_id"

    .line 1268
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "_id"

    .line 1269
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "play_order"

    .line 1270
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "playlist_id"

    .line 1271
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    goto :goto_e

    .line 1275
    :cond_19
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_f

    .line 1272
    :cond_1a
    :goto_e
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1286
    :goto_f
    invoke-virtual {v2, v14, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    goto :goto_d

    .line 1288
    :cond_1b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_11

    :cond_1c
    :goto_10
    if-eqz v1, :cond_1d

    .line 1259
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1290
    :cond_1d
    :goto_11
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1292
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1294
    invoke-virtual {v7, v10, v0}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v7

    :cond_1e
    const/4 v8, 0x0

    goto/16 :goto_c

    :cond_1f
    :goto_12
    if-eqz v4, :cond_20

    .line 1224
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1225
    :cond_20
    invoke-virtual {v10, v2, v3, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1226
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_21
    return-object v1

    :pswitch_7
    if-eqz v4, :cond_22

    .line 1303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_22
    const-string v1, ""

    .line 1305
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "genre_id = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto/16 :goto_16

    :pswitch_8
    if-eqz v4, :cond_23

    .line 1205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14

    :cond_23
    const-string v1, ""

    .line 1207
    :goto_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1209
    :pswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    .line 1210
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM (SELECT genre_id AS _id, MIN(genre) AS name FROM audio GROUP BY genre_id) "

    .line 1211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_24

    const-string v2, "WHERE "

    .line 1213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    if-eqz v8, :cond_25

    const-string v2, "ORDER BY "

    .line 1216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1219
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    .line 1309
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT "

    .line 1311
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM (SELECT genre_id AS _id, genre AS name FROM audio "

    .line 1312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WHERE "

    .line 1313
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND genre IS NOT NULL )"

    .line 1314
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1315
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1316
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    :pswitch_b
    if-eqz v4, :cond_26

    .line 1297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_15

    :cond_26
    const-string v1, ""

    .line 1299
    :goto_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_16
    :pswitch_c
    const-string v2, "audio"

    move-object v1, v13

    move-object/from16 v3, p2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v9, v12

    .line 1326
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1327
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    :cond_27
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private queryPlaylistsInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 11

    .line 1018
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz p3, :cond_1

    const-string v0, "android:query-arg-sql-selection"

    .line 1023
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz p3, :cond_2

    const-string v3, "android:query-arg-sql-selection-args"

    .line 1024
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_1

    :cond_2
    move-object v6, v1

    :goto_1
    if-eqz p3, :cond_3

    const-string v3, "android:query-arg-sql-sort-order"

    .line 1025
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_2

    :cond_3
    move-object v9, v1

    :goto_2
    if-eqz p3, :cond_4

    const-string v3, "android:query-arg-sql-group-by"

    .line 1026
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    goto :goto_3

    :cond_4
    move-object v7, v1

    :goto_3
    if-eqz p3, :cond_5

    const-string v3, "android:query-arg-sql-having"

    .line 1027
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v8, v3

    goto :goto_4

    :cond_5
    move-object v8, v1

    :goto_4
    if-eqz p3, :cond_6

    const-string v3, "android:query-arg-sql-limit"

    .line 1028
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    move-object v10, p3

    goto :goto_5

    :cond_6
    move-object v10, v1

    .line 1031
    :goto_5
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p3

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_8

    .line 1052
    :pswitch_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 1053
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v3, v1

    .line 1054
    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isSmartPlaylist(J)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1055
    invoke-direct {p0, v1, p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->querySmartPlaylist(ILandroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_7
    if-nez v0, :cond_8

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v5, p3

    goto :goto_6

    :cond_8
    move-object v5, v0

    :goto_6
    const-string v3, "audio_playlists_track"

    move-object v4, p2

    .line 1064
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_8

    .line 1042
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    if-nez v0, :cond_9

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v5, p3

    goto :goto_7

    :cond_9
    move-object v5, v0

    :goto_7
    const-string v3, "audio_playlists"

    move-object v4, p2

    .line 1049
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_8

    .line 1033
    :pswitch_2
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object p3

    .line 1034
    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 1035
    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, p3

    check-cast v6, [Ljava/lang/String;

    const-string v3, "audio_playlists"

    move-object v4, p2

    .line 1039
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_a

    .line 1070
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-interface {v1, p2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_a
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private querySmartPlaylist(ILandroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .line 1077
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 1081
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1082
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    const-string v0, "play_order DESC"

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    const/4 p1, 0x3

    const-string v0, "play_count DESC, play_order DESC"

    move-object v9, v0

    goto :goto_0

    :cond_0
    move-object v9, v0

    :goto_0
    if-nez v1, :cond_1

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlist_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    .line 1094
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND playlist_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    .line 1098
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "smart_playlists_map"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    const-string p1, "50"

    :goto_2
    move-object v10, p1

    move-object v4, p3

    .line 1099
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1103
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3
    return-object p1
.end method

.method private removePlaylistMembers(J[I)I
    .locals 3

    .line 4607
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v0, "audio_playlists"

    .line 4609
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryForDataFile(JLjava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 4616
    :cond_1
    new-instance v2, Lcom/sonyericsson/music/playlist/file/Playlist;

    invoke-direct {v2}, Lcom/sonyericsson/music/playlist/file/Playlist;-><init>()V

    .line 4617
    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/playlist/file/Playlist;->read(Ljava/io/File;)V

    .line 4618
    invoke-virtual {v2, p3}, Lcom/sonyericsson/music/playlist/file/Playlist;->removeMultiple([I)I

    move-result p3

    .line 4619
    invoke-virtual {v2, v0}, Lcom/sonyericsson/music/playlist/file/Playlist;->write(Ljava/io/File;)V

    .line 4621
    iget-object v2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, p2, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->resolvePlaylistMembersInternal(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p3

    :catch_0
    move-exception p1

    .line 4624
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to update playlist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    return v1
.end method

.method private removeSmartPlaylistDuplicate(Ljava/lang/String;)Z
    .locals 3

    .line 4873
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "Music_favorites"

    .line 4874
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4875
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-gt v0, v2, :cond_3

    :cond_1
    const-string v0, "Music_recently_played_tracks"

    .line 4876
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4877
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_3

    :cond_2
    const-string v0, "Music_most_played_tracks"

    .line 4878
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4879
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x18

    if-le p1, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private removeWrongSmartPlaylistInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V
    .locals 9

    const-string v1, "audio_playlists"

    const/4 v0, 0x1

    .line 4342
    new-array v2, v0, [Ljava/lang/String;

    const-string v3, "smart_playlist_type"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "smart_playlist_type = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4344
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AND ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " != "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4345
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaBaseID()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " OR "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " != ? )"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v0, [Ljava/lang/String;

    .line 4347
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getMediaProviderName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p1

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    .line 4342
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4350
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "audio_playlists"

    .line 4351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smart_playlist_type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4352
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    .line 4351
    invoke-virtual {p1, v1, p2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4354
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void
.end method

.method private replaceMusicInfoIdsWithMediaStoreIds(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    if-eqz p1, :cond_1

    .line 5337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5338
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-static {p1, v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getParamsValue(Landroid/net/Uri;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5340
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 5342
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5341
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5345
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 5347
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 5346
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->concatParamsValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5348
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replaceUriParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_1
    return-object p1
.end method

.method private replacePlaylistId(Landroid/content/ContentValues;I)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "playlist_id"

    .line 3780
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "playlist_id"

    .line 3781
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private replacePlaylistId([Landroid/content/ContentValues;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3787
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3788
    invoke-direct {p0, v2, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId(Landroid/content/ContentValues;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static replaceUriParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 5356
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 5357
    invoke-virtual {p0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5358
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5359
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 5361
    :cond_0
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 5364
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private resolvePlaylistMembersInternal(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .locals 9

    .line 4499
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 4502
    :cond_0
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getAllPlaylistMembers(J)Ljava/util/Map;

    move-result-object v0

    const-string v1, "audio_playlists_map"

    .line 4503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playlist_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4505
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p4

    .line 4506
    new-instance v1, Lcom/sonyericsson/music/playlist/file/Playlist;

    invoke-direct {v1}, Lcom/sonyericsson/music/playlist/file/Playlist;-><init>()V

    .line 4507
    invoke-interface {p4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/playlist/file/Playlist;->read(Ljava/io/File;)V

    .line 4509
    invoke-virtual {v1}, Lcom/sonyericsson/music/playlist/file/Playlist;->asList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 4511
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-ge v2, v4, :cond_3

    .line 4513
    :try_start_1
    invoke-interface {p4}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/nio/file/Path;

    invoke-interface {v4, v5}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v4

    .line 4514
    invoke-direct {p0, v4, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryForPlaylistMember(Ljava/nio/file/Path;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v4

    .line 4516
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "play_order"

    add-int/lit8 v7, v2, 0x1

    .line 4517
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "playlist_id"

    .line 4518
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "audio_id"

    if-eqz v4, :cond_1

    .line 4519
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    :goto_1
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "orignal_audio_path"

    .line 4520
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/nio/file/Path;

    invoke-interface {v7}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "media_audio_path"

    if-eqz v4, :cond_2

    .line 4522
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    goto :goto_2

    :cond_2
    const-string v4, "NO_MATCH"

    .line 4521
    :goto_2
    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "audio_playlists_map"

    .line 4523
    invoke-virtual {p1, v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v4

    .line 4528
    :try_start_2
    sget-object v5, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "Failed to resolve playlist member"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4532
    :cond_3
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UPDATE audio_playlists SET members_count = (SELECT count(*) FROM audio_playlists_track WHERE playlist_id = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")  WHERE _id = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 4539
    sget-object p2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const-string p4, "Failed to refresh playlist"

    invoke-virtual {p2, p3, p4, p1}, Lcom/sonymobile/music/debug/DebugBase;->logW(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private syncLegacyMediaData()V
    .locals 21

    move-object/from16 v1, p0

    .line 428
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    .line 437
    :try_start_0
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;->LEGACY_SOMC_AUDIO_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "_id"

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 444
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 442
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 440
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    :goto_0
    move-object v10, v9

    :goto_1
    const/4 v11, 0x1

    if-eqz v10, :cond_16

    .line 446
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_e

    .line 459
    :cond_1
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setShowSyncUserNoticeDialog(Landroid/content/Context;Z)V

    .line 464
    :goto_2
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 465
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;->LEGACY_AUDIO_COLUMN:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v13, 0x3

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 466
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    if-eq v3, v11, :cond_3

    if-eq v3, v13, :cond_2

    goto :goto_3

    .line 473
    :cond_2
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 474
    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 469
    :cond_3
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 470
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    :cond_4
    const-string v0, "_id"

    .line 482
    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v0, "volume_name"

    .line 483
    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "relative_path"

    .line 484
    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_display_name"

    .line 485
    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 490
    :try_start_1
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    new-array v7, v13, [Ljava/lang/String;

    aput-object v0, v7, v20

    aput-object v2, v7, v11

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x0

    move-object v2, v8

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    .line 498
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move-object v0, v9

    :goto_4
    const/4 v2, 0x5

    if-eqz v0, :cond_9

    .line 501
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 502
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 503
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;->LEGACY_AUDIO_COLUMN:Landroidx/collection/ArraySet;

    invoke-virtual {v4}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 504
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getType(I)I

    move-result v6

    if-eq v6, v11, :cond_7

    if-eq v6, v13, :cond_6

    goto :goto_5

    .line 511
    :cond_6
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 512
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 507
    :cond_7
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 508
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_5

    .line 519
    :cond_8
    invoke-direct {v1, v14, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateAudioEditInfo(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 520
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v6, v14

    move-object v3, v15

    const/4 v5, 0x3

    goto :goto_8

    :cond_9
    if-eqz v0, :cond_a

    .line 522
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    :try_start_2
    const-string v0, "tracks"

    const/4 v3, 0x0

    .line 525
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "track_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v15

    const/4 v5, 0x3

    move-object v13, v0

    move-object v6, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    :try_start_3
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_7

    :catch_4
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v6, v14

    move-object v3, v15

    const/4 v5, 0x3

    .line 529
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v9

    :goto_7
    if-eqz v0, :cond_10

    .line 533
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 534
    invoke-direct {v1, v6, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateAudioEditInfo(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 536
    :cond_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 542
    :goto_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 543
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    invoke-virtual {v4}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 544
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 545
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getType(I)I

    move-result v12

    if-eq v12, v11, :cond_e

    if-eq v12, v5, :cond_d

    goto :goto_9

    .line 551
    :cond_d
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 548
    :cond_e
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_9

    .line 561
    :cond_f
    invoke-virtual {v0}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "date_modified"

    .line 562
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    invoke-direct {v1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->computeIdAndKey(Landroid/content/ContentValues;)V

    :try_start_4
    const-string v4, "audio"

    .line 565
    invoke-virtual {v3, v4, v9, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 568
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 572
    :cond_10
    :goto_a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_15

    const-string v13, "tracks"

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v12, v3

    .line 576
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v13, "audio_tag"

    .line 577
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v13, "audio"

    .line 578
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v0, :cond_13

    if-eqz v4, :cond_13

    if-eqz v3, :cond_13

    .line 581
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-gt v5, v6, :cond_12

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-le v5, v6, :cond_11

    goto :goto_b

    :cond_11
    const/16 v20, 0x1

    .line 591
    :cond_12
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 592
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 593
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 594
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_c

    :cond_13
    const/16 v20, 0x1

    :goto_c
    if-nez v20, :cond_14

    .line 599
    iget v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    add-int/2addr v0, v11

    iput v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    .line 600
    iget v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    if-gt v0, v2, :cond_14

    .line 601
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncLegacyMediaData()V

    .line 611
    :cond_14
    :try_start_5
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;->LEGACY_SOMC_AUDIO_URI:Landroid/net/Uri;

    const-string v2, "finish_somc_legacy_migration"

    invoke-virtual {v8, v0, v2, v9, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7

    goto :goto_d

    :catch_7
    move-exception v0

    .line 613
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 615
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setLegacyDataCopyCompleted(Landroid/content/Context;Z)V

    return-void

    :cond_15
    move-object v15, v3

    goto/16 :goto_2

    .line 448
    :cond_16
    :goto_e
    :try_start_6
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;->LEGACY_SOMC_AUDIO_URI:Landroid/net/Uri;

    const-string v2, "finish_somc_legacy_migration"

    invoke-virtual {v8, v0, v2, v9, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    .line 450
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 452
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setLegacyDataCopyCompleted(Landroid/content/Context;Z)V

    if-eqz v10, :cond_17

    .line 456
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_17
    return-void
.end method

.method private syncMediaStoreAudioData()V
    .locals 34

    move-object/from16 v0, p0

    .line 1340
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v1, :cond_0

    return-void

    .line 1342
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    .line 1343
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isLegacyDataCopyCompleted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1351
    :cond_1
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isMediaStoreVersionChanged()Z

    move-result v2

    .line 1353
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isMediaStoreGenerationChanged()Z

    move-result v3

    .line 1355
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1356
    iget-object v5, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const/4 v5, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    if-eqz v2, :cond_4

    const-string v7, "audio"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v6, v14

    const/4 v15, 0x0

    move-object/from16 v11, v16

    move-object v15, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    .line 1365
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1366
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_2

    const-string v7, "audio"

    .line 1367
    invoke-virtual {v14, v7, v15, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    if-eqz v6, :cond_3

    .line 1369
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1372
    :cond_3
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v4, v6, v7, v15, v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    move-object v5, v6

    const/4 v12, 0x0

    goto/16 :goto_7

    :cond_4
    move-object v15, v12

    const-wide/16 v6, 0x0

    const-string v8, "SELECT MAX(generation_modified) AS genMod FROM audio"

    .line 1382
    invoke-virtual {v14, v8, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1384
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    .line 1385
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    :cond_5
    if-eqz v8, :cond_6

    .line 1387
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_6
    const-string v8, "generation_modified <= ?"

    const/4 v13, 0x1

    .line 1390
    new-array v12, v13, [Ljava/lang/String;

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v12, v7

    .line 1392
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v9, v13, [Ljava/lang/String;

    const-string v10, "_id"

    aput-object v10, v9, v7

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v7, 0x2

    move-object v5, v4

    move-object v7, v9

    move-object v9, v12

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    const-string v7, "audio"

    .line 1395
    new-array v8, v13, [Ljava/lang/String;

    const-string v6, "_id"

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v6, v14

    move-object/from16 v20, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v5, :cond_7

    .line 1397
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v7

    goto :goto_0

    :cond_7
    const/4 v7, -0x1

    :goto_0
    if-eqz v6, :cond_8

    .line 1398
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    goto :goto_1

    :cond_8
    const/4 v8, -0x1

    .line 1399
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, -0x1

    if-eq v8, v10, :cond_11

    if-eq v7, v10, :cond_11

    if-nez v7, :cond_9

    if-eqz v8, :cond_9

    const-string v7, "audio"

    .line 1410
    invoke-virtual {v14, v7, v15, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    move v12, v7

    goto/16 :goto_5

    :cond_9
    if-eq v7, v8, :cond_11

    .line 1415
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1416
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1417
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1419
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_b

    const-string v11, "_id"

    .line 1420
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1422
    :cond_a
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1423
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_a

    .line 1426
    :cond_b
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "_id"

    .line 1427
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1429
    :cond_c
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1430
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_c

    .line 1433
    :cond_d
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1434
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1435
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1441
    invoke-virtual {v8}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1442
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1444
    :cond_e
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    const/4 v12, 0x2

    if-le v8, v12, :cond_f

    const-string v8, "audio"

    .line 1445
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id IN ("

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1446
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    sub-int/2addr v13, v12

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1445
    invoke-virtual {v14, v8, v10, v15}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    goto :goto_3

    :cond_f
    const/4 v11, 0x0

    .line 1450
    :goto_3
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1451
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_10
    move v12, v11

    goto :goto_5

    :cond_11
    const/4 v12, 0x0

    :goto_5
    if-eqz v6, :cond_12

    .line 1456
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz v5, :cond_13

    .line 1457
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 1458
    :cond_13
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_14

    .line 1459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "generation_modified > ? OR _id IN ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v6

    const/4 v6, 0x0

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_6

    :cond_14
    const-string v5, "generation_modified > ?"

    move-object v8, v5

    .line 1467
    :goto_6
    sget-object v6, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v5, v4

    move-object/from16 v9, v20

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v6

    move-object v5, v6

    :goto_7
    if-eqz v5, :cond_22

    .line 1472
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_22

    .line 1476
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1477
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1478
    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    invoke-virtual {v8}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1479
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_15
    const/4 v8, 0x0

    .line 1482
    :goto_9
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1483
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1484
    sget-object v11, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    invoke-virtual {v11}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v15, v17

    check-cast v15, Ljava/lang/String;

    .line 1485
    invoke-virtual {v7, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    if-eqz v17, :cond_1b

    .line 1486
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move-object/from16 v23, v7

    const/4 v7, -0x1

    if-ne v13, v7, :cond_16

    move-object/from16 v7, v23

    goto/16 :goto_c

    .line 1487
    :cond_16
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getType(I)I

    move-result v13

    move-object/from16 v19, v11

    const/4 v11, 0x1

    if-eq v13, v11, :cond_19

    const/4 v7, 0x3

    if-eq v13, v7, :cond_17

    const-string v7, "is_music"

    .line 1509
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1510
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1511
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_b

    .line 1497
    :cond_17
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1498
    invoke-virtual {v9, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "volume_name"

    .line 1499
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    const-string v13, "relative_path"

    .line 1500
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_18

    const-string v13, "_display_name"

    .line 1501
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 1502
    :cond_18
    invoke-virtual {v10, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 1490
    :cond_19
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 1491
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v9, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "_id"

    .line 1492
    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1493
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v10, v15, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1a
    :goto_b
    move-object/from16 v11, v19

    move-object/from16 v7, v23

    const/4 v15, 0x0

    goto/16 :goto_a

    :cond_1b
    move-object/from16 v19, v11

    const/4 v11, 0x1

    move-object/from16 v11, v19

    :goto_c
    const/4 v15, 0x0

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v23, v7

    const/4 v11, 0x1

    .line 1517
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v7, v8

    const-string v10, "audio"

    const/4 v13, 0x5

    const/4 v15, 0x0

    .line 1518
    invoke-virtual {v14, v10, v15, v9, v13}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v9

    add-long/2addr v7, v9

    long-to-int v13, v7

    .line 1520
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_21

    if-lez v13, :cond_20

    .line 1532
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v10, v6

    check-cast v10, Landroid/content/ContentValues;

    if-nez v10, :cond_1d

    goto :goto_d

    :cond_1d
    const-string v6, "volume_name"

    .line 1534
    invoke-virtual {v10, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v6, "relative_path"

    .line 1535
    invoke-virtual {v10, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v6, "_display_name"

    .line 1536
    invoke-virtual {v10, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1538
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1e

    const-string v6, "_id"

    .line 1539
    invoke-virtual {v10, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "_id"

    .line 1541
    invoke-virtual {v10, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v7, "audio_id"

    .line 1542
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "smart_playlists"

    const-string v9, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    const/4 v6, 0x3

    .line 1544
    new-array v8, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v17, v8, v6

    aput-object v19, v8, v11

    const/4 v6, 0x2

    aput-object v22, v8, v6

    const/16 v23, 0x5

    move-object v6, v14

    move-object/from16 v24, v8

    move-object v8, v10

    move-object/from16 v25, v10

    move-object/from16 v10, v24

    const/16 v24, 0x1

    move/from16 v11, v23

    invoke-virtual/range {v6 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    const-string v7, "audio_tag"

    const-string v9, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    const/4 v6, 0x3

    .line 1549
    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v17, v10, v6

    aput-object v19, v10, v24

    const/4 v6, 0x2

    aput-object v22, v10, v6

    const/4 v11, 0x5

    move-object v6, v14

    move-object/from16 v8, v25

    invoke-virtual/range {v6 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    goto :goto_e

    :cond_1e
    const/16 v24, 0x1

    :goto_e
    const/4 v11, 0x1

    goto/16 :goto_d

    :cond_1f
    const/16 v24, 0x1

    goto :goto_f

    :cond_20
    const/16 v24, 0x1

    goto :goto_f

    :cond_21
    move v8, v13

    move-object/from16 v7, v23

    const/4 v15, 0x0

    goto/16 :goto_9

    :cond_22
    const/16 v24, 0x1

    const/4 v13, 0x0

    :goto_f
    if-eqz v5, :cond_23

    .line 1565
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_23
    const-string v5, "SELECT aa.title, aa.artist, aa.album, aa.genre, aa.track, aa.year, at._id, aa.volume_name, aa.relative_path, aa._display_name FROM audio at INNER JOIN audio_tag aa ON aa.volume_name=at.volume_name AND aa.relative_path=at.relative_path AND aa._display_name=at._display_name AND (at.title != aa.title OR at.artist != aa.artist OR at.album != aa.album OR at.genre != aa.genre OR at.track != aa.track OR at.year != aa.year)"

    const/4 v6, 0x0

    .line 1572
    invoke-virtual {v14, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 1582
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_2e

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2e

    const-string v6, "title"

    .line 1587
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v6, "artist"

    .line 1588
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v6, "album"

    .line 1589
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v6, "genre"

    .line 1590
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v6, "track"

    .line 1591
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v6, "year"

    .line 1592
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v6, "volume_name"

    .line 1593
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    move/from16 v17, v13

    const-string v13, "relative_path"

    .line 1594
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move/from16 v19, v3

    const-string v3, "_display_name"

    .line 1595
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move/from16 v22, v2

    .line 1598
    :goto_10
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v23, v4

    .line 1599
    invoke-interface {v5, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move/from16 v25, v15

    .line 1600
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v26, v11

    .line 1601
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    move/from16 v27, v10

    .line 1602
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v28, v9

    .line 1603
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move/from16 v29, v8

    .line 1604
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1605
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1606
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1607
    invoke-interface {v5, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1609
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_2c

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_2c

    .line 1610
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-eqz v33, :cond_24

    move/from16 v33, v3

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v2, v28

    move/from16 v3, v29

    const/4 v4, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x2

    goto/16 :goto_12

    .line 1614
    :cond_24
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v33

    if-nez v33, :cond_25

    move/from16 v33, v3

    const-string v3, "title"

    .line 1615
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    :cond_25
    move/from16 v33, v3

    .line 1617
    :goto_11
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string v3, "artist"

    .line 1618
    invoke-virtual {v2, v3, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    :cond_26
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "album"

    .line 1621
    invoke-virtual {v2, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1623
    :cond_27
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string v3, "genre"

    .line 1624
    invoke-virtual {v2, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1627
    :cond_28
    invoke-direct {v0, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->computeIdAndKey(Landroid/content/ContentValues;)V

    .line 1629
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    const-string v3, "track"

    .line 1630
    invoke-virtual {v2, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    :cond_29
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "year"

    .line 1633
    invoke-virtual {v2, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    :cond_2a
    invoke-virtual {v2}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    const-string v3, "audio"

    const-string v9, "volume_name = ? AND relative_path = ? AND _display_name = ?"

    const/4 v4, 0x3

    .line 1637
    new-array v10, v4, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v30, v10, v15

    aput-object v31, v10, v24

    const/16 v16, 0x2

    aput-object v32, v10, v16

    const/4 v11, 0x5

    move/from16 v20, v6

    move-object v6, v14

    move/from16 v21, v7

    move-object v7, v3

    move/from16 v3, v29

    move-object v8, v2

    move/from16 v2, v28

    invoke-virtual/range {v6 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v6

    add-int v17, v17, v6

    goto :goto_12

    :cond_2b
    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v2, v28

    move/from16 v3, v29

    const/4 v4, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x2

    goto :goto_12

    :cond_2c
    move/from16 v33, v3

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v2, v28

    move/from16 v3, v29

    const/4 v4, 0x3

    const/4 v15, 0x0

    const/16 v16, 0x2

    .line 1644
    :goto_12
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2d

    goto :goto_13

    :cond_2d
    move v9, v2

    move v8, v3

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v4, v23

    move/from16 v15, v25

    move/from16 v11, v26

    move/from16 v10, v27

    move/from16 v3, v33

    goto/16 :goto_10

    :cond_2e
    move/from16 v22, v2

    move/from16 v19, v3

    move-object/from16 v23, v4

    move/from16 v17, v13

    :goto_13
    if-eqz v5, :cond_2f

    .line 1649
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2f
    if-gtz v17, :cond_31

    if-lez v12, :cond_30

    goto :goto_14

    .line 1657
    :cond_30
    sput-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    goto :goto_15

    .line 1652
    :cond_31
    :goto_14
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    move-object/from16 v2, v23

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    if-eqz v22, :cond_32

    .line 1653
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateMediaStoreVersion()V

    :cond_32
    if-eqz v19, :cond_33

    .line 1654
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateMediaStoreGeneration()V

    .line 1655
    :cond_33
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->forceResolvePlaylistMembers()V

    :goto_15
    return-void
.end method

.method private syncPlaylistsWithMediaStoreFromR(Landroid/os/Bundle;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 4038
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v2, :cond_0

    return-void

    .line 4039
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 4040
    invoke-static {v2}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 4041
    :cond_1
    iget-object v3, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4042
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4048
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4049
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 4052
    invoke-direct {v1, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateExistingSmartPlaylist(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 4054
    sget-object v4, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {v1, v13, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->initialiseSmartPlaylist(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)J

    move-result-wide v4

    const-wide/16 v14, 0x0

    add-long/2addr v4, v14

    .line 4055
    sget-object v6, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {v1, v13, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->initialiseSmartPlaylist(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 4056
    sget-object v6, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {v1, v13, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->initialiseSmartPlaylist(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 4057
    sget-object v6, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {v1, v13, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->initialiseSmartPlaylist(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)J

    move-result-wide v6

    add-long v16, v4, v6

    .line 4059
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->checkUpdateSmartPlaylistColumns()V

    const-string v4, "SELECT MAX(generation_modified) AS genMod FROM audio_playlists"

    const/4 v12, 0x0

    .line 4065
    invoke-virtual {v13, v4, v12}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v11, 0x0

    if-eqz v4, :cond_2

    .line 4067
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4068
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    goto :goto_0

    :cond_2
    move-wide v5, v14

    :goto_0
    if-eqz v4, :cond_3

    .line 4070
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v8, "generation_modified <= ? AND smart_playlist_type = 0 "

    const/4 v4, 0x1

    .line 4074
    new-array v10, v4, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v11

    const-string v6, "audio_playlists"

    .line 4076
    new-array v7, v4, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v7, v11

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v5, v13

    move-object v9, v10

    move-object/from16 v21, v10

    move-object/from16 v10, v18

    const/4 v14, 0x0

    move-object/from16 v11, v19

    move-object v15, v12

    move-object/from16 v12, v20

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/4 v11, -0x1

    if-eqz v10, :cond_4

    .line 4079
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v5

    move v12, v5

    goto :goto_1

    :cond_4
    const/4 v12, -0x1

    :goto_1
    const-string v7, "generation_modified <= ? AND media_type = 4"

    const-string v5, "external"

    .line 4085
    invoke-static {v5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v6, v14

    const/4 v9, 0x0

    const/4 v8, 0x1

    move-object v4, v2

    move-object/from16 v8, v21

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 4088
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_2

    :cond_5
    const/4 v5, -0x1

    .line 4090
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x2

    if-eq v12, v11, :cond_c

    if-eq v5, v11, :cond_c

    if-eq v12, v5, :cond_c

    .line 4094
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 4095
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 4098
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "_id"

    .line 4099
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4101
    :cond_6
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4102
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_6

    .line 4105
    :cond_7
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "_id"

    .line 4106
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 4108
    :cond_8
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4109
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-nez v12, :cond_8

    .line 4112
    :cond_9
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4113
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 4114
    invoke-virtual {v5, v8}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 4121
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 4122
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 4124
    :cond_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-le v7, v9, :cond_b

    .line 4125
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "is_available"

    .line 4126
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "audio_playlists"

    .line 4127
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "_id IN ("

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4128
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    sub-int/2addr v11, v9

    invoke-virtual {v6, v14, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ") "

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 4127
    invoke-virtual {v13, v8, v7, v11, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    add-long v16, v16, v7

    .line 4135
    :cond_b
    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4136
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 4137
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_c
    if-eqz v10, :cond_d

    .line 4144
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v4, :cond_e

    .line 4145
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4146
    :cond_e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v4, v9, :cond_f

    .line 4147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generation_modified > ? OR _id IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4148
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-virtual {v6, v14, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "media_type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v4

    goto :goto_5

    :cond_f
    const-string v4, "generation_modified > ? AND media_type = 4"

    move-object v7, v4

    :goto_5
    const-string v4, "external"

    .line 4158
    invoke-static {v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    move-object v4, v2

    move-object/from16 v8, v21

    const/4 v12, 0x2

    move-object v9, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_20

    .line 4162
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 4163
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 4164
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_6
    if-ge v7, v6, :cond_10

    aget-object v8, v5, v7

    .line 4165
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v11, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_10
    :goto_7
    const-string v5, "_id"

    .line 4169
    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_1e

    .line 4170
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1e

    .line 4171
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-direct {v1, v5, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isSmartPlaylist(J)Z

    move-result v5

    if-eqz v5, :cond_11

    goto/16 :goto_d

    .line 4173
    :cond_11
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 4174
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->PLAYLISTS_PROJECTION:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_8
    if-ge v7, v6, :cond_16

    aget-object v8, v5, v7

    .line 4175
    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    if-eqz v9, :cond_15

    .line 4176
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v14, -0x1

    if-ne v12, v14, :cond_12

    goto :goto_9

    .line 4177
    :cond_12
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getType(I)I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_14

    const/4 v14, 0x3

    if-eq v12, v14, :cond_13

    goto :goto_9

    .line 4184
    :cond_13
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4185
    invoke-virtual {v10, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 4180
    :cond_14
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 4181
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_15
    :goto_9
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x2

    const/4 v14, 0x0

    goto :goto_8

    :cond_16
    const-string v5, "_display_name"

    .line 4192
    invoke-virtual {v10, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 4196
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1e

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-gtz v6, :cond_17

    goto/16 :goto_d

    .line 4199
    :cond_17
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT _id FROM audio_playlists WHERE _id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id"

    .line 4200
    invoke-virtual {v10, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 4199
    invoke-virtual {v13, v6, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_19

    .line 4201
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_19

    const/4 v7, 0x1

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v2, v0

    if-eqz v6, :cond_18

    .line 4199
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_a

    :catch_1
    move-exception v0

    move-object v4, v0

    :try_start_3
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_18
    :goto_a
    throw v2

    :cond_19
    const/4 v7, 0x0

    :goto_b
    if-eqz v6, :cond_1a

    .line 4202
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1a
    const-string v6, "is_available"

    const/4 v8, 0x1

    .line 4204
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "date_created"

    const-string v8, "date_added"

    .line 4205
    invoke-virtual {v10, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "name"

    const-string v8, "."

    .line 4206
    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v5, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "path"

    const-string v6, "_data"

    .line 4207
    invoke-virtual {v10, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mediastore_id"

    const-string v6, "_id"

    .line 4208
    invoke-virtual {v10, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "_id"

    const-string v6, "_id"

    .line 4209
    invoke-virtual {v10, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-nez v7, :cond_1b

    const-string v5, "date_updated"

    const-string v6, "date_modified"

    .line 4211
    invoke-virtual {v10, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1b
    if-nez v7, :cond_1c

    const-string v5, "audio_playlists"

    const/4 v6, 0x5

    .line 4219
    invoke-virtual {v13, v5, v15, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v5

    move-object v14, v10

    const-wide/16 v7, 0x0

    goto :goto_c

    :cond_1c
    const-string v6, "audio_playlists"

    .line 4222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id"

    .line 4223
    invoke-virtual {v10, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v12, 0x5

    move-object v5, v13

    move-object v7, v10

    move-object v14, v10

    move v10, v12

    .line 4222
    invoke-virtual/range {v5 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x0

    :goto_c
    cmp-long v9, v5, v7

    if-lez v9, :cond_1d

    const-string v7, "_id"

    .line 4232
    invoke-virtual {v14, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v9, "_data"

    .line 4233
    invoke-virtual {v14, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4231
    invoke-direct {v1, v13, v7, v8, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->resolvePlaylistMembersInternal(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    add-long v16, v16, v5

    .line 4239
    :cond_1d
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4240
    :cond_1e
    :goto_d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_1f

    goto :goto_e

    :cond_1f
    const/4 v12, 0x2

    const/4 v14, 0x0

    goto/16 :goto_7

    :cond_20
    :goto_e
    if-eqz v4, :cond_21

    .line 4243
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_21
    const-wide/16 v4, 0x0

    cmp-long v6, v16, v4

    if-lez v6, :cond_22

    const-string v4, "DELETE FROM audio_playlists WHERE smart_playlist_type = 0 AND is_available = 0"

    .line 4246
    invoke-virtual {v13, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_22
    const-string v4, "SELECT DISTINCT playlist_id FROM audio_playlists_map WHERE audio_id = 0 AND media_audio_path != \'NO_MATCH\'"

    .line 4252
    invoke-virtual {v13, v4, v15}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_29

    .line 4255
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_29

    const/4 v5, 0x0

    .line 4257
    :goto_f
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "audio_playlists"

    const/4 v12, 0x2

    .line 4258
    new-array v9, v12, [Ljava/lang/String;

    const-string v10, "_id"

    aput-object v10, v9, v5

    const-string v5, "path"

    const/4 v10, 0x1

    aput-object v5, v9, v10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "smart_playlist_type = 0 AND _id = "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v13

    move-object v6, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object v10, v14

    move-object/from16 v11, v16

    const/4 v14, 0x2

    move-object/from16 v12, v17

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_25

    .line 4263
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_25

    const/4 v9, 0x0

    .line 4264
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 4265
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 4266
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v11, :cond_23

    if-eqz v5, :cond_26

    .line 4269
    :goto_10
    :try_start_6
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_13

    .line 4267
    :cond_23
    :try_start_7
    invoke-direct {v1, v13, v6, v7, v10}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->resolvePlaylistMembersInternal(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_12

    :catch_2
    move-exception v0

    move-object v2, v0

    if-eqz v5, :cond_24

    .line 4258
    :try_start_8
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_11

    :catch_3
    move-exception v0

    move-object v5, v0

    :try_start_9
    invoke-virtual {v2, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_24
    :goto_11
    throw v2

    :cond_25
    const/4 v8, 0x1

    const/4 v9, 0x0

    :goto_12
    if-eqz v5, :cond_26

    goto :goto_10

    .line 4270
    :cond_26
    :goto_13
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v5, :cond_27

    goto :goto_15

    :cond_27
    const/4 v5, 0x0

    goto :goto_f

    :catch_4
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_28

    .line 4252
    :try_start_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_14

    :catch_5
    move-exception v0

    move-object v4, v0

    :try_start_b
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_28
    :goto_14
    throw v2

    :cond_29
    const/4 v9, 0x0

    :goto_15
    if-eqz v4, :cond_2a

    .line 4272
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2a
    if-nez v0, :cond_2b

    goto :goto_16

    :cond_2b
    const-string v4, "delay_art_refresh"

    .line 4277
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    move v9, v11

    :goto_16
    if-nez v9, :cond_2c

    .line 4280
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mRefreshPlaylistArtRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_17

    .line 4282
    :cond_2c
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mRefreshPlaylistArtRunnable:Ljava/lang/Runnable;

    int-to-long v5, v9

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4285
    :goto_17
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4286
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v2, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4292
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v0

    return-void
.end method

.method private syncSmartPlaylistToLocalDb(Landroid/content/Context;II)V
    .locals 21

    move/from16 v1, p2

    .line 4802
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gtz v1, :cond_1

    return-void

    :cond_1
    const-string v0, "external"

    int-to-long v2, v1

    .line 4804
    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_b

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 4808
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v11, 0x4

    new-array v6, v11, [Ljava/lang/String;

    const-string v0, "audio_id"

    aput-object v0, v6, v10

    const-string v0, "volume_name"

    aput-object v0, v6, v3

    const-string v0, "relative_path"

    const/4 v12, 0x2

    aput-object v0, v6, v12

    const/4 v0, 0x3

    const-string v7, "_display_name"

    aput-object v7, v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v4, :cond_3

    if-eqz v4, :cond_2

    .line 4858
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4860
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    .line 4863
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 4860
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4865
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    .line 4815
    :cond_3
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_9

    move-object/from16 v5, p0

    .line 4816
    :try_start_3
    iget-object v0, v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 4818
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "audio_id"

    .line 4819
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v8, "volume_name"

    .line 4820
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "relative_path"

    .line 4821
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v13, "_display_name"

    .line 4822
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 4823
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 4824
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_2

    :cond_5
    const-string v14, "audio_id"

    .line 4827
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "playlist_id"

    .line 4828
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "volume_name"

    .line 4829
    invoke-virtual {v7, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "relative_path"

    .line 4830
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_display_name"

    .line 4831
    invoke-virtual {v7, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v14, "smart_playlists"

    const/4 v15, 0x0

    const-string v16, "playlist_id = ? AND audio_id = ?"

    .line 4833
    new-array v8, v12, [Ljava/lang/String;

    .line 4836
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v3

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v6

    move-object/from16 v17, v8

    .line 4833
    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4838
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4839
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 4842
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 4844
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    :goto_1
    :try_start_6
    const-string v0, "smart_playlists"

    .line 4848
    invoke-virtual {v6, v0, v2, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 4850
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4852
    :cond_8
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_4

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_4

    :cond_9
    move-object/from16 v5, p0

    :goto_3
    if-eqz v4, :cond_c

    .line 4858
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4860
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    .line 4863
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 4860
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object/from16 v5, p0

    :goto_4
    move-object v2, v4

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    :goto_5
    move-object v4, v2

    :goto_6
    move-object v2, v0

    goto :goto_8

    :catch_5
    move-exception v0

    move-object/from16 v5, p0

    .line 4855
    :goto_7
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v2, :cond_c

    .line 4858
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 4860
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    .line 4863
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 4860
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 4865
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_5

    :goto_8
    if-eqz v4, :cond_a

    .line 4858
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 4860
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    .line 4863
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 4860
    invoke-virtual {v0, v4, v6, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    .line 4865
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4868
    :cond_a
    :goto_9
    throw v2

    :cond_b
    move-object/from16 v5, p0

    :cond_c
    :goto_a
    return-void
.end method

.method private updateAudioEditInfo(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 10

    .line 623
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 624
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$AudioTag;->AUDIO_TAG_COLUMNS:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 625
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, -0x1

    .line 626
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "track"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_1
    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_2
    const-string v4, "genre"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :sswitch_3
    const-string v3, "album"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    goto :goto_2

    :sswitch_4
    const-string v3, "year"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x5

    goto :goto_2

    :sswitch_5
    const-string v3, "artist"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, -0x1

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p2, :cond_2

    .line 641
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 642
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 643
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 646
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz p2, :cond_3

    .line 631
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 632
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 633
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 636
    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 655
    :cond_4
    invoke-virtual {v0}, Landroid/content/ContentValues;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 656
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v1, "_id"

    .line 657
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "volume_name"

    .line 658
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "relative_path"

    .line 659
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_display_name"

    .line 660
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "audio_id"

    .line 662
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "volume_name"

    .line 663
    invoke-virtual {v0, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "relative_path"

    .line 664
    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_display_name"

    .line 665
    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    if-eqz v7, :cond_5

    if-eqz p1, :cond_5

    :try_start_0
    const-string v1, "audio_tag"

    const-string v8, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    .line 670
    new-array v3, v3, [Ljava/lang/String;

    aput-object v2, v3, v5

    aput-object v7, v3, v6

    aput-object p1, v3, v4

    invoke-virtual {p2, v1, v0, v8, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    goto :goto_3

    :cond_5
    const-string p1, "audio_tag"

    const-string v2, "_id = ? "

    .line 676
    new-array v3, v6, [Ljava/lang/String;

    .line 678
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 676
    invoke-virtual {p2, p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_3
    if-gtz p1, :cond_6

    const-string p1, "audio_tag"

    const/4 v1, 0x0

    .line 681
    invoke-virtual {p2, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 684
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x53fd20b9 -> :sswitch_5
        0x38883d -> :sswitch_4
        0x5897e6f -> :sswitch_3
        0x5db0983 -> :sswitch_2
        0x6942258 -> :sswitch_1
        0x697f14b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateMediaInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 3232
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sonyericsson.music.musicinfo"

    const-string v5, "media"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 3236
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v14, -0x1

    if-nez v3, :cond_0

    return v14

    .line 3239
    :cond_0
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v3, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    const/16 v4, 0x70

    if-ne v3, v4, :cond_1

    .line 3306
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3307
    invoke-virtual {v1, v13, v2, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 3309
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not support for media update operation"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3242
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3243
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 3245
    invoke-direct {v0, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->computeIdAndKey(Landroid/content/ContentValues;)V

    const-string v4, "audio"

    const/4 v10, 0x4

    .line 3247
    new-array v5, v10, [Ljava/lang/String;

    const-string v3, "_id"

    const/16 v16, 0x0

    aput-object v3, v5, v16

    const-string v3, "volume_name"

    const/16 v17, 0x1

    aput-object v3, v5, v17

    const-string v3, "relative_path"

    const/16 v18, 0x2

    aput-object v3, v5, v18

    const-string v3, "_display_name"

    const/4 v9, 0x3

    aput-object v3, v5, v9

    const/4 v8, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v3, v1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    const/4 v14, 0x3

    move-object/from16 v9, v19

    const/16 v19, 0x4

    move-object/from16 v10, v20

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 3252
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 3254
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3255
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$AudioTag;->AUDIO_TAG_COLUMNS:Landroidx/collection/ArraySet;

    invoke-virtual {v6}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 3256
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 3257
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "track"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x4

    goto :goto_2

    :sswitch_1
    const-string v8, "title"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_2

    :sswitch_2
    const-string v8, "genre"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x3

    goto :goto_2

    :sswitch_3
    const-string v8, "album"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x2

    goto :goto_2

    :sswitch_4
    const-string v8, "year"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x5

    goto :goto_2

    :sswitch_5
    const-string v8, "artist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v8, -0x1

    :goto_2
    packed-switch v8, :pswitch_data_0

    goto :goto_0

    .line 3266
    :pswitch_0
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 3262
    :pswitch_1
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3274
    :cond_5
    invoke-virtual {v4}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    const-string v6, "_id"

    .line 3276
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "volume_name"

    .line 3277
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "relative_path"

    .line 3278
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_display_name"

    .line 3279
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "audio_id"

    .line 3281
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "volume_name"

    .line 3282
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "relative_path"

    .line 3283
    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_display_name"

    .line 3284
    invoke-virtual {v4, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "audio_tag"

    const-string v10, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    .line 3285
    new-array v5, v14, [Ljava/lang/String;

    aput-object v7, v5, v16

    aput-object v8, v5, v17

    aput-object v9, v5, v18

    invoke-virtual {v1, v6, v4, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_7

    const-string v5, "audio_tag"

    const/4 v6, 0x0

    .line 3290
    invoke-virtual {v1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 3291
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 3295
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v3, "audio"

    .line 3296
    invoke-virtual {v1, v3, v2, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 3300
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3301
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_9
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x53fd20b9 -> :sswitch_5
        0x38883d -> :sswitch_4
        0x5897e6f -> :sswitch_3
        0x5db0983 -> :sswitch_2
        0x6942258 -> :sswitch_1
        0x697f14b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updatePlaylistInMediaStore(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 5204
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 5205
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 5207
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 5208
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    .line 5207
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5209
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 5210
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    .line 5209
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5211
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 5212
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5216
    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isUserCreatedPlaylist(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5219
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 5221
    :cond_0
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 5222
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v3

    .line 5221
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 5226
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-le v3, v4, :cond_1

    .line 5227
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH_FROM_R:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5230
    :cond_1
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5234
    :cond_2
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 5235
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 5234
    invoke-direct {p0, p2, v2, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->copyContentValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return v0

    .line 5245
    :cond_4
    :goto_0
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 5246
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 5247
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 5245
    invoke-direct {p0, p2, v2, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->copyContentValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 5249
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 5250
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 5251
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 5249
    invoke-direct {p0, p2, v2, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->copyContentValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 5253
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 5255
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p2, :cond_5

    const-string p2, "external_primary"

    .line 5258
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 5259
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    aget-object p3, p4, v0

    .line 5260
    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 5261
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 5262
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5263
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5264
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5265
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 5266
    invoke-virtual {p1, p2, v1, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 5268
    :cond_5
    sget-object p2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 5269
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_6
    return v0
.end method

.method private updatePlaylistsInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    .line 3316
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    .line 3320
    :cond_0
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 3321
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 3324
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const-wide/16 v13, 0x3e8

    const/4 v15, 0x0

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_3

    .line 3385
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 3386
    invoke-direct {v1, v3, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isSmartPlaylist(J)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3387
    invoke-direct {v1, v3, v4, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateSmartPlaylist(JLandroid/net/Uri;)I

    move-result v0

    return v0

    :cond_1
    const-string v5, "from"

    .line 3390
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "to"

    .line 3391
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3392
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->movePlaylistMembers(JII)I

    move-result v5

    if-lez v5, :cond_2

    .line 3395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE audio_playlists SET date_updated = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3396
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v13

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " WHERE "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3395
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3399
    invoke-virtual {v12, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2
    return v5

    :pswitch_1
    const-string v5, "date_played"

    .line 3337
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "audio_playlists"

    .line 3342
    invoke-virtual {v2, v6, v4, v5, v15}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_a

    .line 3344
    invoke-virtual {v12, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto/16 :goto_3

    :cond_3
    const-string v5, "name"

    .line 3349
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3350
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "name"

    .line 3353
    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3354
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    return v3

    :cond_4
    const-string v5, "name"

    .line 3355
    invoke-virtual {v11, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "audio_playlists"

    const/4 v4, 0x1

    .line 3356
    new-array v6, v4, [Ljava/lang/String;

    const-string v4, "mediastore_id"

    aput-object v4, v6, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3358
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v16, 0x0

    move-object v4, v2

    move-object v13, v11

    move-object/from16 v11, v16

    .line 3356
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 3360
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_5

    .line 3361
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    goto :goto_0

    :cond_5
    move-wide v8, v6

    :goto_0
    cmp-long v5, v8, v6

    if-lez v5, :cond_6

    const-string v5, "external_primary"

    .line 3364
    invoke-static {v5}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 3365
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_6
    move-object v5, v15

    :goto_1
    if-eqz v4, :cond_7

    .line 3367
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v5, :cond_a

    .line 3372
    invoke-virtual {v12, v5, v13, v15, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_a

    .line 3374
    invoke-direct {v1, v15}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncPlaylistsWithMediaStoreFromR(Landroid/os/Bundle;)V

    .line 3375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE audio_playlists SET date_updated = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3376
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " WHERE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3377
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3375
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3379
    invoke-virtual {v12, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_8

    .line 3356
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_2
    throw v2

    .line 3326
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v3

    .line 3327
    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 3328
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, [Ljava/lang/String;

    const-string v3, "audio_playlists"

    const/4 v7, 0x5

    move-object/from16 v4, p2

    .line 3329
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_9

    .line 3332
    invoke-virtual {v12, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3333
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    invoke-virtual {v12, v0, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_9
    return v2

    :cond_a
    :goto_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSmartPlaylist(JLandroid/net/Uri;)I
    .locals 18

    move-wide/from16 v0, p1

    .line 3409
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    const-wide/16 v4, 0x3

    cmp-long v2, v0, v4

    if-nez v2, :cond_7

    move-object/from16 v2, p0

    .line 3412
    iget-object v4, v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 3414
    invoke-static/range {p3 .. p3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v5

    .line 3416
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_6

    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v6, :cond_1

    goto/16 :goto_1

    .line 3418
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "playlist_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 3419
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v14, v5

    check-cast v14, [Ljava/lang/String;

    const-string v6, "smart_playlists"

    const/4 v5, 0x4

    .line 3421
    new-array v7, v5, [Ljava/lang/String;

    const-string v5, "play_count"

    aput-object v5, v7, v3

    const-string v5, "volume_name"

    const/4 v15, 0x1

    aput-object v5, v7, v15

    const-string v5, "relative_path"

    const/4 v12, 0x2

    aput-object v5, v7, v12

    const-string v5, "_display_name"

    const/4 v11, 0x3

    aput-object v5, v7, v11

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v5, v4

    move-object v8, v13

    move-object v9, v14

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 3431
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "play_count"

    .line 3432
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "volume_name"

    .line 3433
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "relative_path"

    .line 3434
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_display_name"

    .line 3435
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3440
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const-string v5, "smart_playlists"

    .line 3442
    invoke-virtual {v4, v5, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    .line 3444
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "audio_id"

    .line 3445
    aget-object v12, v14, v3

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "playlist_id"

    .line 3446
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v11, "play_count"

    add-int/2addr v6, v15

    .line 3447
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v10, v11, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "volume_name"

    .line 3448
    invoke-virtual {v10, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "relative_path"

    .line 3449
    invoke-virtual {v10, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_display_name"

    .line 3450
    invoke-virtual {v10, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "smart_playlists"

    const/4 v7, 0x5

    const/4 v8, 0x0

    .line 3451
    invoke-virtual {v4, v6, v8, v10, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    if-gtz v5, :cond_3

    const-wide/16 v9, 0x0

    cmp-long v5, v6, v9

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    return v3

    .line 3453
    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE audio_playlists SET members_count = (SELECT count(*) FROM smart_playlists WHERE playlist_id = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") ,  date_updated = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " WHERE _id IN ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3453
    invoke-virtual {v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 3460
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3461
    invoke-virtual/range {p3 .. p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v15

    :cond_4
    if-eqz v5, :cond_5

    .line 3437
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_5
    return v3

    :cond_6
    :goto_1
    return v3

    :cond_7
    move-object/from16 v2, p0

    return v3
.end method

.method private static validateAlbumValues(Landroid/content/ContentValues;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "artist"

    .line 3744
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "album"

    .line 3745
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "art_path"

    .line 3746
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static validateArtistValues(Landroid/content/ContentValues;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "artist"

    .line 3731
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "artist"

    .line 3732
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private validateExistingSmartPlaylist(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const-string v1, "smart_playlists"

    const/4 v0, 0x1

    .line 4301
    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "playlist_id"

    const/4 v8, 0x0

    aput-object v0, v2, v8

    const-string v3, "playlist_id IN (1000000001,1000000002,1000000003)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4308
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4311
    :cond_0
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x4

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x3

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    .line 4326
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE smart_playlists SET playlist_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " WHERE "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "playlist_id"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4330
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4332
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4335
    :cond_2
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->removeWrongSmartPlaylistInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V

    .line 4336
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->removeWrongSmartPlaylistInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V

    .line 4337
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->removeWrongSmartPlaylistInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V

    .line 4338
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->removeWrongSmartPlaylistInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3b9aca01
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private validateMediastoreInsertValuesAvailable(Landroid/content/ContentValues;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "path"

    .line 3798
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mediastore_id"

    .line 3799
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method private static validatePlaylistValues(Landroid/content/ContentValues;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "name"

    .line 3770
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "name"

    .line 3771
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private static validateTrackValues(Landroid/content/ContentValues;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "track_id"

    .line 3758
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private verifyPresentData(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 5088
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5089
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5090
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 5091
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 5093
    :try_start_1
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "playlists"

    .line 5094
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x2

    const/4 v11, 0x0

    .line 5097
    :try_start_2
    new-array v4, v3, [Ljava/lang/String;

    const-string v3, "path"

    const/4 v12, 0x0

    aput-object v3, v4, v12

    const-string v3, "mediastore_id"

    const/4 v13, 0x1

    aput-object v3, v4, v13

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, v10

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    .line 5099
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "path"

    .line 5100
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "mediastore_id"

    .line 5101
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 5103
    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5104
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 5108
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5115
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    const-string v4, "path"

    .line 5116
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mediastore_id"

    .line 5117
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5119
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 5120
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v3, v5, :cond_3

    const-string v3, "playlists"

    const-string v5, "mediastore_id =?"

    .line 5123
    new-array v6, v13, [Ljava/lang/String;

    .line 5125
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v12

    .line 5123
    invoke-virtual {v10, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 5129
    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "is_available"

    .line 5130
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5136
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5138
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5139
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 5140
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string v7, "path"

    .line 5141
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mediastore_id"

    .line 5142
    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 5143
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-ne v8, v3, :cond_6

    goto :goto_3

    :cond_7
    move-object v6, v11

    :goto_3
    if-nez v6, :cond_5

    .line 5155
    sget-boolean v4, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v4, :cond_8

    const-string v4, "playlists"

    const-string v5, "mediastore_id =?"

    .line 5156
    new-array v6, v13, [Ljava/lang/String;

    .line 5158
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v12

    .line 5156
    invoke-virtual {v10, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    const-string v4, "playlists"

    const-string v5, "mediastore_id =?"

    .line 5160
    new-array v6, v13, [Ljava/lang/String;

    .line 5161
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v12

    .line 5160
    invoke-virtual {v10, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 5165
    :cond_9
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 5167
    :try_start_5
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5169
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    :catchall_1
    move-exception p1

    move-object v2, v11

    :goto_4
    if-eqz v2, :cond_a

    .line 5108
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 5110
    :cond_a
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 5167
    :try_start_7
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 5168
    throw p1

    :catchall_3
    move-exception p1

    .line 5169
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12

    .line 2196
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 2200
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2204
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_e

    .line 2208
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_1

    .line 2209
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2213
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->bulkInsertPlaylistsInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    return p1

    .line 2219
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2220
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eq v4, v7, :cond_a

    const/16 v8, 0xc

    if-eq v4, v8, :cond_6

    packed-switch v4, :pswitch_data_1

    .line 2306
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bulk insert not implemented: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2261
    :pswitch_1
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2262
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v5

    if-eq v5, v2, :cond_3

    .line 2264
    invoke-direct {p0, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 2266
    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId([Landroid/content/ContentValues;I)V

    .line 2267
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2269
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 2267
    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 2270
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_1

    .line 2272
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    monitor-exit v4

    return p1

    :cond_3
    :goto_1
    if-lez v1, :cond_4

    .line 2277
    invoke-static {v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2278
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2280
    :cond_4
    monitor-exit v4

    return v1

    :catchall_0
    move-exception p1

    .line 2281
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 2257
    :pswitch_2
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not implemented support for insert of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 2247
    :pswitch_3
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2248
    :try_start_1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->bulkInsertPlaylist(Ljava/util/List;)I

    move-result p2

    if-lez p2, :cond_5

    .line 2250
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2252
    :cond_5
    monitor-exit p1

    return p2

    :catchall_1
    move-exception p2

    .line 2253
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    .line 2285
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 2286
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2288
    :try_start_2
    array-length v2, p2

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v4, v2, :cond_8

    aget-object v9, p2, v4

    const-string v10, "cloud_files"

    .line 2289
    invoke-virtual {p1, v10, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-lez v11, :cond_7

    add-int/lit8 v8, v8, 0x1

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    if-lez v8, :cond_9

    .line 2296
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x1

    goto :goto_3

    :cond_9
    move-object p2, v3

    .line 2298
    :goto_3
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2300
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    :catchall_2
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2301
    throw p2

    .line 2227
    :cond_a
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 2228
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2230
    :try_start_3
    array-length v2, p2

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_4
    if-ge v4, v2, :cond_c

    aget-object v7, p2, v4

    .line 2231
    invoke-static {v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateArtistValues(Landroid/content/ContentValues;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "artists"

    .line 2233
    invoke-virtual {p1, v9, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    cmp-long v7, v9, v5

    if-lez v7, :cond_b

    add-int/lit8 v8, v8, 0x1

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2239
    :cond_c
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2241
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object p2, v3

    :goto_5
    if-eqz v1, :cond_d

    if-lez v8, :cond_d

    if-eqz p2, :cond_d

    .line 2310
    invoke-virtual {v0, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_d
    return v8

    :catchall_3
    move-exception p2

    .line 2241
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2242
    throw p2

    .line 2206
    :cond_e
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->bulkInsertMediaInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    throw v3

    .line 2197
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unauthorized bulk insert attempt blocked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 327
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    .line 331
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "get_playback_uri_and_token"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "get_playback_uri"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "sync_playlists"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string v1, "sync"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_4
    const-string v1, "sync_mediastore_data"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :cond_0
    :goto_0
    const-wide/16 v7, 0x12c

    const/4 p1, 0x0

    packed-switch v0, :pswitch_data_0

    return-object p1

    .line 404
    :pswitch_0
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez p2, :cond_1

    return-object p1

    .line 405
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1e

    if-ne p2, p3, :cond_2

    .line 406
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isLegacyDataCopyCompleted(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 407
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncLegacyMediaData()V

    .line 409
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->callSyncMediaStoreAudio()V

    return-object p1

    .line 398
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 400
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2, v6, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->getPlaybackUriAndToken(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/sqlite/SQLiteDatabase;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 392
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 394
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2, v5, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->getPlaybackUriAndToken(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/sqlite/SQLiteDatabase;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 364
    :pswitch_3
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncHighResMediaLock:Ljava/lang/Object;

    monitor-enter p2

    .line 368
    :try_start_0
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 370
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-nez p3, :cond_5

    .line 372
    iget p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutiveHighResMediaSyncs:I

    add-int/2addr p3, v6

    iput p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutiveHighResMediaSyncs:I

    rem-int/lit8 p3, p3, 0xa

    if-nez p3, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_4

    .line 376
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 381
    :cond_4
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 384
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 387
    :cond_5
    :goto_1
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 388
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 333
    :pswitch_4
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncPlaylistsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 337
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 342
    iget v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutivePlaylistsSyncs:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutivePlaylistsSyncs:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-eqz v5, :cond_7

    .line 346
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 353
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v6, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 356
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    :cond_8
    :goto_2
    monitor-exit p2

    return-object p1

    :catchall_1
    move-exception p1

    .line 360
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 328
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unauthorized call attempt blocked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0xbb72e78 -> :sswitch_4
        0x361a9b -> :sswitch_3
        0x4d60883d -> :sswitch_2
        0x61303b91 -> :sswitch_1
        0x7a7e4e63 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    .line 2369
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v3, v4, :cond_24

    .line 2373
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2375
    invoke-direct/range {p0 .. p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->deleteMediaInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2378
    :cond_0
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v3, :cond_1

    .line 2379
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 2383
    :pswitch_0
    invoke-direct/range {p0 .. p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->deletePlaylistsInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2389
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2390
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    packed-switch v5, :pswitch_data_1

    .line 2661
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete: uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    const-string v0, "search_history"

    .line 2656
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    move-object v12, v2

    move-object v13, v4

    const/4 v15, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_8

    :pswitch_3
    const-string v0, "cloud_files"

    .line 2647
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    move-object v12, v2

    move-object v13, v4

    const/4 v15, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_8

    .line 2627
    :pswitch_4
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2630
    :try_start_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object/from16 v5, p2

    .line 2631
    invoke-static {v4, v5, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 2633
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2635
    :cond_2
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2637
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2638
    throw v0

    :pswitch_5
    move-object/from16 v5, p2

    .line 2541
    iget-object v15, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2542
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_e

    if-nez v2, :cond_e

    .line 2546
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    .line 2547
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_b

    .line 2549
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/members"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2553
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v6}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v6

    .line 2554
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2553
    invoke-static {v0, v6, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replaceUriParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2556
    invoke-static {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v10

    .line 2559
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-ne v5, v6, :cond_8

    iget-object v5, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    array-length v5, v5

    if-le v5, v12, :cond_8

    const/4 v5, 0x3

    .line 2561
    new-array v7, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v7, v13

    const-string v5, "audio_id"

    aput-object v5, v7, v12

    const-string v5, "play_order"

    aput-object v5, v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v16, "play_order DESC"

    move-object v5, v3

    move-object v6, v4

    move-object v14, v10

    move-object/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_3

    .line 2566
    monitor-exit v15

    return v13

    .line 2567
    :cond_3
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2568
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2569
    monitor-exit v15

    return v13

    .line 2572
    :cond_4
    iget-object v6, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    .line 2573
    iget-object v7, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    :goto_1
    const-string v9, "_id"

    .line 2576
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2577
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    const-string v9, "audio_id"

    .line 2578
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v14, "play_order"

    .line 2579
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2580
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    const-string v12, "audio_id = %d AND play_order = %d "

    new-array v13, v11, [Ljava/lang/Object;

    .line 2583
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v13, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v13, v10

    .line 2580
    invoke-static {v14, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2584
    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    .line 2586
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_7

    .line 2587
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    const/16 v19, 0x0

    .line 2589
    :goto_3
    array-length v7, v6

    if-ge v5, v7, :cond_9

    .line 2590
    aget-object v7, v6, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2591
    aget-object v7, v6, v5

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int v19, v19, v7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_1

    :cond_8
    move-object v14, v10

    .line 2595
    iget-object v5, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    :cond_9
    if-lez v19, :cond_a

    .line 2598
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "date_updated"

    .line 2599
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2600
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2602
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2603
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2605
    :cond_a
    monitor-exit v15

    return v19

    .line 2608
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v2

    const/4 v4, -0x5

    if-ne v5, v4, :cond_d

    const-string v4, "playlist_id = -5 AND audio_id = ? "

    .line 2612
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 2613
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "smart_playlists"

    .line 2614
    invoke-virtual {v5, v6, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_c

    .line 2616
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2617
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2619
    :cond_c
    monitor-exit v15

    return v2

    .line 2622
    :cond_d
    monitor-exit v15

    const/4 v0, 0x0

    return v0

    .line 2543
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 2623
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_6
    move-object/from16 v5, p2

    .line 2491
    iget-object v6, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2492
    :try_start_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    if-nez v2, :cond_13

    .line 2506
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    if-eq v2, v4, :cond_12

    .line 2510
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_10

    const-string v4, "_id = ?"

    const/4 v7, 0x1

    .line 2513
    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 2515
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v8, "playlists"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2518
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2519
    invoke-virtual {v2, v8, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_f

    .line 2521
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2523
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2521
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    .line 2524
    invoke-virtual {v3, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2526
    :cond_f
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2528
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-lez v13, :cond_11

    .line 2532
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2533
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 2528
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2529
    throw v0

    :cond_10
    const/4 v13, 0x0

    .line 2536
    :cond_11
    :goto_4
    monitor-exit v6

    return v13

    .line 2508
    :cond_12
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playlist uri not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2493
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 2537
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :pswitch_7
    move-object/from16 v5, p2

    .line 2458
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2459
    :try_start_5
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_16

    if-nez v2, :cond_16

    .line 2463
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v2

    const-string v5, "playlists"

    .line 2465
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    .line 2466
    iget-object v7, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 2468
    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 2469
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 2471
    :try_start_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2472
    invoke-virtual {v7, v5, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_14

    .line 2474
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 2475
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v5, v8, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2478
    :cond_14
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 2480
    :try_start_7
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-lez v2, :cond_15

    const/4 v5, 0x0

    .line 2483
    invoke-virtual {v3, v6, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2484
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2486
    :cond_15
    monitor-exit v4

    return v2

    :catchall_4
    move-exception v0

    .line 2480
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2481
    throw v0

    .line 2460
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    .line 2487
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :pswitch_8
    move-object/from16 v5, p2

    const-string v4, "tracks"

    .line 2446
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_17

    move-object v12, v2

    move-object v0, v4

    move-object v2, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_8

    .line 2450
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Delete: Track uri not supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    move-object/from16 v5, p2

    const-string v4, "albums"

    .line 2426
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_18

    goto :goto_5

    :cond_18
    const-string v2, "artist"

    .line 2430
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "album"

    .line 2431
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2432
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_19

    const-string v5, "album =? AND artist =?"

    .line 2438
    new-array v6, v11, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v2, v6, v0

    move-object v2, v6

    :goto_5
    const-string v14, "art_path"

    move-object v12, v2

    move-object v0, v4

    move-object v2, v5

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_8

    .line 2433
    :cond_19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Delete: Album uri not supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    move-object/from16 v5, p2

    const-string v4, "artists"

    .line 2402
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_1a

    move-object v0, v5

    goto :goto_7

    :cond_1a
    const-string v2, "name"

    .line 2406
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2407
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1b

    const-string v0, "artist =?"

    const/4 v5, 0x1

    goto :goto_6

    :cond_1b
    const-string v2, "id"

    .line 2410
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2411
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_23

    const-string v0, "_id =?"

    const/4 v5, 0x1

    .line 2418
    :goto_6
    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v6, v5

    move-object v2, v6

    :goto_7
    const-string v14, "art_path"

    move-object v12, v2

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v2, v0

    move-object v0, v4

    .line 2664
    :goto_8
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 2667
    :try_start_8
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    if-eqz v14, :cond_1f

    const/4 v4, 0x1

    .line 2673
    :try_start_9
    new-array v6, v4, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v14, v6, v16
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v17, 0x0

    move-object v4, v11

    move-object v5, v0

    move-object v7, v2

    move-object v8, v12

    move-object v1, v11

    move-object/from16 v11, v17

    :try_start_a
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v4, :cond_1d

    .line 2675
    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 2676
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2677
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    const/4 v7, 0x0

    :goto_9
    add-int/lit8 v8, v7, 0x1

    .line 2680
    new-instance v9, Ljava/io/File;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v9, v6, v7

    .line 2681
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-nez v7, :cond_1c

    move-object v14, v6

    goto :goto_a

    :cond_1c
    move v7, v8

    goto :goto_9

    :catchall_6
    move-exception v0

    goto :goto_c

    :cond_1d
    const/4 v14, 0x0

    :goto_a
    if-eqz v4, :cond_20

    .line 2685
    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_d

    :catchall_7
    move-exception v0

    goto :goto_b

    :catchall_8
    move-exception v0

    move-object v1, v11

    :goto_b
    const/4 v4, 0x0

    :goto_c
    if-eqz v4, :cond_1e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2687
    :cond_1e
    throw v0

    :cond_1f
    move-object v1, v11

    const/16 v16, 0x0

    const/4 v14, 0x0

    .line 2689
    :cond_20
    :goto_d
    invoke-virtual {v1, v0, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_22

    if-eqz v14, :cond_21

    .line 2693
    array-length v2, v14

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v2, :cond_21

    aget-object v5, v14, v4

    .line 2694
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_21
    if-eqz v15, :cond_22

    if-eqz v13, :cond_22

    const/4 v2, 0x0

    .line 2701
    invoke-virtual {v3, v13, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2704
    :cond_22
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 2706
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_9
    move-exception v0

    goto :goto_f

    :catchall_a
    move-exception v0

    move-object v1, v11

    :goto_f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2707
    throw v0

    .line 2414
    :cond_23
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete: Artist uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2370
    :cond_24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unauthorized delete attempt blocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    .line 1736
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v3, v4, :cond_23

    .line 1740
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v3, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1742
    invoke-direct/range {p0 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->insertMediaInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1745
    :cond_0
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v3, :cond_1

    .line 1746
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1750
    :pswitch_0
    invoke-direct/range {p0 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->insertPlaylistsInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1757
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1758
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    packed-switch v5, :pswitch_data_1

    .line 1994
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert not supported for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1982
    :pswitch_2
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "search_history"

    .line 1983
    invoke-virtual {v4, v5, v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_21

    .line 1986
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x1

    goto/16 :goto_e

    .line 1970
    :pswitch_3
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "cloud_files"

    .line 1971
    invoke-virtual {v4, v5, v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_21

    .line 1974
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x1

    goto/16 :goto_e

    :pswitch_4
    if-eqz v0, :cond_21

    const-string v5, "name"

    .line 1918
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "service_id"

    .line 1919
    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v5, :cond_8

    if-eqz v8, :cond_8

    .line 1922
    iget-object v13, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 1925
    :try_start_0
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v16, "name=? AND service_id=?"

    .line 1930
    new-array v6, v6, [Ljava/lang/String;

    aput-object v5, v6, v7

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v9

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v14, v13

    move-object/from16 v17, v6

    .line 1932
    invoke-static/range {v14 .. v19}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_2

    .line 1934
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "_id"

    .line 1935
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1936
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v12, v5

    goto :goto_4

    :cond_2
    const/4 v6, -0x1

    :goto_1
    if-eqz v5, :cond_3

    .line 1940
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eq v6, v4, :cond_5

    const-string v4, "_id=?"

    .line 1947
    new-array v5, v9, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 1949
    invoke-static {v13, v0, v4, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    int-to-long v4, v6

    goto :goto_2

    :cond_4
    move-wide v4, v10

    goto :goto_2

    .line 1953
    :cond_5
    invoke-static {v13, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v4

    :goto_2
    cmp-long v0, v4, v10

    if-lez v0, :cond_6

    .line 1957
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x1

    goto :goto_3

    :cond_6
    move-object v0, v12

    .line 1960
    :goto_3
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1962
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v12, :cond_7

    .line 1940
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1942
    :cond_7
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 1962
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1963
    throw v0

    :cond_8
    move-object v0, v12

    goto/16 :goto_e

    .line 1838
    :pswitch_5
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1840
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v13

    .line 1839
    invoke-direct {v1, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v13

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    .line 1840
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v13, v4, :cond_a

    .line 1842
    invoke-direct {v1, v0, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId(Landroid/content/ContentValues;I)V

    const-string v4, "external"

    int-to-long v6, v13

    .line 1844
    invoke-static {v4, v6, v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1845
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1848
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1849
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1851
    :cond_9
    monitor-exit v5

    return-object v0

    .line 1853
    :cond_a
    sget-boolean v14, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v14, :cond_b

    monitor-exit v5

    return-object v12

    :cond_b
    const/4 v14, -0x3

    if-eq v13, v14, :cond_19

    if-ne v13, v4, :cond_c

    goto/16 :goto_b

    :cond_c
    const/4 v4, -0x4

    if-eq v13, v4, :cond_d

    if-ne v13, v14, :cond_e

    :cond_d
    const/4 v13, -0x7

    .line 1862
    :cond_e
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1863
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "audio_id"

    .line 1864
    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v8, v10

    if-gtz v0, :cond_f

    .line 1866
    monitor-exit v5

    return-object v12

    :cond_f
    const-string v0, "audio_id"

    .line 1868
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "playlist_id"

    .line 1869
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "external"

    .line 1874
    invoke-static {v0, v8, v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1876
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v8, "_id"

    aput-object v8, v0, v7

    const-string v7, "volume_name"

    const/4 v8, 0x1

    aput-object v7, v0, v8

    const-string v7, "relative_path"

    aput-object v7, v0, v6

    const/4 v6, 0x3

    const-string v7, "_display_name"

    aput-object v7, v0, v6

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v6, :cond_11

    if-eqz v6, :cond_10

    .line 1892
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_10
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    return-object v12

    .line 1883
    :cond_11
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "volume_name"

    .line 1884
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    const-string v0, "relative_path"

    .line 1885
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    const-string v0, "_display_name"

    .line 1886
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v8, v12

    goto :goto_7

    :cond_12
    move-object v0, v12

    move-object v7, v0

    move-object v8, v7

    :goto_5
    if-eqz v6, :cond_14

    .line 1892
    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v7, v12

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v6, v12

    move-object v7, v6

    :goto_6
    move-object v8, v7

    .line 1889
    :goto_7
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v6, :cond_13

    .line 1892
    :try_start_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_13
    move-object v0, v12

    .line 1896
    :cond_14
    :goto_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_17

    .line 1897
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_15

    goto :goto_9

    :cond_15
    const-string v6, "volume_name"

    .line 1901
    invoke-virtual {v14, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "relative_path"

    .line 1902
    invoke-virtual {v14, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_display_name"

    .line 1903
    invoke-virtual {v14, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "smart_playlists"

    const/4 v6, 0x5

    .line 1904
    invoke-virtual {v4, v0, v12, v14, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_16

    .line 1906
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1907
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1908
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 1912
    :cond_16
    monitor-exit v5

    return-object v12

    .line 1898
    :cond_17
    :goto_9
    monitor-exit v5

    return-object v12

    :catchall_4
    move-exception v0

    move-object v12, v6

    :goto_a
    if-eqz v12, :cond_18

    .line 1892
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1894
    :cond_18
    throw v0

    .line 1855
    :cond_19
    :goto_b
    monitor-exit v5

    return-object v12

    :catchall_5
    move-exception v0

    .line 1913
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    .line 1834
    :pswitch_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not implemented support for insert of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1801
    :pswitch_7
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1802
    :try_start_e
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validatePlaylistValues(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 1803
    invoke-direct {v1, v3, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->createMediaStorePlaylistOrGetInfo(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z

    move-result v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v5, :cond_1d

    .line 1806
    :try_start_f
    invoke-direct {v1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateMediastoreInsertValuesAvailable(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1810
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1811
    :try_start_10
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v6, "playlists"

    const/4 v7, 0x5

    .line 1812
    invoke-virtual {v5, v6, v12, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_1a

    .line 1816
    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1818
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1819
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v12, v0

    .line 1821
    :cond_1a
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v5, :cond_1d

    .line 1824
    :try_start_11
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_d

    :catchall_6
    move-exception v0

    goto :goto_c

    .line 1807
    :cond_1b
    :try_start_12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Incorrect columns available."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :catchall_7
    move-exception v0

    move-object v5, v12

    :goto_c
    if-eqz v5, :cond_1c

    .line 1824
    :try_start_13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1826
    :cond_1c
    throw v0

    .line 1829
    :cond_1d
    :goto_d
    monitor-exit v4

    return-object v12

    :catchall_8
    move-exception v0

    .line 1830
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v0

    .line 1789
    :pswitch_8
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateTrackValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1790
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "tracks"

    const/4 v6, 0x5

    .line 1791
    invoke-virtual {v4, v5, v12, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_1e

    .line 1794
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_e

    :cond_1e
    move-object v0, v12

    goto :goto_e

    .line 1777
    :pswitch_9
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateAlbumValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1778
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "albums"

    const/4 v6, 0x5

    .line 1779
    invoke-virtual {v4, v5, v12, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_1f

    .line 1782
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_e

    :cond_1f
    move-object v0, v12

    goto :goto_e

    .line 1764
    :pswitch_a
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateArtistValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1765
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "artists"

    const/4 v6, 0x5

    .line 1766
    invoke-virtual {v4, v5, v12, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_20

    .line 1770
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_e

    :cond_20
    move-object v0, v12

    goto :goto_e

    :cond_21
    move-object v0, v12

    :goto_e
    if-eqz v7, :cond_22

    if-eqz v0, :cond_22

    .line 1998
    invoke-virtual {v3, v0, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_22
    return-object v0

    .line 1737
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unauthorized insert attempt blocked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_1
        :pswitch_1
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isMediaStoreGenerationChanged()Z
    .locals 8

    .line 1679
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1680
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "external"

    invoke-static {v0, v2}, Landroid/provider/MediaStore;->getGeneration(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 1681
    sget-wide v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 1682
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getGenerationCode(Landroid/content/Context;)J

    move-result-wide v4

    sput-wide v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    .line 1684
    :cond_1
    sget-wide v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 1685
    :cond_2
    sput-wide v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    return v1
.end method

.method public isMediaStoreVersionChanged()Z
    .locals 2

    .line 1668
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1669
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1670
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1671
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getMediaVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    .line 1673
    :cond_1
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1674
    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    return v1
.end method

.method public onCreate()Z
    .locals 2

    .line 311
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 3640
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 3646
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const-string v0, "1"

    const-string v1, "query_album_art"

    .line 3706
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3709
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3710
    invoke-static {p1, v0, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->getAlbumArtFileDescriptor(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 3715
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "openFile: not supported uri"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3682
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "force"

    const-string v4, "true"

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 3683
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    const-string p1, "art_path"

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 3682
    invoke-virtual/range {v4 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 3686
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "art_path"

    .line 3688
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3687
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3690
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3691
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3692
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderUtils;->parseFileMode(Ljava/lang/String;)I

    move-result p2

    .line 3693
    invoke-static {v1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz p1, :cond_6

    .line 3699
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3701
    :cond_3
    throw p2

    :cond_4
    const-string v0, "name"

    .line 3650
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3651
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3657
    :try_start_2
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Artists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    const-string p1, "art_path"

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-eqz p1, :cond_5

    .line 3660
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "art_path"

    .line 3662
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3661
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3664
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3666
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderUtils;->parseFileMode(Ljava/lang/String;)I

    move-result p2

    .line 3667
    invoke-static {v1, p2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v3, p2

    goto :goto_2

    :catchall_2
    move-exception p2

    goto :goto_4

    :cond_5
    :goto_2
    if-eqz p1, :cond_6

    .line 3673
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    return-object v3

    .line 3720
    :cond_7
    new-instance p1, Ljava/io/FileNotFoundException;

    const-string p2, "openfile: File not found"

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3
    move-exception p2

    move-object p1, v3

    :goto_4
    if-eqz p1, :cond_8

    .line 3673
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3675
    :cond_8
    throw p2

    .line 3652
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "openFile: is not supported for artist uri with undefined artist name"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3641
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unauthorized open file attempt blocked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    .line 1706
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1708
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryMediaInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 1710
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_1

    .line 1711
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1715
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryPlaylistsInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 1722
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v11, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 697
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_27

    .line 701
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 702
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v8, 0x0

    if-eq v1, v4, :cond_1

    .line 704
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v1, :cond_0

    return-object v3

    .line 706
    :cond_0
    invoke-static {v5, v6, v7, v8}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    .line 707
    invoke-direct {v10, v0, v11, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryMediaInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_1
    if-eq v2, v4, :cond_26

    .line 711
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v1, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 716
    :pswitch_0
    invoke-static {v5, v6, v7, v8}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    .line 717
    invoke-direct {v10, v0, v11, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryPlaylistsInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 724
    :cond_2
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 725
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 727
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v14, 0x0

    .line 732
    iget-object v9, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/4 v15, 0x1

    packed-switch v2, :pswitch_data_1

    .line 1007
    :pswitch_1
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " Not supported"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_2
    const-string v1, "search_history"

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    move-object v6, v8

    move-object/from16 v7, p5

    .line 997
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1000
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1001
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 1000
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3
    return-object v0

    :pswitch_3
    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v8

    move-object/from16 v6, p5

    move-object v7, v9

    .line 985
    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->queryAccountParentFiles(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 989
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 990
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 989
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_4
    return-object v0

    :pswitch_4
    const-string v1, "cloud_files"

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, v9

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v12

    move-object v6, v8

    move-object/from16 v7, p5

    .line 975
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 978
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 979
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 978
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_5
    return-object v0

    :pswitch_5
    const/4 v4, 0x0

    move-object v0, v9

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    .line 965
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 968
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 969
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 968
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_6
    return-object v0

    .line 960
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v1 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->query(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 897
    :pswitch_7
    iget-object v14, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v14

    .line 898
    :try_start_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    if-nez v6, :cond_f

    .line 905
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v1

    .line 904
    invoke-direct {v10, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 905
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v4, :cond_8

    .line 914
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const-string v2, "external"

    int-to-long v3, v1

    .line 916
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 918
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v2, p2

    move-object/from16 v5, p5

    .line 919
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 922
    invoke-interface {v0, v13, v12}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 955
    :cond_7
    monitor-exit v14

    return-object v0

    .line 926
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const/4 v2, -0x3

    if-eq v1, v2, :cond_a

    const/4 v4, -0x4

    if-ne v1, v4, :cond_9

    goto :goto_1

    :cond_9
    move v4, v1

    goto :goto_2

    :cond_a
    :goto_1
    const/4 v4, -0x7

    .line 932
    :goto_2
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 933
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    const-string v0, "play_order DESC"

    if-nez v5, :cond_b

    .line 936
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playlist_id = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 938
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " AND playlist_id = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-ne v1, v2, :cond_c

    const-string v0, "play_count DESC, play_order DESC"

    move-object v7, v0

    goto :goto_4

    :cond_c
    move-object v7, v0

    :goto_4
    const-string v2, "smart_playlists_map"

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v0, -0x5

    if-ne v1, v0, :cond_d

    move-object v15, v3

    goto :goto_5

    :cond_d
    const-string v0, "50"

    move-object v15, v0

    :goto_5
    move-object v0, v9

    move-object v1, v2

    move-object/from16 v2, p2

    move-object v3, v4

    move-object v4, v6

    move-object v6, v8

    move-object v8, v15

    .line 946
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 950
    invoke-interface {v0, v13, v12}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 952
    :cond_e
    monitor-exit v14

    return-object v0

    .line 899
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 956
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 866
    :pswitch_8
    iget-object v14, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v14

    .line 867
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez v6, :cond_12

    .line 879
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    if-eq v2, v4, :cond_11

    const-string v3, "_id = ?"

    .line 884
    new-array v4, v15, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v8

    const-string v0, "playlists"

    .line 886
    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v7, p5

    .line 887
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 890
    invoke-interface {v0, v13, v12}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 892
    :cond_10
    monitor-exit v14

    return-object v0

    .line 881
    :cond_11
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Playlist uri not supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 868
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 893
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 846
    :pswitch_9
    iget-object v14, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v14

    .line 847
    :try_start_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-nez v6, :cond_14

    .line 851
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const-string v2, "playlists"

    .line 852
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 854
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 855
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, v9

    move-object/from16 v2, p2

    move-object/from16 v7, p5

    .line 857
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 859
    invoke-interface {v0, v13, v12}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 861
    :cond_13
    monitor-exit v14

    return-object v0

    .line 848
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 862
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_a
    const-string v2, "tracks"

    .line 761
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 762
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v2, v5

    move-object v3, v6

    goto :goto_6

    :cond_15
    const-string v2, "id"

    .line 766
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "track_id =?"

    .line 774
    new-array v3, v15, [Ljava/lang/String;

    aput-object v0, v3, v8

    .line 776
    :goto_6
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "_id"

    goto :goto_7

    :cond_16
    move-object v0, v7

    :goto_7
    move-object v7, v0

    move-object v4, v3

    move-object v3, v2

    goto/16 :goto_f

    .line 770
    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "query for track uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 783
    :pswitch_b
    iget-object v1, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v16

    .line 785
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_18

    move-object v15, v5

    move-object/from16 v17, v6

    goto :goto_8

    :cond_18
    const-string v1, "artist"

    .line 789
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "album"

    .line 790
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 791
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    const-string v3, "album =? AND artist =?"

    const/4 v4, 0x2

    .line 797
    new-array v4, v4, [Ljava/lang/String;

    aput-object v2, v4, v8

    aput-object v1, v4, v15

    move-object v15, v3

    move-object/from16 v17, v4

    .line 799
    :goto_8
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    const-string v1, "_id"

    move-object/from16 v18, v1

    goto :goto_9

    :cond_19
    move-object/from16 v18, v7

    :goto_9
    const-string v2, "albums"

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, v16

    move-object/from16 v3, p2

    move-object v4, v15

    move-object/from16 v5, v17

    move-object/from16 v8, v18

    .line 801
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 804
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1a

    .line 805
    invoke-interface {v1, v13, v12}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    :cond_1a
    const-string v2, "force"

    .line 807
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz v1, :cond_1b

    .line 810
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 813
    :cond_1b
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_3
    const-string v1, "artist"

    .line 816
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v1, "album"

    .line 817
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object v4, v15

    move-object/from16 v5, v17

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object v9, v0

    .line 819
    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->extractAndSaveEmbeddedAlbumArt(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 821
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/database/Cursor;

    .line 823
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 824
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    move-object v1, v2

    goto :goto_a

    :cond_1c
    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p2

    move-object v4, v15

    move-object/from16 v5, v17

    move-object v6, v14

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object v9, v0

    .line 826
    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->extractAndSaveAlbumArtFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 828
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    .line 830
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 831
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 835
    :cond_1d
    :goto_a
    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_b

    :catchall_3
    move-exception v0

    invoke-virtual/range {v16 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 836
    throw v0

    :cond_1e
    :goto_b
    if-eqz v1, :cond_1f

    .line 840
    invoke-interface {v1, v13, v12}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1f
    return-object v1

    .line 792
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Album uri not supported, both artist and album is undefined"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_c
    const-string v2, "artists"

    .line 736
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 737
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_21

    move-object v0, v5

    move-object v3, v6

    goto :goto_d

    :cond_21
    const-string v2, "name"

    .line 741
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 742
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    const-string v0, "artist =?"

    goto :goto_c

    :cond_22
    const-string v2, "id"

    .line 745
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 746
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string v0, "_id =?"

    .line 754
    :goto_c
    new-array v3, v15, [Ljava/lang/String;

    aput-object v2, v3, v8

    .line 756
    :goto_d
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    const-string v2, "_id"

    goto :goto_e

    :cond_23
    move-object v2, v7

    :goto_e
    move-object v7, v2

    move-object v4, v3

    move-object v3, v0

    :goto_f
    const/4 v6, 0x0

    const/4 v5, 0x0

    move-object v0, v1

    move-object v1, v9

    move-object/from16 v2, p2

    .line 1010
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 1012
    invoke-interface {v0, v13, v12}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_24
    return-object v0

    .line 749
    :cond_25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "query for artist uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " query URI not supported"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unauthorized query attempt blocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_1
        :pswitch_1
        :pswitch_b
        :pswitch_a
        :pswitch_1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method syncHighResMedia()V
    .locals 2

    .line 4883
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->sync(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;)V

    return-void
.end method

.method syncPlaylistsWithMediaStore(Landroid/os/Bundle;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3811
    iget-object v3, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3812
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3814
    invoke-static {v4}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3822
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3823
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3828
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v8, -0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    .line 3830
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "Music_favorites"

    .line 3829
    invoke-static {v0, v11}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistId(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 3833
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "name"

    const-string v13, "Music_favorites"

    .line 3834
    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "path"

    .line 3835
    sget-object v13, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v13}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "mediastore_id"

    .line 3836
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "smart_playlist_type"

    .line 3837
    sget-object v13, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v13}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "is_available"

    .line 3838
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "members_count"

    if-lez v0, :cond_0

    .line 3842
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 3841
    invoke-static {v13, v0}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistTracksCount(Landroid/content/ContentResolver;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3840
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3839
    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3843
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3846
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "name"

    const-string v12, "Music_recently_played_tracks"

    .line 3847
    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "path"

    .line 3848
    sget-object v12, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v12}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "mediastore_id"

    const/4 v12, -0x4

    .line 3849
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "smart_playlist_type"

    .line 3850
    sget-object v12, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v12}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "is_available"

    .line 3851
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "members_count"

    .line 3852
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3853
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3856
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "name"

    const-string v12, "Music_most_played_tracks"

    .line 3857
    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "path"

    .line 3858
    sget-object v12, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v12}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "mediastore_id"

    const/4 v12, -0x3

    .line 3859
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "smart_playlist_type"

    .line 3860
    sget-object v12, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v12}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "is_available"

    .line 3861
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "members_count"

    .line 3862
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3863
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3868
    :cond_1
    invoke-static {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->createSmartPlaylists(Landroid/content/Context;)V

    .line 3871
    :goto_1
    invoke-static {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->deleteSensMePlaylists(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3876
    :try_start_1
    invoke-static {v4}, Lcom/sonyericsson/music/common/DBUtils;->getLocalMediaStorePlaylists(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v11, :cond_e

    .line 3877
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "name"

    .line 3878
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v0, "_id"

    .line 3879
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "_data"

    .line 3881
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "date_added"

    .line 3883
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v0, "date_modified"

    .line 3885
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const/16 v16, -0x1

    const/16 v17, -0x1

    .line 3887
    :goto_2
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3888
    sget-boolean v18, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v18, :cond_2

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->removeSmartPlaylistDuplicate(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3889
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "name"

    .line 3890
    invoke-virtual {v13, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3891
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v21, v5

    move/from16 v22, v8

    move/from16 v20, v14

    const/4 v10, -0x1

    goto/16 :goto_a

    .line 3895
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 3897
    sget-boolean v10, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v10, :cond_8

    .line 3898
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v13, -0x4c4ae7e9

    if-eq v10, v13, :cond_5

    const v13, -0x48c9c3ce

    if-eq v10, v13, :cond_4

    const v13, 0x5f5e609d

    if-eq v10, v13, :cond_3

    goto :goto_3

    :cond_3
    const-string v10, "Music_favorites"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_4

    :cond_4
    const-string v10, "Music_most_played_tracks"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    goto :goto_4

    :cond_5
    const-string v10, "Music_recently_played_tracks"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v10, :cond_6

    const/4 v10, 0x2

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v10, -0x1

    :goto_4
    packed-switch v10, :pswitch_data_0

    move/from16 v20, v14

    goto :goto_7

    .line 3907
    :pswitch_0
    :try_start_3
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_7

    .line 3909
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v13, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v20, v14

    :try_start_4
    const-string v14, "_id = ?"

    new-array v2, v9, [Ljava/lang/String;

    .line 3912
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v19, 0x0

    aput-object v0, v2, v19

    .line 3909
    invoke-virtual {v10, v13, v14, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_7
    move/from16 v20, v14

    :goto_5
    move/from16 v21, v5

    move/from16 v22, v8

    const/4 v10, -0x1

    goto/16 :goto_a

    :catch_1
    move-exception v0

    move/from16 v20, v14

    .line 3915
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move/from16 v21, v5

    move/from16 v22, v8

    const/4 v10, -0x1

    goto/16 :goto_a

    :pswitch_1
    move/from16 v20, v14

    .line 3903
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v17, v0

    move/from16 v21, v5

    move/from16 v22, v8

    const/4 v10, -0x1

    goto/16 :goto_a

    :pswitch_2
    move/from16 v20, v14

    .line 3900
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v16, v0

    move/from16 v21, v5

    move/from16 v22, v8

    const/4 v10, -0x1

    goto/16 :goto_a

    :cond_8
    move/from16 v20, v14

    .line 3921
    :goto_7
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v10, -0x1

    if-le v2, v10, :cond_b

    .line 3926
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3928
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Ljava/lang/String;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v13

    .line 3929
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 3930
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v21, v5

    .line 3932
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move/from16 v22, v8

    const-string v8, "name"

    .line 3933
    invoke-virtual {v5, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "path"

    .line 3934
    invoke-virtual {v5, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mediastore_id"

    .line 3937
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "smart_playlist_type"

    if-eqz v13, :cond_9

    .line 3939
    invoke-virtual {v13}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 3940
    :cond_9
    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_NONE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    .line 3941
    invoke-virtual {v8}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->getId()I

    move-result v8

    .line 3940
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 3938
    :goto_8
    invoke-virtual {v5, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "date_created"

    .line 3942
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "date_updated"

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    .line 3944
    :goto_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 3943
    invoke-virtual {v5, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "is_available"

    const/4 v8, 0x1

    .line 3945
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "members_count"

    .line 3946
    invoke-direct {v1, v2, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getPlaylistTracksCount(ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3949
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_b
    move/from16 v21, v5

    move/from16 v22, v8

    goto :goto_a

    :cond_c
    move/from16 v21, v5

    move/from16 v22, v8

    move/from16 v20, v14

    const/4 v10, -0x1

    .line 3952
    :goto_a
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_d

    move/from16 v10, v16

    move/from16 v0, v17

    goto :goto_b

    :cond_d
    move/from16 v14, v20

    move/from16 v5, v21

    move/from16 v8, v22

    move-object/from16 v2, p1

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_e
    const/4 v10, -0x1

    const/4 v0, -0x1

    :goto_b
    if-eqz v11, :cond_f

    .line 3957
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3964
    :cond_f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "name"

    const-string v8, "Music_newly_added_tracks"

    .line 3965
    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "path"

    .line 3966
    sget-object v8, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 3967
    invoke-virtual {v8}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3966
    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mediastore_id"

    const/4 v8, -0x2

    .line 3968
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "smart_playlist_type"

    .line 3969
    sget-object v9, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 3970
    invoke-virtual {v9}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3969
    invoke-virtual {v2, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "is_available"

    const/4 v9, 0x1

    .line 3971
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "members_count"

    .line 3972
    sget-object v9, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {v1, v8, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getPlaylistTracksCount(ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3974
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3977
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 3978
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "name IN ("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3979
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 3980
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_c
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string v11, "?, "

    .line 3981
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3982
    invoke-interface {v7, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    const-string v12, "name"

    .line 3983
    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v11

    goto :goto_c

    .line 3985
    :cond_10
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3986
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    const/4 v12, 0x2

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-virtual {v2, v12, v11}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3985
    invoke-virtual {v7, v8, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_d

    :cond_11
    const/4 v12, 0x0

    .line 3992
    :goto_d
    invoke-direct {v1, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->verifyPresentData(Ljava/util/List;)V

    .line 3995
    invoke-direct {v1, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->bulkInsertPlaylist(Ljava/util/List;)I

    .line 3998
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v2, :cond_14

    if-lez v10, :cond_12

    const/4 v2, -0x5

    .line 4000
    invoke-direct {v1, v4, v10, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncSmartPlaylistToLocalDb(Landroid/content/Context;II)V

    :cond_12
    if-lez v0, :cond_13

    const/4 v2, -0x7

    .line 4003
    invoke-direct {v1, v4, v0, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncSmartPlaylistToLocalDb(Landroid/content/Context;II)V

    .line 4008
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->checkUpdateSmartPlaylistColumns()V

    move-object/from16 v2, p1

    goto :goto_e

    :cond_14
    move-object/from16 v2, p1

    :goto_e
    if-eqz v2, :cond_15

    const-string v0, "delay_art_refresh"

    .line 4014
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_f

    :cond_15
    const/4 v10, 0x0

    :goto_f
    if-nez v10, :cond_16

    .line 4018
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mRefreshPlaylistArtRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_11

    .line 4020
    :cond_16
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mRefreshPlaylistArtRunnable:Ljava/lang/Runnable;

    int-to-long v5, v10

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_11

    :catchall_1
    move-exception v0

    const/4 v11, 0x0

    :goto_10
    if-eqz v11, :cond_17

    .line 3957
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3959
    :cond_17
    throw v0

    .line 4030
    :cond_18
    :goto_11
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4032
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4033
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v2

    .line 4032
    invoke-virtual {v0, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 4034
    monitor-exit v3

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 2854
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-ne v5, v6, :cond_2d

    .line 2858
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 2860
    invoke-direct/range {p0 .. p4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateMediaInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2862
    :cond_0
    sget-boolean v5, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v5, :cond_1

    .line 2863
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 2867
    :pswitch_0
    invoke-direct/range {p0 .. p4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updatePlaylistsInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2873
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 2875
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 2876
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v7, 0x2

    const/4 v14, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    packed-switch v5, :pswitch_data_1

    .line 3218
    :pswitch_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update: uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " not supported"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_2
    const-string v0, "search_history"

    move-object v5, v2

    move-object v6, v3

    move-object v9, v14

    move-object v3, v0

    goto/16 :goto_10

    .line 3190
    :pswitch_3
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->parseAccountAndParent(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 3195
    new-array v0, v7, [Ljava/lang/String;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    aput-object v6, v0, v16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v13

    const-string v5, "account_id = ? AND parents LIKE ?"

    .line 3198
    invoke-static {v2, v3, v5, v0}, Lcom/sonyericsson/music/common/DBUtils;->appendSelection(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    const-string v2, "cloud_files"

    .line 3205
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 3206
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    move-object v5, v3

    move-object v9, v14

    move-object v3, v2

    goto/16 :goto_10

    .line 3192
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal uri for account and parent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_4
    const-string v0, "cloud_files"

    move-object v5, v2

    move-object v6, v3

    move-object v9, v14

    move-object v3, v0

    goto/16 :goto_10

    .line 3165
    :pswitch_5
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 3168
    :try_start_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3169
    invoke-static {v5, v4, v2, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 3172
    invoke-virtual {v15, v8, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3174
    :cond_3
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3176
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3177
    throw v0

    .line 3056
    :pswitch_6
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v5

    .line 3057
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-nez v3, :cond_13

    .line 3064
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    .line 3063
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 3064
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v6, :cond_7

    const-string v3, "from"

    .line 3066
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "to"

    .line 3067
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3068
    sget-object v7, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3069
    invoke-virtual {v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v7

    .line 3070
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 3068
    invoke-static {v0, v7, v8}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replaceUriParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 3072
    invoke-direct {v1, v4, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId(Landroid/content/ContentValues;I)V

    .line 3074
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 3075
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3076
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 3077
    sget-boolean v6, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v6, :cond_4

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    :cond_4
    int-to-long v6, v2

    .line 3083
    invoke-static {v15, v6, v7, v3, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->moveItem(Landroid/content/ContentResolver;JII)Z

    move-result v2

    goto :goto_1

    :cond_5
    const-string v3, "external"

    int-to-long v8, v2

    .line 3086
    invoke-static {v3, v8, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 3090
    invoke-static {v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v3

    .line 3092
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 3093
    invoke-virtual {v15, v2, v4, v6, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :goto_1
    if-lez v2, :cond_6

    .line 3157
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3158
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3160
    :cond_6
    monitor-exit v5

    return v2

    :cond_7
    const/4 v3, -0x3

    if-eq v2, v3, :cond_9

    const/4 v4, -0x4

    if-ne v2, v4, :cond_8

    goto :goto_2

    .line 3152
    :cond_8
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not supported operation on uri: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    :goto_2
    if-ne v2, v3, :cond_a

    .line 3098
    monitor-exit v5

    return v16

    .line 3099
    :cond_a
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v2, :cond_b

    monitor-exit v5

    return v16

    .line 3101
    :cond_b
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, -0x7

    .line 3104
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 3107
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_12

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v6, :cond_c

    goto/16 :goto_4

    .line 3109
    :cond_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "playlist_id"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3110
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    const-string v18, "smart_playlists"

    const/4 v8, 0x4

    .line 3112
    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "play_count"

    aput-object v9, v8, v16

    const-string v9, "volume_name"

    aput-object v9, v8, v13

    const-string v9, "relative_path"

    aput-object v9, v8, v7

    const/4 v7, 0x3

    const-string v9, "_display_name"

    aput-object v9, v8, v7

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v2

    move-object/from16 v19, v8

    move-object/from16 v20, v6

    move-object/from16 v21, v4

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 3122
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_10

    const-string v8, "play_count"

    .line 3123
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "volume_name"

    .line 3124
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "relative_path"

    .line 3125
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "_display_name"

    .line 3126
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v7, :cond_d

    .line 3132
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d
    const-string v7, "smart_playlists"

    .line 3135
    invoke-virtual {v2, v7, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 3137
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "audio_id"

    .line 3138
    aget-object v4, v4, v16

    invoke-virtual {v7, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "playlist_id"

    .line 3139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "play_count"

    add-int/2addr v8, v13

    .line 3140
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "volume_name"

    .line 3141
    invoke-virtual {v7, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "relative_path"

    .line 3142
    invoke-virtual {v7, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_display_name"

    .line 3143
    invoke-virtual {v7, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "smart_playlists"

    const/4 v4, 0x5

    .line 3144
    invoke-virtual {v2, v3, v14, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    if-gtz v6, :cond_f

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_e

    goto :goto_3

    .line 3150
    :cond_e
    monitor-exit v5

    return v16

    .line 3146
    :cond_f
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3147
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3148
    monitor-exit v5

    return v13

    :cond_10
    if-eqz v7, :cond_11

    .line 3128
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3129
    :cond_11
    monitor-exit v5

    return v16

    .line 3107
    :cond_12
    :goto_4
    monitor-exit v5

    return v16

    .line 3058
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 3161
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2982
    :pswitch_7
    iget-object v7, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2983
    :try_start_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1e

    if-nez v3, :cond_1e

    .line 2988
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    if-eq v2, v6, :cond_1d

    if-eqz v4, :cond_14

    .line 2994
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-ne v0, v13, :cond_14

    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_HIDDEN:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2995
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_5

    :cond_14
    const/4 v0, 0x0

    :goto_5
    if-nez v0, :cond_1a

    .line 3005
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3006
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_19

    .line 3007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = ?"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3009
    new-array v5, v13, [Ljava/lang/String;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v16

    .line 3010
    invoke-direct {v1, v15, v4, v3, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updatePlaylistInMediaStore(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ne v3, v13, :cond_18

    .line 3011
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 3012
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3011
    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 3015
    :try_start_3
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3016
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v0

    .line 3017
    new-array v11, v13, [Ljava/lang/String;

    aput-object v0, v11, v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v9, v15

    const/4 v6, 0x1

    move-object v13, v3

    move-object v3, v14

    move-object v14, v5

    :try_start_4
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v14, :cond_15

    .line 3019
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 3020
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3021
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3022
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v15, v5, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_7

    :cond_15
    move-object v0, v3

    :goto_6
    if-eqz v14, :cond_16

    .line 3026
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_16
    if-eqz v0, :cond_1b

    .line 3033
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v14, v3

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v3, v14

    :goto_7
    if-eqz v14, :cond_17

    .line 3026
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3028
    :cond_17
    throw v0

    :cond_18
    move-object v3, v14

    const/4 v6, 0x1

    goto :goto_8

    :cond_19
    move-object v3, v14

    const/4 v6, 0x1

    goto :goto_8

    :cond_1a
    move-object v3, v14

    const/4 v6, 0x1

    :cond_1b
    :goto_8
    const-string v0, "playlists"

    const-string v5, "_id = ?"

    .line 3042
    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v16

    .line 3043
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    const/4 v9, 0x5

    move-object v14, v3

    move-object v3, v0

    move-object/from16 v4, p2

    move-object v10, v7

    move v7, v9

    .line 3045
    :try_start_7
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1c

    .line 3048
    invoke-virtual {v15, v8, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3051
    :cond_1c
    monitor-exit v10

    return v0

    :cond_1d
    move-object v10, v7

    .line 2990
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal update uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1e
    move-object v10, v7

    .line 2984
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    move-object v10, v7

    .line 3052
    :goto_9
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_9

    :pswitch_8
    const/4 v6, 0x1

    .line 2899
    iget-object v8, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2900
    :try_start_8
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    if-nez v3, :cond_2a

    if-eqz v4, :cond_20

    .line 2905
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2906
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    .line 2905
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_a

    .line 2908
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid content for update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2911
    :cond_20
    :goto_a
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2913
    invoke-direct {v1, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isOnlyRefreshMusicInfoInternalValues(Landroid/content/ContentValues;)Z

    move-result v17

    if-nez v17, :cond_25

    .line 2917
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replaceMusicInfoIdsWithMediaStoreIds(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2919
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v2

    .line 2920
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 2921
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, [Ljava/lang/String;

    .line 2922
    invoke-direct {v1, v15, v4, v12, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updatePlaylistInMediaStore(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    if-lt v2, v6, :cond_24

    .line 2925
    :try_start_9
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2926
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v2

    .line 2927
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2928
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 2929
    sget-object v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v11, v7, [Ljava/lang/String;

    aput-object v2, v11, v16

    aput-object v3, v11, v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    const/4 v7, 0x0

    move-object v9, v15

    move-object v6, v14

    move-object v14, v7

    :try_start_a
    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v14, :cond_22

    .line 2932
    :try_start_b
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_22

    .line 2933
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2934
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2936
    :cond_21
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2937
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_21

    .line 2938
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v0

    goto :goto_c

    :cond_22
    :goto_b
    if-eqz v14, :cond_26

    .line 2942
    :try_start_c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_d

    :catchall_8
    move-exception v0

    move-object v14, v6

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object v6, v14

    :goto_c
    if-eqz v14, :cond_23

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2944
    :cond_23
    throw v0

    :cond_24
    move-object v6, v14

    goto :goto_d

    :cond_25
    move-object v6, v14

    .line 2949
    :cond_26
    :goto_d
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    const-string v20, "playlists"

    .line 2951
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 2952
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 2953
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v9, 0x5

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v4, p2

    move-object v14, v5

    move-object v5, v7

    move-object v12, v6

    const/4 v13, 0x1

    move-object v6, v0

    move v7, v9

    .line 2954
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_29

    if-nez v17, :cond_28

    .line 2957
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_28

    .line 2959
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2961
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2962
    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    .line 2963
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2964
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v5

    .line 2965
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2964
    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v6}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = ?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2968
    new-array v6, v13, [Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v16

    const/4 v4, 0x5

    move-object/from16 v9, v19

    move-object/from16 v10, v20

    move-object v11, v2

    move-object v7, v12

    move-object v12, v5

    const/4 v5, 0x1

    move-object v13, v6

    move-object v6, v14

    move v14, v4

    .line 2969
    invoke-virtual/range {v9 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-object v14, v6

    move-object v12, v7

    const/4 v13, 0x1

    goto :goto_e

    :cond_27
    move-object v7, v12

    goto :goto_f

    :cond_28
    move-object v7, v12

    .line 2974
    :goto_f
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2977
    :cond_29
    monitor-exit v8

    return v0

    .line 2901
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_a
    move-exception v0

    .line 2978
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    throw v0

    :pswitch_9
    move-object v9, v14

    const/4 v5, 0x1

    const-string v6, "albums"

    .line 2885
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    if-eqz v10, :cond_2b

    const-string v2, "artist =? AND album =?"

    .line 2888
    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "artist"

    .line 2889
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v16

    const-string v7, "album"

    .line 2890
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    move-object v5, v2

    move-object/from16 v25, v6

    move-object v6, v3

    move-object/from16 v3, v25

    goto :goto_10

    :cond_2b
    move-object v5, v2

    move-object/from16 v25, v6

    move-object v6, v3

    move-object/from16 v3, v25

    .line 3221
    :goto_10
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v7, 0x5

    move-object/from16 v4, p2

    .line 3222
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2c

    .line 3225
    invoke-virtual {v15, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2c
    return v0

    .line 2855
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unauthorized update attempt blocked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_9
        :pswitch_1
        :pswitch_1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public updateMediaStoreGeneration()V
    .locals 3

    .line 1695
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 1696
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-wide v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    invoke-static {v0, v1, v2}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setGenerationCode(Landroid/content/Context;J)V

    return-void
.end method

.method public updateMediaStoreVersion()V
    .locals 2

    .line 1690
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 1691
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setMediaVersionCode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
