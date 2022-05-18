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
    .locals 17

    .line 146
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 148
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v0, "content://com.sonyericsson.music.musicinfo/external/audio"

    .line 149
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    const-string v0, "content://com.sonyericsson.music.musicinfo/external/playlist"

    .line 150
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    .line 152
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    const/16 v0, 0x37

    .line 153
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_data"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "_size"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "date_added"

    const/4 v5, 0x3

    aput-object v2, v1, v5

    const-string v2, "date_modified"

    const/4 v5, 0x4

    aput-object v2, v1, v5

    const-string v2, "datetaken"

    const/4 v6, 0x5

    aput-object v2, v1, v6

    const-string v2, "mime_type"

    const/4 v7, 0x6

    aput-object v2, v1, v7

    const-string v2, "title"

    const/4 v7, 0x7

    aput-object v2, v1, v7

    const-string v2, "_display_name"

    const/16 v8, 0x8

    aput-object v2, v1, v8

    const-string v2, "bucket_id"

    const/16 v9, 0x9

    aput-object v2, v1, v9

    const-string v2, "bucket_display_name"

    const/16 v10, 0xa

    aput-object v2, v1, v10

    const-string v2, "title_key"

    const/16 v11, 0xb

    aput-object v2, v1, v11

    const-string v2, "artist_id"

    const/16 v12, 0xc

    aput-object v2, v1, v12

    const-string v2, "album_id"

    const/16 v13, 0xd

    aput-object v2, v1, v13

    const-string v2, "track"

    const/16 v14, 0xe

    aput-object v2, v1, v14

    const-string v2, "composer"

    const/16 v15, 0xf

    aput-object v2, v1, v15

    const-string v2, "year"

    const/16 v16, 0x10

    aput-object v2, v1, v16

    const-string v2, "is_music"

    const/16 v16, 0x11

    aput-object v2, v1, v16

    const-string v2, "is_ringtone"

    const/16 v16, 0x12

    aput-object v2, v1, v16

    const-string v2, "is_notification"

    const/16 v16, 0x13

    aput-object v2, v1, v16

    const-string v2, "is_alarm"

    const/16 v16, 0x14

    aput-object v2, v1, v16

    const-string v2, "is_podcast"

    const/16 v16, 0x15

    aput-object v2, v1, v16

    const-string v2, "is_pending"

    const/16 v16, 0x16

    aput-object v2, v1, v16

    const-string v2, "album_artist"

    const/16 v16, 0x17

    aput-object v2, v1, v16

    const-string v2, "duration"

    const/16 v16, 0x18

    aput-object v2, v1, v16

    const-string v2, "bookmark"

    const/16 v16, 0x19

    aput-object v2, v1, v16

    const-string v2, "artist"

    const/16 v16, 0x1a

    aput-object v2, v1, v16

    const-string v2, "album"

    const/16 v16, 0x1b

    aput-object v2, v1, v16

    const-string v2, "is_drm"

    const/16 v16, 0x1c

    aput-object v2, v1, v16

    const-string v2, "is_audiobook"

    const/16 v16, 0x1d

    aput-object v2, v1, v16

    const-string v2, "title_resource_uri"

    const/16 v16, 0x1e

    aput-object v2, v1, v16

    const-string v2, "owner_package_name"

    const/16 v16, 0x1f

    aput-object v2, v1, v16

    const-string v2, "is_download"

    const/16 v16, 0x20

    aput-object v2, v1, v16

    const-string v2, "date_expires"

    const/16 v16, 0x21

    aput-object v2, v1, v16

    const-string v2, "is_trashed"

    const/16 v16, 0x22

    aput-object v2, v1, v16

    const-string v2, "document_id"

    const/16 v16, 0x23

    aput-object v2, v1, v16

    const-string v2, "instance_id"

    const/16 v16, 0x24

    aput-object v2, v1, v16

    const-string v2, "original_document_id"

    const/16 v16, 0x25

    aput-object v2, v1, v16

    const-string v2, "relative_path"

    const/16 v16, 0x26

    aput-object v2, v1, v16

    const-string v2, "volume_name"

    const/16 v16, 0x27

    aput-object v2, v1, v16

    const-string v2, "artist_key"

    const/16 v16, 0x28

    aput-object v2, v1, v16

    const-string v2, "album_key"

    const/16 v16, 0x29

    aput-object v2, v1, v16

    const-string v2, "genre"

    const/16 v16, 0x2a

    aput-object v2, v1, v16

    const-string v2, "genre_key"

    const/16 v16, 0x2b

    aput-object v2, v1, v16

    const-string v2, "genre_id"

    const/16 v16, 0x2c

    aput-object v2, v1, v16

    const-string v2, "author"

    const/16 v16, 0x2d

    aput-object v2, v1, v16

    const-string v2, "bitrate"

    const/16 v16, 0x2e

    aput-object v2, v1, v16

    const-string v2, "cd_track_number"

    const/16 v16, 0x2f

    aput-object v2, v1, v16

    const-string v2, "compilation"

    const/16 v16, 0x30

    aput-object v2, v1, v16

    const-string v2, "disc_number"

    const/16 v16, 0x31

    aput-object v2, v1, v16

    const-string v2, "is_favorite"

    const/16 v16, 0x32

    aput-object v2, v1, v16

    const-string v2, "num_tracks"

    const/16 v16, 0x33

    aput-object v2, v1, v16

    const-string v2, "writer"

    const/16 v16, 0x34

    aput-object v2, v1, v16

    const-string v2, "generation_added"

    const/16 v16, 0x35

    aput-object v2, v1, v16

    const-string v2, "generation_modified"

    const/16 v16, 0x36

    aput-object v2, v1, v16

    sput-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_PROJECTION:[Ljava/lang/String;

    .line 181
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "artist"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "albums"

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "tracks"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "tracks/#"

    invoke-virtual {v1, v2, v3, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "playlists"

    invoke-virtual {v1, v2, v3, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 186
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "playlists/#"

    invoke-virtual {v1, v2, v3, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 187
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "playlists/#/members"

    invoke-virtual {v1, v2, v3, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 188
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "high_res_media"

    invoke-virtual {v1, v2, v3, v10}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 189
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "cloud_account"

    invoke-virtual {v1, v2, v3, v11}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 190
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "cloud_files"

    invoke-virtual {v1, v2, v3, v12}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 191
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "cloud_files/#"

    invoke-virtual {v1, v2, v3, v13}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 192
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "cloud_files/account/#/parent/*"

    invoke-virtual {v1, v2, v3, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "search_history"

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 195
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/media"

    const/16 v15, 0x64

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 196
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/media/#"

    const/16 v15, 0x65

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/media/#/genres"

    const/16 v15, 0x66

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 198
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/media/#/genres/#"

    const/16 v15, 0x67

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 199
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/genres"

    const/16 v15, 0x6a

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 200
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/genres/#"

    const/16 v15, 0x6b

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 201
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/genres/#/members"

    const/16 v15, 0x6c

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/playlists"

    const/16 v15, 0x6e

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 203
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/playlists/#"

    const/16 v15, 0x6f

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 204
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/playlists/#/members"

    const/16 v15, 0x70

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 205
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/playlists/#/members/#"

    const/16 v15, 0x71

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 206
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/artists"

    const/16 v15, 0x72

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 207
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/artists/#"

    const/16 v15, 0x73

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 208
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/artists/#/albums"

    const/16 v15, 0x76

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/albums"

    const/16 v15, 0x74

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 210
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/audio/albums/#"

    const/16 v15, 0x75

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 211
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/file"

    const/16 v15, 0x2bc

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 212
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/file/#"

    const/16 v15, 0x2bd

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 213
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v2, "com.sonyericsson.music.musicinfo"

    const-string v3, "*/file/*"

    invoke-virtual {v1, v2, v3, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v1, :cond_0

    .line 216
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "_data"

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-string v3, "_size"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "date_added"

    aput-object v3, v0, v2

    const-string v2, "date_modified"

    aput-object v2, v0, v5

    const-string v2, "datetaken"

    aput-object v2, v0, v6

    const/4 v2, 0x6

    const-string v3, "mime_type"

    aput-object v3, v0, v2

    const-string v2, "title"

    aput-object v2, v0, v7

    const-string v2, "_display_name"

    aput-object v2, v0, v8

    const-string v2, "bucket_id"

    aput-object v2, v0, v9

    const-string v2, "bucket_display_name"

    aput-object v2, v0, v10

    const-string v2, "title_key"

    aput-object v2, v0, v11

    const-string v2, "artist_id"

    aput-object v2, v0, v12

    const-string v2, "album_id"

    aput-object v2, v0, v13

    const-string v2, "track"

    aput-object v2, v0, v14

    const-string v2, "composer"

    const/16 v3, 0xf

    aput-object v2, v0, v3

    const/16 v2, 0x10

    const-string v3, "year"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "is_music"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "is_ringtone"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "is_notification"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "is_alarm"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "is_podcast"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "is_pending"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "album_artist"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "duration"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "bookmark"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "artist"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "album"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "is_drm"

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const-string v3, "is_audiobook"

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const-string v3, "title_resource_uri"

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const-string v3, "owner_package_name"

    aput-object v3, v0, v2

    const/16 v2, 0x20

    const-string v3, "is_download"

    aput-object v3, v0, v2

    const/16 v2, 0x21

    const-string v3, "date_expires"

    aput-object v3, v0, v2

    const/16 v2, 0x22

    const-string v3, "is_trashed"

    aput-object v3, v0, v2

    const/16 v2, 0x23

    const-string v3, "document_id"

    aput-object v3, v0, v2

    const/16 v2, 0x24

    const-string v3, "instance_id"

    aput-object v3, v0, v2

    const/16 v2, 0x25

    const-string v3, "original_document_id"

    aput-object v3, v0, v2

    const/16 v2, 0x26

    const-string v3, "relative_path"

    aput-object v3, v0, v2

    const/16 v2, 0x27

    const-string v3, "volume_name"

    aput-object v3, v0, v2

    const/16 v2, 0x28

    const-string v3, "artist_key"

    aput-object v3, v0, v2

    const/16 v2, 0x29

    const-string v3, "album_key"

    aput-object v3, v0, v2

    const/16 v2, 0x2a

    const-string v3, "genre"

    aput-object v3, v0, v2

    const/16 v2, 0x2b

    const-string v3, "genre_key"

    aput-object v3, v0, v2

    const/16 v2, 0x2c

    const-string v3, "genre_id"

    aput-object v3, v0, v2

    const/16 v2, 0x2d

    const-string v3, "author"

    aput-object v3, v0, v2

    const/16 v2, 0x2e

    const-string v3, "bitrate"

    aput-object v3, v0, v2

    const/16 v2, 0x2f

    const-string v3, "cd_track_number"

    aput-object v3, v0, v2

    const/16 v2, 0x30

    const-string v3, "compilation"

    aput-object v3, v0, v2

    const/16 v2, 0x31

    const-string v3, "disc_number"

    aput-object v3, v0, v2

    const/16 v2, 0x32

    const-string v3, "is_favorite"

    aput-object v3, v0, v2

    const/16 v2, 0x33

    const-string v3, "num_tracks"

    aput-object v3, v0, v2

    const/16 v2, 0x34

    const-string v3, "writer"

    aput-object v3, v0, v2

    const/16 v2, 0x35

    const-string v3, "generation_added"

    aput-object v3, v0, v2

    const/16 v2, 0x36

    const-string v3, "generation_modified"

    aput-object v3, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/collection/ArraySet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    const/4 v0, 0x0

    .line 267
    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 268
    sput-wide v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 270
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 248
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;-><init>(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mRefreshPlaylistArtRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 260
    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutivePlaylistsSyncs:I

    .line 261
    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutiveHighResMediaSyncs:I

    .line 262
    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    .line 264
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    .line 265
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncPlaylistsLock:Ljava/lang/Object;

    .line 266
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncHighResMediaLock:Ljava/lang/Object;

    .line 271
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->createMusicInfoSyncHandler(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncMediaStoreAudioData()V

    return-void
.end method

.method private bulkInsertMediaInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2

    .line 2034
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

    .line 3739
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3741
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3742
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3743
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3745
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

    .line 3746
    invoke-static {v11}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validatePlaylistValues(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3747
    invoke-direct {p0, v8, v11}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->createMediaStorePlaylistOrGetInfo(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3748
    invoke-direct {p0, v11}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateMediastoreInsertValuesAvailable(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v5, "mediastore_id = ?"

    const/4 v2, 0x1

    .line 3753
    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "mediastore_id"

    .line 3754
    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    const-string v3, "playlists"

    const/4 v7, 0x5

    move-object v2, v1

    move-object v4, v11

    .line 3756
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    const-string v2, "playlists"

    const/4 v3, 0x0

    .line 3760
    invoke-virtual {v1, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    :cond_1
    int-to-long v4, v10

    add-long/2addr v4, v2

    long-to-int v2, v4

    move v10, v2

    goto :goto_0

    .line 3749
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v2, "Incorrect columns available."

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3767
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3769
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3771
    monitor-exit v0

    return v10

    :catchall_0
    move-exception p1

    .line 3769
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3770
    throw p1

    :catchall_1
    move-exception p1

    .line 3772
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    return-void
.end method

.method private callSyncMediaStoreAudio()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 384
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private checkUpdateSmartPlaylistColumns()V
    .locals 13

    .line 3428
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 3429
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

    .line 3430
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    const/4 v10, 0x0

    if-nez v9, :cond_2

    if-eqz v9, :cond_1

    .line 3489
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 3436
    :cond_2
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    if-eqz v9, :cond_3

    .line 3489
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :cond_4
    :try_start_1
    const-string v1, "audio_id"

    .line 3439
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "volume_name"

    .line 3440
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "relative_path"

    .line 3441
    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name"

    .line 3442
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3443
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3444
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_5
    const-string v2, "audio"

    const/4 v3, 0x4

    .line 3445
    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "_id"

    const/4 v11, 0x0

    aput-object v4, v3, v11

    const-string v4, "volume_name"

    const/4 v12, 0x1

    aput-object v4, v3, v12

    const/4 v4, 0x2

    const-string v5, "relative_path"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "_display_name"

    aput-object v5, v3, v4

    const-string v4, "_id = ? "

    new-array v5, v12, [Ljava/lang/String;

    .line 3450
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    .line 3445
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_6

    goto/16 :goto_1

    .line 3452
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_7

    .line 3453
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    :cond_7
    const-string v1, "_id"

    .line 3456
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "volume_name"

    .line 3457
    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "relative_path"

    .line 3458
    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name"

    .line 3459
    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3460
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 3461
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_0

    .line 3465
    :cond_8
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "audio_id"

    .line 3466
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "volume_name"

    .line 3467
    invoke-virtual {v5, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "relative_path"

    .line 3468
    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_display_name"

    .line 3469
    invoke-virtual {v5, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "smart_playlists"

    const-string v4, "audio_id = ? "

    .line 3471
    new-array v6, v12, [Ljava/lang/String;

    .line 3473
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v11

    const/4 v8, 0x5

    move-object v1, v0

    move-object v3, v5

    move-object v5, v6

    move v6, v8

    .line 3471
    invoke-virtual/range {v1 .. v6}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 3474
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 3462
    :cond_9
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 3476
    :cond_a
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_4

    if-eqz v9, :cond_c

    .line 3484
    :goto_2
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 3487
    :cond_b
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catch_0
    nop

    if-eqz v9, :cond_c

    goto :goto_2

    :cond_c
    :goto_3
    if-eqz v9, :cond_d

    .line 3489
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_d
    return-void

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v10, v0

    .line 3430
    :try_start_3
    throw v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    if-eqz v9, :cond_f

    if-eqz v10, :cond_e

    .line 3489
    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-virtual {v10, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_e
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_f
    :goto_5
    throw v0

    return-void
.end method

.method private computeIdAndKey(Landroid/content/ContentValues;)V
    .locals 20

    move-object/from16 v0, p1

    .line 2860
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v8, p0

    .line 2861
    iget-object v2, v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v2, "title"

    .line 2862
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "title"

    .line 2865
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2864
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title_key"

    .line 2866
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "album"

    .line 2869
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v14, 0x0

    const/16 v17, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/16 v18, 0x0

    if-eqz v2, :cond_5

    .line 2871
    sget-object v3, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v13, [Ljava/lang/String;

    const-string v2, "album_id"

    aput-object v2, v4, v18

    const-string v2, "album"

    aput-object v2, v4, v12

    const-string v2, "album_key"

    aput-object v2, v4, v17

    const-string v5, "album = ?"

    new-array v6, v12, [Ljava/lang/String;

    const-string v2, "album"

    .line 2878
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v18

    const-string v7, "album_key"

    move-object v2, v1

    .line 2871
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2880
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "album_id"

    const-string v4, "album_id"

    .line 2883
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2882
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2881
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "album_key"

    const-string v4, "album_key"

    .line 2886
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2885
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2884
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v3, v14

    move-object v4, v15

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 2889
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v10, "audio_albums"

    .line 2890
    new-array v11, v13, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v11, v18

    const-string v2, "album"

    aput-object v2, v11, v12

    const-string v2, "album_key"

    aput-object v2, v11, v17

    const-string v2, "album = ?"

    new-array v3, v12, [Ljava/lang/String;

    const-string v4, "album"

    .line 2897
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v9, v15

    const/4 v7, 0x1

    move-object v12, v2

    const/4 v6, 0x3

    move-object v13, v3

    move-object v3, v14

    move-object v14, v4

    move-object v4, v15

    move-object v15, v5

    .line 2890
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2899
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "album_id"

    const-string v9, "_id"

    .line 2902
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2901
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2900
    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "album_key"

    const-string v9, "album_key"

    .line 2905
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2904
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2903
    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 2908
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v2, "album"

    .line 2909
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2910
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "album"

    const-string v10, "album"

    .line 2911
    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "album_key"

    .line 2912
    invoke-virtual {v5, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "audio_albums"

    .line 2913
    invoke-virtual {v4, v9, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-string v5, "album_id"

    .line 2914
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "album_key"

    .line 2915
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v3, v14

    move-object v4, v15

    const/4 v6, 0x3

    const/4 v7, 0x1

    :goto_0
    const-string v2, "artist"

    .line 2920
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2921
    sget-object v5, Landroid/provider/MediaStore$Audio$Artists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v9, v6, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v9, v18

    const-string v2, "artist"

    aput-object v2, v9, v7

    const-string v2, "artist_key"

    aput-object v2, v9, v17

    const-string v10, "artist = ?"

    new-array v11, v7, [Ljava/lang/String;

    const-string v2, "artist"

    .line 2927
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v18

    const-string v12, "artist_key"

    move-object v2, v1

    move-object v15, v3

    move-object v3, v5

    move-object v14, v4

    move-object v4, v9

    move-object v5, v10

    const/4 v13, 0x3

    move-object v6, v11

    const/4 v11, 0x1

    move-object v7, v12

    .line 2921
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2929
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "artist_id"

    const-string v4, "_id"

    .line 2932
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2931
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2930
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "artist_key"

    const-string v4, "artist_key"

    .line 2935
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2934
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2933
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2936
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v3, v14

    move-object v4, v15

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 2938
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string v10, "audio_artists"

    .line 2939
    new-array v2, v13, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v18

    const-string v3, "artist"

    aput-object v3, v2, v11

    const-string v3, "artist_key"

    aput-object v3, v2, v17

    const-string v12, "artist = ?"

    new-array v3, v11, [Ljava/lang/String;

    const-string v4, "artist"

    .line 2946
    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object v9, v14

    const/4 v7, 0x1

    move-object v11, v2

    const/4 v6, 0x3

    move-object v13, v3

    move-object v3, v14

    move-object v14, v4

    move-object v4, v15

    move-object v15, v5

    .line 2939
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2948
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "artist_id"

    const-string v9, "_id"

    .line 2951
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2950
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2949
    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "artist_key"

    const-string v9, "artist_key"

    .line 2954
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2953
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2952
    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2955
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    .line 2957
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    const-string v2, "artist"

    .line 2959
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2958
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2960
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "artist"

    const-string v10, "artist"

    .line 2962
    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2961
    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "artist_key"

    .line 2963
    invoke-virtual {v5, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "audio_artists"

    .line 2964
    invoke-virtual {v3, v9, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-string v5, "artist_id"

    .line 2965
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "artist_key"

    .line 2966
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_1
    const-string v2, "genre"

    .line 2971
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2972
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v9, v6, [Ljava/lang/String;

    const-string v2, "genre_id"

    aput-object v2, v9, v18

    const-string v2, "genre"

    aput-object v2, v9, v7

    const-string v2, "genre_key"

    aput-object v2, v9, v17

    const-string v10, "genre = ?"

    new-array v11, v7, [Ljava/lang/String;

    const-string v2, "genre"

    .line 2978
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v11, v18

    const/4 v12, 0x0

    move-object v2, v1

    move-object v1, v3

    move-object v3, v5

    move-object v15, v4

    move-object v4, v9

    move-object v5, v10

    const/4 v9, 0x3

    move-object v6, v11

    const/4 v10, 0x1

    move-object v7, v12

    .line 2972
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2981
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v1, "genre_id"

    const-string v3, "genre_id"

    .line 2984
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2983
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2982
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "genre_key"

    const-string v3, "genre_key"

    .line 2987
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2986
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2985
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2988
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_b
    if-eqz v2, :cond_c

    .line 2990
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c
    const-string v2, "audio_genres"

    .line 2991
    new-array v11, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v11, v18

    const-string v3, "genre"

    aput-object v3, v11, v10

    const-string v3, "genre_key"

    aput-object v3, v11, v17

    const-string v12, "genre = ?"

    new-array v13, v10, [Ljava/lang/String;

    const-string v3, "genre"

    .line 2998
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v13, v18

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v9, v1

    move-object v10, v2

    move-object v2, v15

    move-object v15, v3

    .line 2991
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 3000
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v1, "genre_id"

    const-string v2, "_id"

    .line 3003
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3002
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3001
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "genre_key"

    const-string v2, "genre_key"

    .line 3006
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3005
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3004
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3007
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_d
    if-eqz v3, :cond_e

    .line 3009
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_e
    const-string v3, "genre"

    .line 3011
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3010
    invoke-static {v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3012
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "genre"

    const-string v6, "genre"

    .line 3014
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3013
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "genre_key"

    .line 3015
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "audio_genres"

    .line 3016
    invoke-virtual {v1, v5, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-string v4, "genre_id"

    .line 3017
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "genre_key"

    .line 3018
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 3883
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3884
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createMediaStorePlaylistOrGetInfo(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z
    .locals 2

    const-string v0, "name"

    .line 3862
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediastore_id"

    .line 3864
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3866
    invoke-static {p1, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createOrGetPlaylistData(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "mediastore_id"

    .line 3873
    iget v1, p1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "path"

    .line 3874
    iget-object v1, p1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mPath:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "date_created"

    .line 3875
    iget v1, p1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mDateCreated:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "date_updated"

    .line 3876
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

    .line 4060
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 4061
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createSmartPlaylist(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    .line 4062
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createSmartPlaylist(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    .line 4063
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createSmartPlaylist(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    return-void
.end method

.method private deleteMediaInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 2376
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "media"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2380
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 2383
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 2385
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2387
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "audio"

    .line 2388
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 2390
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p2

    .line 2396
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

.method private static deleteSensMePlaylists(Landroid/content/Context;)V
    .locals 4

    .line 4070
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "WALKMAN SensMe channel"

    .line 4072
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "Music_SensMe_channel"

    .line 4075
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 4078
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 4079
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 4080
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 4079
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4080
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 4078
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

    .line 3697
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3699
    invoke-static {v2, v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getAlbumArtPath(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3700
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3701
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3702
    invoke-static {}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 3701
    invoke-static {v3, v2, v5, v6}, Lcom/sonyericsson/music/common/FileUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3705
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "artist"

    .line 3706
    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "album"

    .line 3707
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "art_path"

    .line 3708
    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albums"

    move-object v1, p1

    .line 3710
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

    .line 3712
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3735
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

    .line 3643
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "artist =? AND album =?"

    const/4 v2, 0x2

    .line 3646
    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v7, v2

    const/4 v9, 0x1

    aput-object v1, v7, v9

    const/4 v10, 0x0

    .line 3649
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

    if-eqz v3, :cond_2

    .line 3652
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "_data"

    .line 3653
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    move-object/from16 v5, p0

    .line 3657
    :try_start_2
    invoke-direct {v5, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isSkipExtractingEmbeddedAlbumArt(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3659
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/sonyericsson/music/metadata/EmbeddedMetaDataUtils;->getAndSaveEmbeddedAlbumArt(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    move-object/from16 v5, p0

    :cond_1
    move-object v4, v10

    :goto_0
    if-eqz v4, :cond_3

    .line 3664
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "artist"

    .line 3665
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "album"

    .line 3666
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "art_path"

    .line 3668
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 3667
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albums"

    move-object/from16 v1, p1

    .line 3669
    invoke-virtual {v1, v0, v10, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-wide/16 v11, -0x1

    cmp-long v0, v6, v11

    if-lez v0, :cond_3

    const-string v12, "albums"

    const/16 v17, 0x0

    move-object/from16 v11, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    move-object/from16 v18, p6

    .line 3671
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p0

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eqz v3, :cond_4

    .line 3684
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3688
    :cond_4
    new-instance v0, Landroid/util/Pair;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v10, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v10

    :goto_2
    if-eqz v3, :cond_5

    .line 3684
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3686
    :cond_5
    throw v0
.end method

.method private static getAlbumArtPath(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    .line 3608
    new-array v3, v0, [Ljava/lang/String;

    const-string v1, "album_art"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const-string v4, "album =? AND artist=?"

    const/4 v1, 0x2

    .line 3611
    new-array v5, v1, [Ljava/lang/String;

    aput-object p2, v5, v2

    aput-object p1, v5, v0

    const/4 p1, 0x0

    .line 3613
    :try_start_0
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v1, p0

    .line 3614
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 3617
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "album_art"

    .line 3618
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

    .line 3622
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

    .line 3624
    :cond_2
    throw p1
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

    .line 4000
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 4001
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "playlists"

    .line 4003
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 4006
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

    .line 4008
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v6

    const/4 p1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v7

    move-object v7, p1

    .line 4006
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 4009
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "mediastore_id"

    .line 4010
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "name"

    .line 4011
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

    .line 4015
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4017
    :cond_1
    throw p1

    .line 4019
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

    .line 3582
    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-eq v1, p2, :cond_2

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-eq v1, p2, :cond_2

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 3585
    :cond_0
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne p1, p2, :cond_1

    .line 3586
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

    .line 3584
    invoke-static {p2, v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    :goto_1
    const/4 p1, 0x0

    if-eqz v2, :cond_5

    .line 3592
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

    .line 3594
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v0, :cond_5

    .line 3597
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3599
    :cond_4
    throw p1

    :cond_5
    :goto_2
    return p1
.end method

.method private insertMediaInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    .line 1874
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "media"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1879
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    .line 1883
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1884
    invoke-virtual {v1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 1886
    invoke-virtual {p2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1890
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1891
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

    .line 1892
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

    .line 1896
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "smart_playlist_type"

    .line 1897
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1899
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_1

    .line 1900
    :cond_0
    throw p2

    .line 1908
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

.method private isOnlyRefreshMusicInfoInternalValues(Landroid/content/ContentValues;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 4085
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 4086
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4087
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_HIDDEN:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_SET:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 4088
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_TYPE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 4089
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

    .line 3629
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".xmf"

    .line 3631
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mxmf"

    .line 3632
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mid"

    .line 3633
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".midi"

    .line 3634
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

.method private isUserCreatedPlaylist(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    const/4 v0, 0x0

    .line 3966
    :try_start_0
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    .line 3967
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

    .line 3968
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "_data"

    .line 3970
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3971
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    if-eqz v0, :cond_0

    .line 3990
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    .line 3976
    :cond_1
    :try_start_1
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH_FROM_R:Ljava/lang/String;

    .line 3977
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ".m3u"

    .line 3978
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 3990
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

    .line 3992
    :cond_7
    throw p1
.end method

.method private queryMediaInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    .line 971
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.sonyericsson.music.musicinfo"

    const-string v5, "media"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 975
    sget-boolean v4, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 976
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    if-eqz v1, :cond_1

    const-string v4, "android:query-arg-sql-selection"

    .line 978
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    if-eqz v1, :cond_2

    const-string v6, "android:query-arg-sql-selection-args"

    .line 979
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v5

    :goto_1
    if-eqz v1, :cond_3

    const-string v7, "android:query-arg-sql-sort-order"

    .line 980
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_2

    :cond_3
    move-object v8, v5

    :goto_2
    if-eqz v1, :cond_4

    const-string v7, "android:query-arg-sql-group-by"

    .line 981
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    move-object v7, v5

    :goto_3
    if-eqz v1, :cond_5

    const-string v9, "android:query-arg-sql-having"

    .line 982
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    move-object v9, v5

    :goto_4
    if-eqz v1, :cond_6

    const-string v11, "android:query-arg-sql-limit"

    .line 983
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    move-object/from16 v11, p0

    goto :goto_5

    :cond_6
    move-object/from16 v11, p0

    move-object v12, v5

    .line 985
    :goto_5
    iget-object v13, v11, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    if-nez v3, :cond_7

    const-string v14, "*"

    goto :goto_6

    :cond_7
    const-string v14, ", "

    .line 988
    invoke-static {v14, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 989
    :goto_6
    sget-object v15, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 1181
    :pswitch_0
    invoke-virtual {v10, v2, v3, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_1
    if-eqz v4, :cond_8

    .line 1042
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

    .line 1044
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

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT "

    .line 1046
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM ("

    .line 1047
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SELECT album_id AS _id, album_id AS album_id, album AS album, album_key AS album_key, artist_id AS artist_id, artist AS artist, artist_key AS artist_key, COUNT(DISTINCT _id) AS numsongs, COUNT(DISTINCT _id) AS numsongs_by_artist, MIN(year) AS minyear, MAX(year) AS maxyear, NULL AS album_art FROM audio WHERE is_music = 1 GROUP BY artist_id, album_id"

    .line 1048
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    .line 1056
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    const-string v3, "WHERE "

    .line 1058
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v8, :cond_a

    const-string v1, " ORDER BY "

    .line 1061
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1064
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    :pswitch_2
    if-eqz v4, :cond_b

    .line 1015
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

    .line 1017
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

    .line 1019
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    .line 1020
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM ("

    .line 1021
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SELECT album_id AS _id, album_id AS album_id, album AS album, album_key AS album_key, artist_id AS artist_id, artist AS artist, artist_key AS artist_key, COUNT(DISTINCT _id) AS numsongs, COUNT(DISTINCT _id) AS numsongs_by_artist, MIN(year) AS minyear, MAX(year) AS maxyear, NULL AS album_art FROM audio WHERE is_music = 1 GROUP BY album_id"

    .line 1022
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    .line 1031
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_c

    const-string v2, "WHERE "

    .line 1033
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v8, :cond_d

    const-string v2, " ORDER BY "

    .line 1036
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1039
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    :pswitch_4
    if-eqz v4, :cond_e

    .line 991
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

    .line 993
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

    .line 995
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    .line 996
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM ("

    .line 997
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SELECT artist_id AS _id, MIN(artist) AS artist, artist_key AS artist_key, COUNT(DISTINCT album_id) AS number_of_albums, COUNT(DISTINCT _id) AS number_of_tracks FROM audio WHERE is_music = 1 GROUP BY artist_id"

    .line 998
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    .line 1004
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_f

    const-string v2, "WHERE "

    .line 1006
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    if-eqz v8, :cond_10

    const-string v2, "ORDER BY "

    .line 1009
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1012
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    .line 1084
    :pswitch_6
    invoke-virtual {v10, v2, v5, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1f

    .line 1085
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_12

    :cond_11
    const-string v6, "audio_id"

    .line 1094
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v15, "tracks"

    const/16 v16, 0x0

    .line 1095
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

    .line 1098
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_12

    .line 1100
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x1

    goto :goto_a

    .line 1103
    :cond_12
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1104
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, 0x0

    :goto_a
    if-nez v6, :cond_14

    .line 1107
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1108
    invoke-virtual {v10, v2, v3, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1109
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_13
    return-object v1

    :cond_14
    if-nez v3, :cond_15

    .line 1112
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_b

    :cond_15
    move-object v6, v3

    .line 1113
    :goto_b
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1114
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_c
    const-string v1, "audio_id"

    .line 1116
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v15, "audio"

    const/16 v16, 0x0

    const-string v17, "_id = ?"

    .line 1117
    new-array v3, v9, [Ljava/lang/String;

    .line 1118
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v13

    move-object/from16 v18, v3

    .line 1117
    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 1120
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_10

    .line 1124
    :cond_16
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 1125
    array-length v3, v6

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v3, :cond_1b

    aget-object v14, v6, v12

    .line 1126
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getType(I)I

    move-result v15

    if-eq v15, v9, :cond_18

    const/4 v8, 0x3

    if-eq v15, v8, :cond_17

    move-object v8, v5

    goto :goto_f

    .line 1140
    :cond_17
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :cond_18
    const-string v8, "audio_id"

    .line 1130
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "_id"

    .line 1131
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "play_order"

    .line 1132
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1a

    const-string v8, "playlist_id"

    .line 1133
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    goto :goto_e

    .line 1137
    :cond_19
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_f

    .line 1134
    :cond_1a
    :goto_e
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1148
    :goto_f
    invoke-virtual {v2, v14, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    goto :goto_d

    .line 1150
    :cond_1b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_11

    :cond_1c
    :goto_10
    if-eqz v1, :cond_1d

    .line 1121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1152
    :cond_1d
    :goto_11
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1154
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1156
    invoke-virtual {v7, v10, v0}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v7

    :cond_1e
    const/4 v8, 0x0

    goto/16 :goto_c

    :cond_1f
    :goto_12
    if-eqz v4, :cond_20

    .line 1086
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1087
    :cond_20
    invoke-virtual {v10, v2, v3, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 1088
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_21
    return-object v1

    :pswitch_7
    if-eqz v4, :cond_22

    .line 1165
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

    .line 1167
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

    .line 1067
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

    .line 1069
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

    .line 1071
    :pswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    .line 1072
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM (SELECT genre_id AS _id, MIN(genre) AS name FROM audio GROUP BY genre_id) "

    .line 1073
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_24

    const-string v2, "WHERE "

    .line 1075
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    if-eqz v8, :cond_25

    const-string v2, "ORDER BY "

    .line 1078
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1081
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    .line 1171
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

    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT "

    .line 1173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM (SELECT genre_id AS _id, genre AS name FROM audio "

    .line 1174
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WHERE "

    .line 1175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND genre IS NOT NULL )"

    .line 1176
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1178
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    :pswitch_b
    if-eqz v4, :cond_26

    .line 1159
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

    .line 1161
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

    .line 1184
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1185
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

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

.method private removeSmartPlaylistDuplicate(Ljava/lang/String;)Z
    .locals 3

    .line 3564
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "Music_favorites"

    .line 3565
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3566
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-gt v0, v2, :cond_3

    :cond_1
    const-string v0, "Music_recently_played_tracks"

    .line 3567
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3568
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_3

    :cond_2
    const-string v0, "Music_most_played_tracks"

    .line 3569
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3570
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x18

    if-le p1, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private replaceMusicInfoIdsWithMediaStoreIds(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    if-eqz p1, :cond_1

    .line 4025
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4026
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-static {p1, v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getParamsValue(Landroid/net/Uri;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4028
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4030
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4029
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4033
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 4035
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4034
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->concatParamsValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4036
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

    .line 3170
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "playlist_id"

    .line 3171
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private replacePlaylistId([Landroid/content/ContentValues;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 3177
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 3178
    invoke-direct {p0, v2, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId(Landroid/content/ContentValues;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static replaceUriParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 4044
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4045
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

    .line 4046
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4047
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 4049
    :cond_0
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 4052
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private syncLegacyMediaData()V
    .locals 21

    move-object/from16 v1, p0

    .line 392
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 398
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    .line 401
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

    .line 408
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 406
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    :goto_0
    move-object v10, v9

    :goto_1
    const/4 v11, 0x1

    if-eqz v10, :cond_16

    .line 410
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_e

    .line 423
    :cond_1
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 425
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setShowSyncUserNoticeDialog(Landroid/content/Context;Z)V

    .line 428
    :goto_2
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 429
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

    .line 430
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v3

    if-eq v3, v11, :cond_3

    if-eq v3, v13, :cond_2

    goto :goto_3

    .line 437
    :cond_2
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 438
    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 433
    :cond_3
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 434
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    :cond_4
    const-string v0, "_id"

    .line 446
    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const-string v0, "volume_name"

    .line 447
    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "relative_path"

    .line 448
    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "_display_name"

    .line 449
    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v20, 0x0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 454
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

    .line 462
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move-object v0, v9

    :goto_4
    const/4 v2, 0x5

    if-eqz v0, :cond_9

    .line 465
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 466
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 467
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

    .line 468
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getType(I)I

    move-result v6

    if-eq v6, v11, :cond_7

    if-eq v6, v13, :cond_6

    goto :goto_5

    .line 475
    :cond_6
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 476
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 471
    :cond_7
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 472
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_5

    .line 483
    :cond_8
    invoke-direct {v1, v14, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateAudioEditInfo(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 484
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v6, v14

    move-object v3, v15

    const/4 v5, 0x3

    goto :goto_8

    :cond_9
    if-eqz v0, :cond_a

    .line 486
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_a
    :try_start_2
    const-string v0, "tracks"

    const/4 v3, 0x0

    .line 489
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

    .line 493
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v9

    :goto_7
    if-eqz v0, :cond_10

    .line 497
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 498
    invoke-direct {v1, v6, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateAudioEditInfo(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 500
    :cond_b
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 506
    :goto_8
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 507
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

    .line 508
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 509
    invoke-interface {v10, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getType(I)I

    move-result v12

    if-eq v12, v11, :cond_e

    if-eq v12, v5, :cond_d

    goto :goto_9

    .line 515
    :cond_d
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 512
    :cond_e
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v7, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_9

    .line 525
    :cond_f
    invoke-virtual {v0}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "date_modified"

    .line 526
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    invoke-direct {v1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->computeIdAndKey(Landroid/content/ContentValues;)V

    :try_start_4
    const-string v4, "audio"

    .line 529
    invoke-virtual {v3, v4, v9, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 532
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 536
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

    .line 540
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v13, "audio_tag"

    .line 541
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v13, "audio"

    .line 542
    invoke-virtual/range {v12 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v0, :cond_13

    if-eqz v4, :cond_13

    if-eqz v3, :cond_13

    .line 545
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

    .line 555
    :cond_12
    :goto_b
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 556
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 557
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 558
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_c

    :cond_13
    const/16 v20, 0x1

    :goto_c
    if-nez v20, :cond_14

    .line 563
    iget v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    add-int/2addr v0, v11

    iput v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    .line 564
    iget v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    if-gt v0, v2, :cond_14

    .line 565
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncLegacyMediaData()V

    .line 575
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

    .line 577
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 579
    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setLegacyDataCopyCompleted(Landroid/content/Context;Z)V

    return-void

    :cond_15
    move-object v15, v3

    goto/16 :goto_2

    .line 412
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

    .line 414
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 416
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v11}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setLegacyDataCopyCompleted(Landroid/content/Context;Z)V

    if-eqz v10, :cond_17

    .line 420
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_17
    return-void
.end method

.method private syncMediaStoreAudioData()V
    .locals 39

    .line 1198
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 1200
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isLegacyDataCopyCompleted(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 1208
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isMediaStoreVersionChanged()Z

    move-result v0

    .line 1209
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isMediaStoreGenerationChanged()Z

    move-result v1

    .line 1211
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v10, p0

    .line 1212
    iget-object v3, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    const-string v12, "audio"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v9

    .line 1221
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1222
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lez v11, :cond_2

    const-string v11, "audio"

    .line 1223
    invoke-virtual {v9, v11, v5, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_2
    if-eqz v3, :cond_3

    .line 1225
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1228
    :cond_3
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v2, v3, v11, v5, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    move-object v15, v5

    move-object v12, v9

    const/4 v13, 0x0

    const/16 v19, 0x0

    goto/16 :goto_9

    :cond_4
    const-wide/16 v11, 0x0

    const-string v3, "SELECT MAX(generation_modified) AS genMod FROM audio"

    .line 1238
    invoke-virtual {v9, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1240
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1241
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    :cond_5
    if-eqz v3, :cond_6

    .line 1243
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    const-string v13, "generation_modified <= ?"

    .line 1246
    new-array v15, v6, [Ljava/lang/String;

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v4

    .line 1248
    sget-object v11, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v12, v6, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v12, v4

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v3, v2

    move-object v4, v11

    move-object v11, v5

    move-object v5, v12

    const/4 v12, 0x1

    move-object v6, v13

    const/4 v13, 0x2

    move-object v7, v15

    move-object v8, v14

    move-object v14, v9

    move-object/from16 v9, v16

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    const-string v4, "audio"

    .line 1251
    new-array v5, v12, [Ljava/lang/String;

    const-string v6, "_id"

    const/4 v9, 0x0

    aput-object v6, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v8, v11

    move-object v11, v14

    move-object v12, v4

    const/4 v4, 0x2

    move-object v13, v5

    move-object v5, v14

    move-object v14, v6

    move-object/from16 v19, v15

    move-object v15, v7

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v3, :cond_7

    .line 1253
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    goto :goto_0

    :cond_7
    const/4 v7, -0x1

    :goto_0
    if-eqz v6, :cond_8

    .line 1254
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v11

    goto :goto_1

    :cond_8
    const/4 v11, -0x1

    .line 1255
    :goto_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, -0x1

    if-eq v11, v13, :cond_10

    if-eq v7, v13, :cond_10

    if-nez v7, :cond_9

    if-eqz v11, :cond_9

    const-string v7, "audio"

    .line 1266
    invoke-virtual {v5, v7, v8, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    move v11, v7

    goto/16 :goto_7

    :cond_9
    if-eq v7, v11, :cond_10

    .line 1271
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1272
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1273
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1275
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v15

    if-eqz v15, :cond_b

    const-string v15, "_id"

    .line 1276
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1278
    :goto_2
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1279
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_a

    goto :goto_3

    :cond_a
    const/4 v13, -0x1

    goto :goto_2

    .line 1282
    :cond_b
    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v13, "_id"

    .line 1283
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1285
    :cond_c
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1286
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-nez v15, :cond_c

    .line 1289
    :cond_d
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1290
    invoke-virtual {v11, v7}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1291
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 1297
    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1298
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1300
    :cond_e
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-le v11, v4, :cond_f

    const-string v11, "audio"

    .line 1301
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "_id IN ("

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1302
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    sub-int/2addr v15, v4

    invoke-virtual {v14, v9, v15}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1301
    invoke-virtual {v5, v11, v13, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v11

    goto :goto_5

    :cond_f
    const/4 v11, 0x0

    .line 1306
    :goto_5
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1307
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_10
    const/4 v11, 0x0

    :cond_11
    :goto_7
    if-eqz v6, :cond_12

    .line 1312
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_12
    if-eqz v3, :cond_13

    .line 1313
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1314
    :cond_13
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-le v3, v4, :cond_14

    .line 1315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generation_modified > ? OR _id IN ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v12, v9, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    goto :goto_8

    :cond_14
    if-eqz v1, :cond_15

    const-string v3, "generation_modified > ?"

    move-object v6, v3

    goto :goto_8

    :cond_15
    move-object v6, v8

    :goto_8
    if-eqz v6, :cond_16

    .line 1326
    sget-object v7, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v3, v2

    const/4 v15, 0x2

    move-object v4, v7

    move-object v7, v5

    move-object v5, v12

    move-object v12, v7

    move-object/from16 v7, v19

    move-object v15, v8

    move-object v8, v13

    const/4 v13, 0x0

    move-object v9, v14

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    move-object v3, v5

    move/from16 v19, v11

    goto :goto_9

    :cond_16
    move-object v12, v5

    move-object v15, v8

    const/4 v13, 0x0

    move/from16 v19, v11

    move-object v3, v15

    :goto_9
    if-eqz v3, :cond_34

    .line 1332
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1336
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1337
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1338
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    invoke-virtual {v6}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1339
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_17
    const/4 v6, 0x0

    .line 1342
    :goto_b
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 1343
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 1344
    sget-object v9, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    invoke-virtual {v9}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_18
    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v14, 0x3

    if-eqz v11, :cond_1e

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1345
    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    if-eqz v17, :cond_18

    .line 1346
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v15, -0x1

    if-ne v13, v15, :cond_19

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_c

    .line 1347
    :cond_19
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getType(I)I

    move-result v13

    const/4 v15, 0x1

    if-eq v13, v15, :cond_1c

    if-eq v13, v14, :cond_1a

    const-string v13, "is_music"

    .line 1369
    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 1370
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 1371
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v7, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_d

    .line 1357
    :cond_1a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1358
    invoke-virtual {v7, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "volume_name"

    .line 1359
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    const-string v14, "relative_path"

    .line 1360
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1b

    const-string v14, "_display_name"

    .line 1361
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1362
    :cond_1b
    invoke-virtual {v8, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 1350
    :cond_1c
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 1351
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v11, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v15, "_id"

    .line 1352
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 1353
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v8, v11, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1d
    :goto_d
    const/4 v13, 0x0

    const/4 v15, 0x0

    goto/16 :goto_c

    .line 1377
    :cond_1e
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-long v8, v6

    const-string v6, "audio"

    const/4 v11, 0x5

    const/4 v15, 0x0

    .line 1378
    invoke-virtual {v12, v6, v15, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    add-long/2addr v8, v6

    long-to-int v13, v8

    .line 1380
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_33

    if-lez v13, :cond_32

    .line 1392
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1393
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_e
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/content/ContentValues;

    if-nez v9, :cond_1f

    goto :goto_e

    :cond_1f
    const-string v4, "volume_name"

    .line 1395
    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v4, "relative_path"

    .line 1396
    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v4, "_display_name"

    .line 1397
    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1399
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_20

    const-string v4, "_id"

    .line 1400
    invoke-virtual {v9, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1401
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_id"

    .line 1403
    invoke-virtual {v9, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v5, "audio_id"

    .line 1404
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "smart_playlists"

    const-string v7, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    .line 1406
    new-array v8, v14, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v20, v8, v4

    const/4 v4, 0x1

    aput-object v22, v8, v4

    const/4 v4, 0x2

    aput-object v23, v8, v4

    const/16 v24, 0x5

    move-object v4, v12

    move-object v6, v9

    move-object/from16 v25, v9

    move/from16 v9, v24

    invoke-virtual/range {v4 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    const-string v5, "audio_tag"

    const-string v7, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    .line 1411
    new-array v8, v14, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v20, v8, v4

    const/16 v20, 0x1

    aput-object v22, v8, v20

    const/4 v4, 0x2

    aput-object v23, v8, v4

    const/4 v9, 0x5

    move-object v4, v12

    move-object/from16 v6, v25

    invoke-virtual/range {v4 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    goto/16 :goto_e

    :cond_20
    const/16 v20, 0x1

    goto/16 :goto_e

    :cond_21
    const/16 v20, 0x1

    .line 1423
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_22

    const-string v4, "audio_tag"

    const/4 v6, 0x0

    .line 1424
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "audio_id IN ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1425
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    sub-int/2addr v8, v5

    const/4 v9, 0x0

    invoke-virtual {v11, v9, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v12

    move-object/from16 v21, v12

    move-object v12, v4

    move v9, v13

    const/16 v22, 0x0

    move-object v13, v6

    const/4 v6, 0x3

    move-object v14, v7

    move-object v7, v15

    const/4 v5, 0x1

    const/16 v23, 0x2

    move-object v15, v8

    .line 1424
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v8, v4

    goto :goto_f

    :cond_22
    move-object/from16 v21, v12

    move v9, v13

    move-object v7, v15

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/16 v22, 0x0

    const/16 v23, 0x2

    move-object v8, v7

    :goto_f
    if-eqz v8, :cond_31

    .line 1429
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_31

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_31

    const-string v4, "audio_id"

    .line 1433
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v11, "title"

    .line 1434
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v11, "artist"

    .line 1435
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v11, "album"

    .line 1436
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v11, "genre"

    .line 1437
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v11, "track"

    .line 1438
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v7, "year"

    .line 1439
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    move/from16 v24, v9

    .line 1442
    :goto_10
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 1443
    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 1444
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v26, v4

    .line 1445
    invoke-interface {v8, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1446
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    move/from16 v27, v1

    .line 1447
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v0

    .line 1448
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v29, v2

    .line 1449
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-lez v5, :cond_23

    move/from16 v30, v7

    const-string v7, "_id"

    move-object/from16 v31, v8

    .line 1452
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v9, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_11

    :cond_23
    move/from16 v30, v7

    move-object/from16 v31, v8

    .line 1454
    :goto_11
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_24

    const-string v7, "title"

    .line 1455
    invoke-virtual {v9, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    invoke-static {v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "title_key"

    .line 1457
    invoke-virtual {v9, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :cond_24
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_26

    const-string v6, "audio_artists"

    const/4 v7, 0x3

    .line 1460
    new-array v8, v7, [Ljava/lang/String;

    const-string v7, "_id"

    aput-object v7, v8, v22

    const-string v7, "artist"

    move/from16 v16, v11

    const/4 v11, 0x1

    aput-object v7, v8, v11

    const-string v7, "artist_key"

    aput-object v7, v8, v23

    const-string v7, "artist = ?"

    move/from16 v17, v15

    new-array v15, v11, [Ljava/lang/String;

    aput-object v4, v15, v22

    const/16 v18, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v34, v16

    move-object/from16 v11, v21

    move/from16 v35, v12

    move-object v12, v6

    move/from16 v36, v13

    move-object v13, v8

    move/from16 v37, v14

    move-object v14, v7

    move/from16 v38, v17

    move-object/from16 v16, v18

    move-object/from16 v17, v32

    move-object/from16 v18, v33

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_25

    .line 1468
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_25

    const-string v7, "artist"

    .line 1469
    invoke-virtual {v9, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "artist_id"

    const-string v7, "_id"

    .line 1472
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1471
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1470
    invoke-virtual {v9, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "artist_key"

    const-string v7, "artist_key"

    .line 1475
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1474
    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1473
    invoke-virtual {v9, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    if-eqz v6, :cond_27

    .line 1477
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_12

    :cond_26
    move/from16 v34, v11

    move/from16 v35, v12

    move/from16 v36, v13

    move/from16 v37, v14

    move/from16 v38, v15

    .line 1479
    :cond_27
    :goto_12
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string v12, "audio_albums"

    const/4 v4, 0x3

    .line 1480
    new-array v13, v4, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v13, v22

    const-string v4, "album"

    const/4 v6, 0x1

    aput-object v4, v13, v6

    const-string v4, "album_key"

    aput-object v4, v13, v23

    const-string v14, "album = ?"

    new-array v15, v6, [Ljava/lang/String;

    aput-object v10, v15, v22

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, v21

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 1488
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_28

    const-string v6, "album"

    .line 1489
    invoke-virtual {v9, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "album_id"

    const-string v7, "_id"

    .line 1492
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1491
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 1490
    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "album_key"

    const-string v7, "album_key"

    .line 1495
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1494
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1493
    invoke-virtual {v9, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    if-eqz v4, :cond_29

    .line 1497
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1499
    :cond_29
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v12, "audio_genres"

    const/4 v6, 0x3

    .line 1500
    new-array v13, v6, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v13, v22

    const-string v4, "genre"

    const/4 v7, 0x1

    aput-object v4, v13, v7

    const-string v4, "genre_key"

    aput-object v4, v13, v23

    const-string v14, "genre = ?"

    new-array v15, v7, [Ljava/lang/String;

    aput-object v1, v15, v22

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v11, v21

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_2a

    .line 1509
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_2a

    const-string v8, "genre"

    .line 1510
    invoke-virtual {v9, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "genre_id"

    const-string v8, "_id"

    .line 1513
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1512
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1511
    invoke-virtual {v9, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "genre_key"

    const-string v8, "genre_key"

    .line 1516
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1515
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1514
    invoke-virtual {v9, v1, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    if-eqz v4, :cond_2c

    .line 1518
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_13

    :cond_2b
    const/4 v6, 0x3

    const/4 v7, 0x1

    .line 1520
    :cond_2c
    :goto_13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    const-string v1, "track"

    .line 1521
    invoke-virtual {v9, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    :cond_2d
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    const-string v0, "year"

    .line 1524
    invoke-virtual {v9, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    :cond_2e
    invoke-virtual {v9}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "audio"

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    const/4 v2, 0x5

    move/from16 v10, v26

    move-object/from16 v4, v21

    const/4 v11, 0x1

    move-object v5, v0

    const/4 v0, 0x3

    move-object v6, v9

    move/from16 v12, v30

    const/4 v13, 0x0

    move-object v7, v1

    move-object/from16 v1, v31

    move v9, v2

    invoke-virtual/range {v4 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    add-int v24, v24, v2

    goto :goto_14

    :cond_2f
    move/from16 v10, v26

    move/from16 v12, v30

    move-object/from16 v1, v31

    const/4 v0, 0x3

    const/4 v11, 0x1

    const/4 v13, 0x0

    .line 1532
    :goto_14
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_30

    move/from16 v4, v24

    goto :goto_15

    :cond_30
    move-object v8, v1

    move v4, v10

    move v7, v12

    move/from16 v1, v27

    move/from16 v0, v28

    move-object/from16 v2, v29

    move/from16 v11, v34

    move/from16 v12, v35

    move/from16 v13, v36

    move/from16 v14, v37

    move/from16 v15, v38

    const/4 v5, 0x1

    const/4 v6, 0x3

    move-object/from16 v10, p0

    goto/16 :goto_10

    :cond_31
    move/from16 v28, v0

    move/from16 v27, v1

    move-object/from16 v29, v2

    move-object v13, v7

    move-object v1, v8

    move v4, v9

    :goto_15
    if-eqz v1, :cond_35

    .line 1537
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_16

    :cond_32
    move/from16 v28, v0

    move/from16 v27, v1

    move-object/from16 v29, v2

    move v9, v13

    move-object v13, v15

    move v4, v9

    goto :goto_16

    :cond_33
    move v9, v13

    move v6, v9

    move-object/from16 v10, p0

    const/4 v13, 0x0

    goto/16 :goto_b

    :cond_34
    move/from16 v28, v0

    move/from16 v27, v1

    move-object/from16 v29, v2

    move-object v13, v15

    const/16 v22, 0x0

    const/4 v4, 0x0

    :cond_35
    :goto_16
    if-eqz v3, :cond_36

    .line 1544
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_36
    if-gtz v4, :cond_37

    if-lez v19, :cond_38

    .line 1547
    :cond_37
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    move-object/from16 v1, v29

    invoke-virtual {v1, v0, v13}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_38
    if-eqz v28, :cond_39

    .line 1550
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateMediaStoreVersion()V

    :cond_39
    if-eqz v27, :cond_3a

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateMediaStoreGeneration()V

    :cond_3a
    return-void
.end method

.method private syncSmartPlaylistToLocalDb(Landroid/content/Context;II)V
    .locals 21

    move/from16 v1, p2

    .line 3493
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-gtz v1, :cond_1

    return-void

    :cond_1
    const-string v0, "external"

    int-to-long v2, v1

    .line 3495
    invoke-static {v0, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_b

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 3499
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

    .line 3549
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3551
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    .line 3554
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 3551
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3556
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void

    .line 3506
    :cond_3
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_9

    move-object/from16 v5, p0

    .line 3507
    :try_start_3
    iget-object v0, v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    .line 3509
    :cond_4
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "audio_id"

    .line 3510
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v8, "volume_name"

    .line 3511
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "relative_path"

    .line 3512
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v13, "_display_name"

    .line 3513
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3514
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 3515
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    goto :goto_2

    :cond_5
    const-string v14, "audio_id"

    .line 3518
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "playlist_id"

    .line 3519
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v14, "volume_name"

    .line 3520
    invoke-virtual {v7, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "relative_path"

    .line 3521
    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_display_name"

    .line 3522
    invoke-virtual {v7, v8, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string v14, "smart_playlists"

    const/4 v15, 0x0

    const-string v16, "playlist_id = ? AND audio_id = ?"

    .line 3524
    new-array v8, v12, [Ljava/lang/String;

    .line 3527
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

    .line 3524
    invoke-virtual/range {v13 .. v20}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3529
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 3530
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 3533
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 3535
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    :goto_1
    :try_start_6
    const-string v0, "smart_playlists"

    .line 3539
    invoke-virtual {v6, v0, v2, v7, v11}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 3541
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3543
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

    .line 3549
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3551
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    .line 3554
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 3551
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

    .line 3546
    :goto_7
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v2, :cond_c

    .line 3549
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3551
    :try_start_a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    .line 3554
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 3551
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 3556
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catchall_3
    move-exception v0

    goto :goto_5

    :goto_8
    if-eqz v4, :cond_a

    .line 3549
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3551
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v6, "_id = ?"

    new-array v3, v3, [Ljava/lang/String;

    .line 3554
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v10

    .line 3551
    invoke-virtual {v0, v4, v6, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    .line 3556
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3559
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

    .line 587
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 588
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

    .line 589
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, -0x1

    .line 590
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

    .line 605
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 606
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 607
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 610
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz p2, :cond_3

    .line 595
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 596
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 597
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 600
    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :cond_4
    invoke-virtual {v0}, Landroid/content/ContentValues;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_6

    .line 620
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v1, "_id"

    .line 621
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "volume_name"

    .line 622
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "relative_path"

    .line 623
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_display_name"

    .line 624
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "audio_id"

    .line 626
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "volume_name"

    .line 627
    invoke-virtual {v0, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "relative_path"

    .line 628
    invoke-virtual {v0, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "_display_name"

    .line 629
    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    if-eqz v7, :cond_5

    if-eqz p1, :cond_5

    :try_start_0
    const-string v1, "audio_tag"

    const-string v8, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    .line 634
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

    .line 640
    new-array v3, v6, [Ljava/lang/String;

    .line 642
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    .line 640
    invoke-virtual {p2, p1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    :goto_3
    if-gtz p1, :cond_6

    const-string p1, "audio_tag"

    const/4 v1, 0x0

    .line 645
    invoke-virtual {p2, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 648
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

    .line 2776
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sonyericsson.music.musicinfo"

    const-string v5, "media"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 2780
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v14, -0x1

    if-nez v3, :cond_0

    return v14

    .line 2783
    :cond_0
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v3, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    const/16 v4, 0x70

    if-ne v3, v4, :cond_1

    .line 2850
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2851
    invoke-virtual {v1, v13, v2, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 2853
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

    .line 2786
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2787
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 2789
    invoke-direct {v0, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->computeIdAndKey(Landroid/content/ContentValues;)V

    const-string v4, "audio"

    const/4 v10, 0x4

    .line 2791
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

    .line 2796
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2798
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2799
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

    .line 2800
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2801
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

    .line 2810
    :pswitch_0
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 2806
    :pswitch_1
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2818
    :cond_5
    invoke-virtual {v4}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    const-string v6, "_id"

    .line 2820
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "volume_name"

    .line 2821
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "relative_path"

    .line 2822
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_display_name"

    .line 2823
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "audio_id"

    .line 2825
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "volume_name"

    .line 2826
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "relative_path"

    .line 2827
    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_display_name"

    .line 2828
    invoke-virtual {v4, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "audio_tag"

    const-string v10, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    .line 2829
    new-array v5, v14, [Ljava/lang/String;

    aput-object v7, v5, v16

    aput-object v8, v5, v17

    aput-object v9, v5, v18

    invoke-virtual {v1, v6, v4, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_7

    const-string v5, "audio_tag"

    const/4 v6, 0x0

    .line 2834
    invoke-virtual {v1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2835
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2839
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v3, "audio"

    .line 2840
    invoke-virtual {v1, v3, v2, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 2844
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2845
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

    .line 3892
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 3893
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3895
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3896
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    .line 3895
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3897
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3898
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    .line 3897
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3899
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3900
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3904
    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isUserCreatedPlaylist(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3907
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3909
    :cond_0
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3910
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v3

    .line 3909
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3914
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-le v3, v4, :cond_1

    .line 3915
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

    .line 3918
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

    .line 3922
    :cond_2
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3923
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 3922
    invoke-direct {p0, p2, v2, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->copyContentValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return v0

    .line 3933
    :cond_4
    :goto_0
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3934
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3935
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 3933
    invoke-direct {p0, p2, v2, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->copyContentValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3937
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3938
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3939
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 3937
    invoke-direct {p0, p2, v2, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->copyContentValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3941
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 3943
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p2, :cond_5

    const-string p2, "external_primary"

    .line 3946
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 3947
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    aget-object p3, p4, v0

    .line 3948
    invoke-virtual {p2, p3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 3949
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 3950
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3951
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3952
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3953
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {p3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 3954
    invoke-virtual {p1, p2, v1, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3956
    :cond_5
    sget-object p2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3957
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_6
    return v0
.end method

.method private static validateAlbumValues(Landroid/content/ContentValues;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "artist"

    .line 3134
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "album"

    .line 3135
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "art_path"

    .line 3136
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

    .line 3121
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "artist"

    .line 3122
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

.method private validateMediastoreInsertValuesAvailable(Landroid/content/ContentValues;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string v1, "path"

    .line 3188
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mediastore_id"

    .line 3189
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

    .line 3160
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "name"

    .line 3161
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

    .line 3148
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

    .line 3776
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3777
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3778
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3779
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3781
    :try_start_1
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "playlists"

    .line 3782
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x2

    const/4 v11, 0x0

    .line 3785
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

    .line 3787
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "path"

    .line 3788
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "mediastore_id"

    .line 3789
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3791
    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3792
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

    .line 3796
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3803
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

    .line 3804
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mediastore_id"

    .line 3805
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3807
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 3808
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v3, v5, :cond_3

    const-string v3, "playlists"

    const-string v5, "mediastore_id =?"

    .line 3811
    new-array v6, v13, [Ljava/lang/String;

    .line 3813
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v12

    .line 3811
    invoke-virtual {v10, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 3817
    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "is_available"

    .line 3818
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3824
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

    .line 3826
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3827
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3828
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

    .line 3829
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mediastore_id"

    .line 3830
    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3831
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-ne v8, v3, :cond_6

    goto :goto_3

    :cond_7
    move-object v6, v11

    :goto_3
    if-nez v6, :cond_5

    .line 3843
    sget-boolean v4, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v4, :cond_8

    const-string v4, "playlists"

    const-string v5, "mediastore_id =?"

    .line 3844
    new-array v6, v13, [Ljava/lang/String;

    .line 3846
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v12

    .line 3844
    invoke-virtual {v10, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    const-string v4, "playlists"

    const-string v5, "mediastore_id =?"

    .line 3848
    new-array v6, v13, [Ljava/lang/String;

    .line 3849
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v12

    .line 3848
    invoke-virtual {v10, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 3853
    :cond_9
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3855
    :try_start_5
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3857
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    :catchall_1
    move-exception p1

    move-object v2, v11

    :goto_4
    if-eqz v2, :cond_a

    .line 3796
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3798
    :cond_a
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 3855
    :try_start_7
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3856
    throw p1

    :catchall_3
    move-exception p1

    .line 3857
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12

    .line 1919
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_e

    .line 1923
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1927
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_d

    .line 1932
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1933
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eq v4, v7, :cond_9

    const/16 v8, 0xc

    if-eq v4, v8, :cond_5

    packed-switch v4, :pswitch_data_0

    .line 2019
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

    .line 1974
    :pswitch_0
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1975
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v5

    if-eq v5, v2, :cond_2

    .line 1977
    invoke-direct {p0, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 1979
    invoke-direct {p0, p2, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId([Landroid/content/ContentValues;I)V

    .line 1980
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1982
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1980
    invoke-static {p1, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1983
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0

    .line 1985
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p1

    monitor-exit v4

    return p1

    :cond_2
    :goto_0
    if-lez v1, :cond_3

    .line 1990
    invoke-static {v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1991
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1993
    :cond_3
    monitor-exit v4

    return v1

    :catchall_0
    move-exception p1

    .line 1994
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1970
    :pswitch_1
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

    .line 1960
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1961
    :try_start_1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->bulkInsertPlaylist(Ljava/util/List;)I

    move-result p2

    if-lez p2, :cond_4

    .line 1963
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1965
    :cond_4
    monitor-exit p1

    return p2

    :catchall_1
    move-exception p2

    .line 1966
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    .line 1998
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 1999
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2001
    :try_start_2
    array-length v2, p2

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v4, v2, :cond_7

    aget-object v9, p2, v4

    const-string v10, "cloud_files"

    .line 2002
    invoke-virtual {p1, v10, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-lez v11, :cond_6

    add-int/lit8 v8, v8, 0x1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    if-lez v8, :cond_8

    .line 2009
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x1

    goto :goto_2

    :cond_8
    move-object p2, v3

    .line 2011
    :goto_2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2013
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :catchall_2
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2014
    throw p2

    .line 1940
    :cond_9
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 1941
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1943
    :try_start_3
    array-length v2, p2

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v4, v2, :cond_b

    aget-object v7, p2, v4

    .line 1944
    invoke-static {v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateArtistValues(Landroid/content/ContentValues;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "artists"

    .line 1946
    invoke-virtual {p1, v9, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    cmp-long v7, v9, v5

    if-lez v7, :cond_a

    add-int/lit8 v8, v8, 0x1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1952
    :cond_b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1954
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object p2, v3

    :goto_4
    if-eqz v1, :cond_c

    if-lez v8, :cond_c

    if-eqz p2, :cond_c

    .line 2023
    invoke-virtual {v0, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_c
    return v8

    :catchall_3
    move-exception p2

    .line 1954
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1955
    throw p2

    .line 1929
    :cond_d
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->bulkInsertMediaInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    throw v3

    .line 1920
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unauthorized bulk insert attempt blocked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 292
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    .line 296
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

    .line 369
    :pswitch_0
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez p2, :cond_1

    return-object p1

    .line 370
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isLegacyDataCopyCompleted(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 371
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncLegacyMediaData()V

    .line 373
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->callSyncMediaStoreAudio()V

    return-object p1

    .line 363
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 365
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2, v6, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->getPlaybackUriAndToken(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/sqlite/SQLiteDatabase;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 357
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 359
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2, v5, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->getPlaybackUriAndToken(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/sqlite/SQLiteDatabase;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 329
    :pswitch_3
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncHighResMediaLock:Ljava/lang/Object;

    monitor-enter p2

    .line 333
    :try_start_0
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 335
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-nez p3, :cond_5

    .line 337
    iget p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutiveHighResMediaSyncs:I

    add-int/2addr p3, v6

    iput p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutiveHighResMediaSyncs:I

    rem-int/lit8 p3, p3, 0xa

    if-nez p3, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_4

    .line 341
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 344
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 346
    :cond_4
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 352
    :cond_5
    :goto_1
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 353
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 298
    :pswitch_4
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncPlaylistsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 302
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 307
    iget v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutivePlaylistsSyncs:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutivePlaylistsSyncs:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-eqz v5, :cond_7

    .line 311
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 315
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 318
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v6, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 324
    :cond_8
    :goto_2
    monitor-exit p2

    return-object p1

    :catchall_1
    move-exception p1

    .line 325
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 293
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

    .line 2043
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v3, v4, :cond_23

    .line 2047
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 2049
    invoke-direct/range {p0 .. p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->deleteMediaInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2052
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2053
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    packed-switch v5, :pswitch_data_0

    .line 2324
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete: uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "search_history"

    .line 2319
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    move-object v12, v2

    move-object v13, v4

    const/4 v15, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_7

    :pswitch_2
    const-string v0, "cloud_files"

    .line 2310
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    move-object v12, v2

    move-object v13, v4

    const/4 v15, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_7

    .line 2290
    :pswitch_3
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2293
    :try_start_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object/from16 v5, p2

    .line 2294
    invoke-static {v4, v5, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 2296
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2298
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2300
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2301
    throw v0

    :pswitch_4
    move-object/from16 v5, p2

    .line 2204
    iget-object v15, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v15

    .line 2205
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    if-nez v2, :cond_d

    .line 2209
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    .line 2210
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v5, v4, :cond_a

    .line 2212
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

    .line 2216
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v6}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v6

    .line 2217
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2216
    invoke-static {v0, v6, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replaceUriParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 2219
    invoke-static {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v10

    .line 2222
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-ne v5, v6, :cond_7

    iget-object v5, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    array-length v5, v5

    if-le v5, v12, :cond_7

    const/4 v5, 0x3

    .line 2224
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

    if-nez v5, :cond_2

    .line 2229
    monitor-exit v15

    return v13

    .line 2230
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_3

    .line 2231
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2232
    monitor-exit v15

    return v13

    .line 2235
    :cond_3
    iget-object v6, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    .line 2236
    iget-object v7, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    :goto_0
    const-string v9, "_id"

    .line 2239
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 2240
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const-string v9, "audio_id"

    .line 2241
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v14, "play_order"

    .line 2242
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 2243
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    const-string v12, "audio_id = %d AND play_order = %d "

    new-array v13, v11, [Ljava/lang/Object;

    .line 2246
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v13, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v13, v10

    .line 2243
    invoke-static {v14, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 2247
    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    .line 2249
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 2250
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    const/16 v19, 0x0

    .line 2252
    :goto_2
    array-length v7, v6

    if-ge v5, v7, :cond_8

    .line 2253
    aget-object v7, v6, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2254
    aget-object v7, v6, v5

    const/4 v8, 0x0

    invoke-virtual {v3, v4, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    add-int v19, v19, v7

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_0

    :cond_7
    move-object v14, v10

    .line 2258
    iget-object v5, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    :cond_8
    if-lez v19, :cond_9

    .line 2261
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "date_updated"

    .line 2262
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2263
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2265
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2266
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2268
    :cond_9
    monitor-exit v15

    return v19

    .line 2271
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v2

    const/4 v4, -0x5

    if-ne v5, v4, :cond_c

    const-string v4, "playlist_id = -5 AND audio_id = ? "

    .line 2275
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    .line 2276
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const-string v6, "smart_playlists"

    .line 2277
    invoke-virtual {v5, v6, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b

    .line 2279
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2280
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2282
    :cond_b
    monitor-exit v15

    return v2

    .line 2285
    :cond_c
    monitor-exit v15

    const/4 v0, 0x0

    return v0

    .line 2206
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 2286
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_5
    move-object/from16 v5, p2

    .line 2154
    iget-object v6, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2155
    :try_start_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    if-nez v2, :cond_12

    .line 2169
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    if-eq v2, v4, :cond_11

    .line 2173
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_f

    const-string v4, "_id = ?"

    const/4 v7, 0x1

    .line 2176
    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 2178
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v8, "playlists"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2181
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2182
    invoke-virtual {v2, v8, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_e

    .line 2184
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 2186
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2184
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    .line 2187
    invoke-virtual {v3, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2189
    :cond_e
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2191
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-lez v13, :cond_10

    .line 2195
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2196
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 2191
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2192
    throw v0

    :cond_f
    const/4 v13, 0x0

    .line 2199
    :cond_10
    :goto_3
    monitor-exit v6

    return v13

    .line 2171
    :cond_11
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

    .line 2156
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 2200
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :pswitch_6
    move-object/from16 v5, p2

    .line 2121
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2122
    :try_start_5
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    if-nez v2, :cond_15

    .line 2126
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v2

    const-string v5, "playlists"

    .line 2128
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    .line 2129
    iget-object v7, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 2131
    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 2132
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 2134
    :try_start_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2135
    invoke-virtual {v7, v5, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_13

    .line 2137
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 2138
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v5, v8, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2141
    :cond_13
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 2143
    :try_start_7
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-lez v2, :cond_14

    const/4 v5, 0x0

    .line 2146
    invoke-virtual {v3, v6, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2147
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2149
    :cond_14
    monitor-exit v4

    return v2

    :catchall_4
    move-exception v0

    .line 2143
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2144
    throw v0

    .line 2123
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    .line 2150
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :pswitch_7
    move-object/from16 v5, p2

    const-string v4, "tracks"

    .line 2109
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_16

    move-object v12, v2

    move-object v0, v4

    move-object v2, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 2113
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Delete: Track uri not supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    move-object/from16 v5, p2

    const-string v4, "albums"

    .line 2089
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_17

    goto :goto_4

    :cond_17
    const-string v2, "artist"

    .line 2093
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "album"

    .line 2094
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2095
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, "album =? AND artist =?"

    .line 2101
    new-array v6, v11, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    aput-object v2, v6, v0

    move-object v2, v6

    :goto_4
    const-string v14, "art_path"

    move-object v12, v2

    move-object v0, v4

    move-object v2, v5

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_7

    .line 2096
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Delete: Album uri not supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    move-object/from16 v5, p2

    const-string v4, "artists"

    .line 2065
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_19

    move-object v0, v5

    goto :goto_6

    :cond_19
    const-string v2, "name"

    .line 2069
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2070
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    const-string v0, "artist =?"

    const/4 v5, 0x1

    goto :goto_5

    :cond_1a
    const-string v2, "id"

    .line 2073
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2074
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "_id =?"

    const/4 v5, 0x1

    .line 2081
    :goto_5
    new-array v6, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v6, v5

    move-object v2, v6

    :goto_6
    const-string v14, "art_path"

    move-object v12, v2

    const/4 v13, 0x0

    const/4 v15, 0x0

    move-object v2, v0

    move-object v0, v4

    .line 2327
    :goto_7
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 2330
    :try_start_8
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    if-eqz v14, :cond_1e

    const/4 v4, 0x1

    .line 2336
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

    if-eqz v4, :cond_1c

    .line 2338
    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2339
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 2340
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    const/4 v7, 0x0

    :goto_8
    add-int/lit8 v8, v7, 0x1

    .line 2343
    new-instance v9, Ljava/io/File;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v9, v6, v7

    .line 2344
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-nez v7, :cond_1b

    move-object v14, v6

    goto :goto_9

    :cond_1b
    move v7, v8

    goto :goto_8

    :catchall_6
    move-exception v0

    goto :goto_b

    :cond_1c
    const/4 v14, 0x0

    :goto_9
    if-eqz v4, :cond_1f

    .line 2348
    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_c

    :catchall_7
    move-exception v0

    goto :goto_a

    :catchall_8
    move-exception v0

    move-object v1, v11

    :goto_a
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_1d

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2350
    :cond_1d
    throw v0

    :cond_1e
    move-object v1, v11

    const/16 v16, 0x0

    const/4 v14, 0x0

    .line 2352
    :cond_1f
    :goto_c
    invoke-virtual {v1, v0, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_21

    if-eqz v14, :cond_20

    .line 2356
    array-length v2, v14

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_20

    aget-object v5, v14, v4

    .line 2357
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_20
    if-eqz v15, :cond_21

    if-eqz v13, :cond_21

    const/4 v2, 0x0

    .line 2364
    invoke-virtual {v3, v13, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2367
    :cond_21
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 2369
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_9
    move-exception v0

    goto :goto_e

    :catchall_a
    move-exception v0

    move-object v1, v11

    :goto_e
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2370
    throw v0

    .line 2077
    :cond_22
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete: Artist uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2044
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unauthorized delete attempt blocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
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

    .line 1617
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v3, v4, :cond_22

    .line 1621
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v3, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1623
    invoke-direct/range {p0 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->insertMediaInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1626
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1627
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v2}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    packed-switch v5, :pswitch_data_0

    .line 1863
    :pswitch_0
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

    .line 1851
    :pswitch_1
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "search_history"

    .line 1852
    invoke-virtual {v4, v5, v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_20

    .line 1855
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x1

    goto/16 :goto_d

    .line 1839
    :pswitch_2
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "cloud_files"

    .line 1840
    invoke-virtual {v4, v5, v12, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_20

    .line 1843
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x1

    goto/16 :goto_d

    :pswitch_3
    if-eqz v0, :cond_20

    const-string v5, "name"

    .line 1787
    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "service_id"

    .line 1788
    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    if-eqz v5, :cond_7

    if-eqz v8, :cond_7

    .line 1791
    iget-object v13, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    .line 1794
    :try_start_0
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v16, "name=? AND service_id=?"

    .line 1799
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

    .line 1801
    invoke-static/range {v14 .. v19}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_1

    .line 1803
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "_id"

    .line 1804
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1805
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v12, v5

    goto :goto_3

    :cond_1
    const/4 v6, -0x1

    :goto_0
    if-eqz v5, :cond_2

    .line 1809
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eq v6, v4, :cond_4

    const-string v4, "_id=?"

    .line 1816
    new-array v5, v9, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 1818
    invoke-static {v13, v0, v4, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    int-to-long v4, v6

    goto :goto_1

    :cond_3
    move-wide v4, v10

    goto :goto_1

    .line 1822
    :cond_4
    invoke-static {v13, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v4

    :goto_1
    cmp-long v0, v4, v10

    if-lez v0, :cond_5

    .line 1826
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v7, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v12

    .line 1829
    :goto_2
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1831
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v12, :cond_6

    .line 1809
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1811
    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 1831
    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1832
    throw v0

    :cond_7
    move-object v0, v12

    goto/16 :goto_d

    .line 1707
    :pswitch_4
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1709
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v13

    .line 1708
    invoke-direct {v1, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v13

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    .line 1709
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v13, v4, :cond_9

    .line 1711
    invoke-direct {v1, v0, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId(Landroid/content/ContentValues;I)V

    const-string v4, "external"

    int-to-long v6, v13

    .line 1713
    invoke-static {v4, v6, v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1714
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1717
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1718
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1720
    :cond_8
    monitor-exit v5

    return-object v0

    .line 1722
    :cond_9
    sget-boolean v14, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v14, :cond_a

    monitor-exit v5

    return-object v12

    :cond_a
    const/4 v14, -0x3

    if-eq v13, v14, :cond_18

    if-ne v13, v4, :cond_b

    goto/16 :goto_a

    :cond_b
    const/4 v4, -0x4

    if-eq v13, v4, :cond_c

    if-ne v13, v14, :cond_d

    :cond_c
    const/4 v13, -0x7

    .line 1731
    :cond_d
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1732
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    const-string v15, "audio_id"

    .line 1733
    invoke-virtual {v0, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v0, v8, v10

    if-gtz v0, :cond_e

    .line 1735
    monitor-exit v5

    return-object v12

    :cond_e
    const-string v0, "audio_id"

    .line 1737
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v0, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "playlist_id"

    .line 1738
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v0, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "external"

    .line 1743
    invoke-static {v0, v8, v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1745
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

    if-nez v6, :cond_10

    if-eqz v6, :cond_f

    .line 1761
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_f
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    return-object v12

    .line 1752
    :cond_10
    :try_start_8
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "volume_name"

    .line 1753
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    const-string v0, "relative_path"

    .line 1754
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    const-string v0, "_display_name"

    .line 1755
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object v8, v12

    goto :goto_6

    :cond_11
    move-object v0, v12

    move-object v7, v0

    move-object v8, v7

    :goto_4
    if-eqz v6, :cond_13

    .line 1761
    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v7, v12

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v6, v12

    move-object v7, v6

    :goto_5
    move-object v8, v7

    .line 1758
    :goto_6
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v6, :cond_12

    .line 1761
    :try_start_d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_12
    move-object v0, v12

    .line 1765
    :cond_13
    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 1766
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_14

    goto :goto_8

    :cond_14
    const-string v6, "volume_name"

    .line 1770
    invoke-virtual {v14, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "relative_path"

    .line 1771
    invoke-virtual {v14, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_display_name"

    .line 1772
    invoke-virtual {v14, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "smart_playlists"

    const/4 v6, 0x5

    .line 1773
    invoke-virtual {v4, v0, v12, v14, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_15

    .line 1775
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1776
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1777
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    monitor-exit v5

    return-object v0

    .line 1781
    :cond_15
    monitor-exit v5

    return-object v12

    .line 1767
    :cond_16
    :goto_8
    monitor-exit v5

    return-object v12

    :catchall_4
    move-exception v0

    move-object v12, v6

    :goto_9
    if-eqz v12, :cond_17

    .line 1761
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 1763
    :cond_17
    throw v0

    .line 1724
    :cond_18
    :goto_a
    monitor-exit v5

    return-object v12

    :catchall_5
    move-exception v0

    .line 1782
    monitor-exit v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    .line 1703
    :pswitch_5
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

    .line 1670
    :pswitch_6
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1671
    :try_start_e
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validatePlaylistValues(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1672
    invoke-direct {v1, v3, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->createMediaStorePlaylistOrGetInfo(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z

    move-result v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v5, :cond_1c

    .line 1675
    :try_start_f
    invoke-direct {v1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateMediastoreInsertValuesAvailable(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1679
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 1680
    :try_start_10
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v6, "playlists"

    const/4 v7, 0x5

    .line 1681
    invoke-virtual {v5, v6, v12, v0, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    cmp-long v0, v6, v10

    if-lez v0, :cond_19

    .line 1685
    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1687
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1688
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v12, v0

    .line 1690
    :cond_19
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v5, :cond_1c

    .line 1693
    :try_start_11
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_c

    :catchall_6
    move-exception v0

    goto :goto_b

    .line 1676
    :cond_1a
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

    :goto_b
    if-eqz v5, :cond_1b

    .line 1693
    :try_start_13
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1695
    :cond_1b
    throw v0

    .line 1698
    :cond_1c
    :goto_c
    monitor-exit v4

    return-object v12

    :catchall_8
    move-exception v0

    .line 1699
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    throw v0

    .line 1658
    :pswitch_7
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateTrackValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1659
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "tracks"

    const/4 v6, 0x5

    .line 1660
    invoke-virtual {v4, v5, v12, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_1d

    .line 1663
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_d

    :cond_1d
    move-object v0, v12

    goto :goto_d

    .line 1646
    :pswitch_8
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateAlbumValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1647
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "albums"

    const/4 v6, 0x5

    .line 1648
    invoke-virtual {v4, v5, v12, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_1e

    .line 1651
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_d

    :cond_1e
    move-object v0, v12

    goto :goto_d

    .line 1633
    :pswitch_9
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateArtistValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1634
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "artists"

    const/4 v6, 0x5

    .line 1635
    invoke-virtual {v4, v5, v12, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long v0, v4, v10

    if-lez v0, :cond_1f

    .line 1639
    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_d

    :cond_1f
    move-object v0, v12

    goto :goto_d

    :cond_20
    move-object v0, v12

    :goto_d
    if-eqz v7, :cond_21

    if-eqz v0, :cond_21

    .line 1867
    invoke-virtual {v3, v0, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_21
    return-object v0

    .line 1618
    :cond_22
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unauthorized insert attempt blocked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isMediaStoreGenerationChanged()Z
    .locals 8

    .line 1571
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1572
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "external"

    invoke-static {v0, v2}, Landroid/provider/MediaStore;->getGeneration(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    .line 1573
    sget-wide v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    .line 1574
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getGenerationCode(Landroid/content/Context;)J

    move-result-wide v4

    sput-wide v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    .line 1576
    :cond_1
    sget-wide v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 1577
    :cond_2
    sput-wide v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    return v1
.end method

.method public isMediaStoreVersionChanged()Z
    .locals 2

    .line 1560
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1561
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore;->getVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1562
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1563
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->getMediaVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    .line 1565
    :cond_1
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 1566
    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    return v1
.end method

.method public onCreate()Z
    .locals 2

    .line 276
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

    .line 3030
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 3036
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

    .line 3096
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3099
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 3100
    invoke-static {p1, v0, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->getAlbumArtFileDescriptor(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 3105
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "openFile: not supported uri"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3072
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "force"

    const-string v4, "true"

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 3073
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    const-string p1, "art_path"

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 3072
    invoke-virtual/range {v4 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 3076
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "art_path"

    .line 3078
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3077
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3080
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3081
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3082
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderUtils;->parseFileMode(Ljava/lang/String;)I

    move-result p2

    .line 3083
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

    .line 3089
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3091
    :cond_3
    throw p2

    :cond_4
    const-string v0, "name"

    .line 3040
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3041
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 3047
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

    .line 3050
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "art_path"

    .line 3052
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3051
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3054
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3055
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3056
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderUtils;->parseFileMode(Ljava/lang/String;)I

    move-result p2

    .line 3057
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

    .line 3063
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    return-object v3

    .line 3110
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

    .line 3063
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3065
    :cond_8
    throw p2

    .line 3042
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "openFile: is not supported for artist uri with undefined artist name"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3031
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unauthorized open file attempt blocked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    .line 1598
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1600
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryMediaInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 1603
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p4

    .line 661
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_26

    .line 665
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    .line 667
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v5, p3

    move-object/from16 v7, p5

    .line 669
    invoke-static {v5, v6, v7, v4}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v13, p2

    .line 670
    invoke-direct {v10, v0, v13, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryMediaInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v13, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    .line 671
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-eq v1, v3, :cond_25

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 676
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 678
    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v8, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 680
    new-instance v11, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v11}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 685
    iget-object v14, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const/4 v15, 0x1

    packed-switch v8, :pswitch_data_0

    .line 960
    :pswitch_0
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

    :pswitch_1
    const-string v1, "search_history"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v9

    move-object v6, v8

    move-object/from16 v7, p5

    .line 950
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 953
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 954
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 953
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_2
    return-object v0

    :pswitch_2
    const/4 v8, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v8

    move-object/from16 v6, p5

    move-object v7, v14

    .line 938
    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->queryAccountParentFiles(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 942
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 943
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 942
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_3
    return-object v0

    :pswitch_3
    const-string v1, "cloud_files"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v14

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, v9

    move-object v6, v8

    move-object/from16 v7, p5

    .line 928
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 931
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 932
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 931
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_4
    return-object v0

    :pswitch_4
    const/4 v4, 0x0

    move-object v0, v14

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v5, p5

    .line 918
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 921
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 922
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 921
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_5
    return-object v0

    .line 913
    :pswitch_5
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

    .line 850
    :pswitch_6
    iget-object v8, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v8

    .line 851
    :try_start_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-nez v6, :cond_e

    .line 858
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v4

    .line 857
    invoke-direct {v10, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 858
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v3, :cond_7

    .line 867
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const-string v2, "external"

    int-to-long v3, v4

    .line 869
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    .line 871
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, [Ljava/lang/String;

    move-object v11, v9

    move-object/from16 v13, p2

    move-object/from16 v16, p5

    .line 872
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 875
    invoke-interface {v0, v9, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 908
    :cond_6
    monitor-exit v8

    return-object v0

    .line 879
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const/4 v3, -0x3

    if-eq v4, v3, :cond_9

    const/4 v5, -0x4

    if-ne v4, v5, :cond_8

    goto :goto_0

    :cond_8
    move v5, v4

    goto :goto_1

    :cond_9
    :goto_0
    const/4 v5, -0x7

    .line 885
    :goto_1
    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 886
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, [Ljava/lang/String;

    const-string v0, "play_order DESC"

    if-nez v6, :cond_a

    .line 889
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "playlist_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 891
    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " AND playlist_id = "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-ne v4, v3, :cond_b

    const-string v0, "play_count DESC, play_order DESC"

    move-object/from16 v18, v0

    goto :goto_3

    :cond_b
    move-object/from16 v18, v0

    :goto_3
    const-string v12, "smart_playlists_map"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v0, -0x5

    if-ne v4, v0, :cond_c

    goto :goto_4

    :cond_c
    const-string v2, "50"

    :goto_4
    move-object/from16 v19, v2

    move-object v11, v14

    move-object/from16 v13, p2

    move-object v14, v5

    .line 899
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 903
    invoke-interface {v0, v9, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 905
    :cond_d
    monitor-exit v8

    return-object v0

    .line 852
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 909
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 819
    :pswitch_7
    iget-object v2, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 820
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    if-nez v6, :cond_11

    .line 832
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v5

    if-eq v5, v3, :cond_10

    const-string v0, "_id = ?"

    .line 837
    new-array v15, v15, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v4

    const-string v3, "playlists"

    .line 839
    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v14

    move-object/from16 v13, p2

    move-object v14, v0

    move-object/from16 v18, p5

    .line 840
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 843
    invoke-interface {v0, v9, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 845
    :cond_f
    monitor-exit v2

    return-object v0

    .line 834
    :cond_10
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Playlist uri not supported: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 821
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 846
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 799
    :pswitch_8
    iget-object v2, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 800
    :try_start_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-nez v6, :cond_13

    .line 804
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const-string v3, "playlists"

    .line 805
    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 807
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 808
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v14

    move-object/from16 v13, p2

    move-object v14, v3

    move-object/from16 v18, p5

    .line 810
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 812
    invoke-interface {v0, v9, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 814
    :cond_12
    monitor-exit v2

    return-object v0

    .line 801
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 815
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_9
    const-string v2, "tracks"

    .line 714
    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v2, v5

    move-object v3, v6

    goto :goto_5

    :cond_14
    const-string v2, "id"

    .line 719
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    const-string v2, "track_id =?"

    .line 727
    new-array v3, v15, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 729
    :goto_5
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "_id"

    goto :goto_6

    :cond_15
    move-object v0, v7

    :goto_6
    move-object v10, v1

    move-object v5, v2

    move-object v6, v3

    move-object v12, v9

    move-object v9, v0

    goto/16 :goto_e

    .line 723
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "query for track uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 736
    :pswitch_a
    iget-object v2, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 738
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_17

    move-object v14, v5

    move-object v15, v6

    goto :goto_7

    :cond_17
    const-string v2, "artist"

    .line 742
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "album"

    .line 743
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 744
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1f

    const-string v5, "album =? AND artist =?"

    const/4 v6, 0x2

    .line 750
    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v4

    aput-object v2, v6, v15

    move-object v14, v5

    move-object v15, v6

    .line 752
    :goto_7
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    const-string v2, "_id"

    move-object/from16 v16, v2

    goto :goto_8

    :cond_18
    move-object/from16 v16, v7

    :goto_8
    const-string v3, "albums"

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v2, v11

    move-object/from16 v4, p2

    move-object v5, v14

    move-object v6, v15

    move-object v12, v9

    move-object/from16 v9, v16

    .line 754
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 757
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_19

    .line 758
    invoke-interface {v2, v12, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v2

    :cond_19
    const-string v3, "force"

    .line 760
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    if-eqz v2, :cond_1a

    .line 763
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 766
    :cond_1a
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_3
    const-string v2, "artist"

    .line 769
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "album"

    .line 770
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    move-object v9, v1

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p2

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    move-object v10, v9

    move-object v9, v0

    .line 772
    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->extractAndSaveEmbeddedAlbumArt(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 774
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/database/Cursor;

    .line 776
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 777
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_9

    :cond_1b
    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p2

    move-object v4, v14

    move-object v5, v15

    const/4 v6, 0x0

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    move-object v9, v0

    .line 779
    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->extractAndSaveAlbumArtFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 781
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    .line 783
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 784
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_1c
    move-object v2, v1

    .line 788
    :goto_9
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_a

    :catchall_3
    move-exception v0

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 789
    throw v0

    :cond_1d
    move-object v10, v1

    :goto_a
    if-eqz v2, :cond_1e

    .line 793
    invoke-interface {v2, v12, v10}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1e
    return-object v2

    .line 745
    :cond_1f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Album uri not supported, both artist and album is undefined"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    move-object v10, v1

    move-object v12, v9

    const-string v1, "artists"

    .line 689
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 690
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_20

    move-object v0, v5

    move-object v2, v6

    goto :goto_c

    :cond_20
    const-string v1, "name"

    .line 694
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 695
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string v0, "artist =?"

    goto :goto_b

    :cond_21
    const-string v1, "id"

    .line 698
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 699
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    const-string v0, "_id =?"

    .line 707
    :goto_b
    new-array v2, v15, [Ljava/lang/String;

    aput-object v1, v2, v4

    .line 709
    :goto_c
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    const-string v1, "_id"

    goto :goto_d

    :cond_22
    move-object v1, v7

    :goto_d
    move-object v5, v0

    move-object v9, v1

    move-object v6, v2

    :goto_e
    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v2, v11

    move-object v3, v14

    move-object/from16 v4, p2

    .line 963
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 965
    invoke-interface {v0, v12, v10}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_23
    return-object v0

    .line 702
    :cond_24
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "query for artist uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 672
    :cond_25
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

    .line 662
    :cond_26
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unauthorized query attempt blocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method syncHighResMedia()V
    .locals 2

    .line 3574
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

    .line 3201
    iget-object v3, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v3

    .line 3202
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3204
    invoke-static {v4}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 3212
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3213
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3218
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v8, -0x5

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v0, :cond_1

    .line 3220
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "Music_favorites"

    .line 3219
    invoke-static {v0, v11}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistId(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 3223
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "name"

    const-string v13, "Music_favorites"

    .line 3224
    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "path"

    .line 3225
    sget-object v13, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v13}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "mediastore_id"

    .line 3226
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "smart_playlist_type"

    .line 3227
    sget-object v13, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v13}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "is_available"

    .line 3228
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v12, "members_count"

    if-lez v0, :cond_0

    .line 3232
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    .line 3231
    invoke-static {v13, v0}, Lcom/sonyericsson/music/common/DBUtils;->getPlaylistTracksCount(Landroid/content/ContentResolver;I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3230
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3229
    invoke-virtual {v11, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3233
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3236
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "name"

    const-string v12, "Music_recently_played_tracks"

    .line 3237
    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "path"

    .line 3238
    sget-object v12, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v12}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "mediastore_id"

    const/4 v12, -0x4

    .line 3239
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "smart_playlist_type"

    .line 3240
    sget-object v12, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v12}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "is_available"

    .line 3241
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "members_count"

    .line 3242
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3243
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3246
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v11, "name"

    const-string v12, "Music_most_played_tracks"

    .line 3247
    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "path"

    .line 3248
    sget-object v12, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v12}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "mediastore_id"

    const/4 v12, -0x3

    .line 3249
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "smart_playlist_type"

    .line 3250
    sget-object v12, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-virtual {v12}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "is_available"

    .line 3251
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v11, "members_count"

    .line 3252
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3253
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3258
    :cond_1
    invoke-static {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->createSmartPlaylists(Landroid/content/Context;)V

    .line 3261
    :goto_1
    invoke-static {v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->deleteSensMePlaylists(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3266
    :try_start_1
    invoke-static {v4}, Lcom/sonyericsson/music/common/DBUtils;->getLocalMediaStorePlaylists(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v11, :cond_e

    .line 3267
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "name"

    .line 3268
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    const-string v0, "_id"

    .line 3269
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v0, "_data"

    .line 3271
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v0, "date_added"

    .line 3273
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v0, "date_modified"

    .line 3275
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const/16 v16, -0x1

    const/16 v17, -0x1

    .line 3277
    :goto_2
    invoke-interface {v11, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3278
    sget-boolean v18, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v18, :cond_2

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->removeSmartPlaylistDuplicate(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 3279
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "name"

    .line 3280
    invoke-virtual {v13, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3281
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v21, v5

    move/from16 v22, v8

    move/from16 v20, v14

    const/4 v10, -0x1

    goto/16 :goto_a

    .line 3285
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 3287
    sget-boolean v10, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v10, :cond_8

    .line 3288
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

    .line 3297
    :pswitch_0
    :try_start_3
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_7

    .line 3299
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

    .line 3302
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/16 v19, 0x0

    aput-object v0, v2, v19

    .line 3299
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

    .line 3305
    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move/from16 v21, v5

    move/from16 v22, v8

    const/4 v10, -0x1

    goto/16 :goto_a

    :pswitch_1
    move/from16 v20, v14

    .line 3293
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v17, v0

    move/from16 v21, v5

    move/from16 v22, v8

    const/4 v10, -0x1

    goto/16 :goto_a

    :pswitch_2
    move/from16 v20, v14

    .line 3290
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    move/from16 v16, v0

    move/from16 v21, v5

    move/from16 v22, v8

    const/4 v10, -0x1

    goto/16 :goto_a

    :cond_8
    move/from16 v20, v14

    .line 3311
    :goto_7
    invoke-interface {v11, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v10, -0x1

    if-le v2, v10, :cond_b

    .line 3316
    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3318
    invoke-static {v0}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Ljava/lang/String;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v13

    .line 3319
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 3320
    invoke-interface {v11, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move/from16 v21, v5

    .line 3322
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    move/from16 v22, v8

    const-string v8, "name"

    .line 3323
    invoke-virtual {v5, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "path"

    .line 3324
    invoke-virtual {v5, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mediastore_id"

    .line 3327
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "smart_playlist_type"

    if-eqz v13, :cond_9

    .line 3329
    invoke-virtual {v13}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_9
    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_NONE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    .line 3331
    invoke-virtual {v8}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->getId()I

    move-result v8

    .line 3330
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 3328
    :goto_8
    invoke-virtual {v5, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "date_created"

    .line 3332
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "date_updated"

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    goto :goto_9

    :cond_a
    const/4 v9, 0x0

    .line 3334
    :goto_9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 3333
    invoke-virtual {v5, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "is_available"

    const/4 v8, 0x1

    .line 3335
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "members_count"

    .line 3336
    invoke-direct {v1, v2, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getPlaylistTracksCount(ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3339
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

    .line 3342
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

    .line 3347
    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3354
    :cond_f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "name"

    const-string v8, "Music_newly_added_tracks"

    .line 3355
    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "path"

    .line 3356
    sget-object v8, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 3357
    invoke-virtual {v8}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3356
    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "mediastore_id"

    const/4 v8, -0x2

    .line 3358
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "smart_playlist_type"

    .line 3359
    sget-object v9, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 3360
    invoke-virtual {v9}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3359
    invoke-virtual {v2, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "is_available"

    const/4 v9, 0x1

    .line 3361
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v5, "members_count"

    .line 3362
    sget-object v9, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {v1, v8, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getPlaylistTracksCount(ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v5, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3364
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3367
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_11

    .line 3368
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "name IN ("

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3369
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 3370
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

    .line 3371
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3372
    invoke-interface {v7, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v11

    const-string v12, "name"

    .line 3373
    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v11

    goto :goto_c

    .line 3375
    :cond_10
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 3376
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

    .line 3375
    invoke-virtual {v7, v8, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_d

    :cond_11
    const/4 v12, 0x0

    .line 3382
    :goto_d
    invoke-direct {v1, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->verifyPresentData(Ljava/util/List;)V

    .line 3385
    invoke-direct {v1, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->bulkInsertPlaylist(Ljava/util/List;)I

    .line 3388
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v2, :cond_14

    if-lez v10, :cond_12

    const/4 v2, -0x5

    .line 3390
    invoke-direct {v1, v4, v10, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncSmartPlaylistToLocalDb(Landroid/content/Context;II)V

    :cond_12
    if-lez v0, :cond_13

    const/4 v2, -0x7

    .line 3393
    invoke-direct {v1, v4, v0, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncSmartPlaylistToLocalDb(Landroid/content/Context;II)V

    .line 3398
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->checkUpdateSmartPlaylistColumns()V

    move-object/from16 v2, p1

    goto :goto_e

    :cond_14
    move-object/from16 v2, p1

    :goto_e
    if-eqz v2, :cond_15

    const-string v0, "delay_art_refresh"

    .line 3404
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_f

    :cond_15
    const/4 v10, 0x0

    :goto_f
    if-nez v10, :cond_16

    .line 3408
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mRefreshPlaylistArtRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_11

    .line 3410
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

    .line 3347
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 3349
    :cond_17
    throw v0

    .line 3420
    :cond_18
    :goto_11
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3422
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3423
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v2

    .line 3422
    invoke-virtual {v0, v2, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 3424
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

    .line 2408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-ne v5, v6, :cond_2c

    .line 2412
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 2414
    invoke-direct/range {p0 .. p4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateMediaInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2417
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 2419
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 2420
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v7, 0x2

    const/4 v14, 0x0

    const/4 v13, 0x1

    const/16 v16, 0x0

    packed-switch v5, :pswitch_data_0

    .line 2762
    :pswitch_0
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

    :pswitch_1
    const-string v0, "search_history"

    move-object v5, v2

    move-object v6, v3

    move-object v9, v14

    move-object v3, v0

    goto/16 :goto_f

    .line 2734
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->parseAccountAndParent(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2739
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

    .line 2742
    invoke-static {v2, v3, v5, v0}, Lcom/sonyericsson/music/common/DBUtils;->appendSelection(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    const-string v2, "cloud_files"

    .line 2749
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 2750
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    move-object v5, v3

    move-object v9, v14

    move-object v3, v2

    goto/16 :goto_f

    .line 2736
    :cond_1
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

    :pswitch_3
    const-string v0, "cloud_files"

    move-object v5, v2

    move-object v6, v3

    move-object v9, v14

    move-object v3, v0

    goto/16 :goto_f

    .line 2709
    :pswitch_4
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 2712
    :try_start_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2713
    invoke-static {v5, v4, v2, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 2716
    invoke-virtual {v15, v8, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2718
    :cond_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2720
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2721
    throw v0

    .line 2600
    :pswitch_5
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2601
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez v3, :cond_12

    .line 2608
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    .line 2607
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 2608
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v2, v6, :cond_6

    const-string v3, "from"

    .line 2610
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "to"

    .line 2611
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2612
    sget-object v7, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2613
    invoke-virtual {v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v7

    .line 2614
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 2612
    invoke-static {v0, v7, v8}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replaceUriParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2616
    invoke-direct {v1, v4, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId(Landroid/content/ContentValues;I)V

    .line 2618
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 2619
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2620
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2621
    sget-boolean v6, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v6, :cond_3

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v4, -0x1

    :cond_3
    int-to-long v6, v2

    .line 2627
    invoke-static {v15, v6, v7, v3, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->moveItem(Landroid/content/ContentResolver;JII)Z

    move-result v2

    goto :goto_0

    :cond_4
    const-string v3, "external"

    int-to-long v8, v2

    .line 2630
    invoke-static {v3, v8, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 2634
    invoke-static {v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v3

    .line 2636
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2637
    invoke-virtual {v15, v2, v4, v6, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-lez v2, :cond_5

    .line 2701
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2702
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2704
    :cond_5
    monitor-exit v5

    return v2

    :cond_6
    const/4 v3, -0x3

    if-eq v2, v3, :cond_8

    const/4 v4, -0x4

    if-ne v2, v4, :cond_7

    goto :goto_1

    .line 2696
    :cond_7
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

    :cond_8
    :goto_1
    if-ne v2, v3, :cond_9

    .line 2642
    monitor-exit v5

    return v16

    .line 2643
    :cond_9
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v2, :cond_a

    monitor-exit v5

    return v16

    .line 2645
    :cond_a
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v3, -0x7

    .line 2648
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 2651
    iget-object v6, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v6, :cond_11

    iget-object v6, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v6, :cond_b

    goto/16 :goto_3

    .line 2653
    :cond_b
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

    .line 2654
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    const-string v18, "smart_playlists"

    const/4 v8, 0x4

    .line 2656
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

    if-eqz v7, :cond_f

    .line 2666
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_f

    const-string v8, "play_count"

    .line 2667
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string v9, "volume_name"

    .line 2668
    invoke-interface {v7, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "relative_path"

    .line 2669
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "_display_name"

    .line 2670
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v7, :cond_c

    .line 2676
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_c
    const-string v7, "smart_playlists"

    .line 2679
    invoke-virtual {v2, v7, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 2681
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v12, "audio_id"

    .line 2682
    aget-object v4, v4, v16

    invoke-virtual {v7, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "playlist_id"

    .line 2683
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "play_count"

    add-int/2addr v8, v13

    .line 2684
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "volume_name"

    .line 2685
    invoke-virtual {v7, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "relative_path"

    .line 2686
    invoke-virtual {v7, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "_display_name"

    .line 2687
    invoke-virtual {v7, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "smart_playlists"

    const/4 v4, 0x5

    .line 2688
    invoke-virtual {v2, v3, v14, v7, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    if-gtz v6, :cond_e

    const-wide/16 v6, 0x0

    cmp-long v4, v2, v6

    if-lez v4, :cond_d

    goto :goto_2

    .line 2694
    :cond_d
    monitor-exit v5

    return v16

    .line 2690
    :cond_e
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2691
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2692
    monitor-exit v5

    return v13

    :cond_f
    if-eqz v7, :cond_10

    .line 2672
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2673
    :cond_10
    monitor-exit v5

    return v16

    .line 2651
    :cond_11
    :goto_3
    monitor-exit v5

    return v16

    .line 2602
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 2705
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2526
    :pswitch_6
    iget-object v7, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2527
    :try_start_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-nez v3, :cond_1d

    .line 2532
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    if-eq v2, v6, :cond_1c

    if-eqz v4, :cond_13

    .line 2538
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-ne v0, v13, :cond_13

    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_HIDDEN:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2539
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_4

    :cond_13
    const/4 v0, 0x0

    :goto_4
    if-nez v0, :cond_19

    .line 2549
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2550
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_18

    .line 2551
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

    .line 2553
    new-array v5, v13, [Ljava/lang/String;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v16

    .line 2554
    invoke-direct {v1, v15, v4, v3, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updatePlaylistInMediaStore(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ne v3, v13, :cond_17

    .line 2555
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2556
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2555
    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 2559
    :try_start_3
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2560
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v0

    .line 2561
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

    if-eqz v14, :cond_14

    .line 2563
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 2564
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2565
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2566
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v15, v5, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_6

    :cond_14
    move-object v0, v3

    :goto_5
    if-eqz v14, :cond_15

    .line 2570
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_15
    if-eqz v0, :cond_1a

    .line 2577
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v14, v3

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v3, v14

    :goto_6
    if-eqz v14, :cond_16

    .line 2570
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2572
    :cond_16
    throw v0

    :cond_17
    move-object v3, v14

    const/4 v6, 0x1

    goto :goto_7

    :cond_18
    move-object v3, v14

    const/4 v6, 0x1

    goto :goto_7

    :cond_19
    move-object v3, v14

    const/4 v6, 0x1

    :cond_1a
    :goto_7
    const-string v0, "playlists"

    const-string v5, "_id = ?"

    .line 2586
    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v16

    .line 2587
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

    .line 2589
    :try_start_7
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1b

    .line 2592
    invoke-virtual {v15, v8, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2595
    :cond_1b
    monitor-exit v10

    return v0

    :cond_1c
    move-object v10, v7

    .line 2534
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

    :cond_1d
    move-object v10, v7

    .line 2528
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    move-object v10, v7

    .line 2596
    :goto_8
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_8

    :pswitch_7
    const/4 v6, 0x1

    .line 2443
    iget-object v8, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2444
    :try_start_8
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_29

    if-nez v3, :cond_29

    if-eqz v4, :cond_1f

    .line 2449
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2450
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    .line 2449
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    goto :goto_9

    .line 2452
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid content for update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2455
    :cond_1f
    :goto_9
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2457
    invoke-direct {v1, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isOnlyRefreshMusicInfoInternalValues(Landroid/content/ContentValues;)Z

    move-result v17

    if-nez v17, :cond_24

    .line 2461
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replaceMusicInfoIdsWithMediaStoreIds(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2463
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v2

    .line 2464
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 2465
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, [Ljava/lang/String;

    .line 2466
    invoke-direct {v1, v15, v4, v12, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updatePlaylistInMediaStore(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    if-lt v2, v6, :cond_23

    .line 2469
    :try_start_9
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2470
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v2

    .line 2471
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2472
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 2473
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

    if-eqz v14, :cond_21

    .line 2476
    :try_start_b
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_21

    .line 2477
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2478
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2480
    :cond_20
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2481
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_20

    .line 2482
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v0

    goto :goto_b

    :cond_21
    :goto_a
    if-eqz v14, :cond_25

    .line 2486
    :try_start_c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_c

    :catchall_8
    move-exception v0

    move-object v14, v6

    goto :goto_b

    :catchall_9
    move-exception v0

    move-object v6, v14

    :goto_b
    if-eqz v14, :cond_22

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2488
    :cond_22
    throw v0

    :cond_23
    move-object v6, v14

    goto :goto_c

    :cond_24
    move-object v6, v14

    .line 2493
    :cond_25
    :goto_c
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v19

    const-string v20, "playlists"

    .line 2495
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 2496
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 2497
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

    .line 2498
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_28

    if-nez v17, :cond_27

    .line 2501
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_27

    .line 2503
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2505
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2506
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_26

    .line 2507
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2508
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v5

    .line 2509
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2508
    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
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

    .line 2512
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

    .line 2513
    invoke-virtual/range {v9 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-object v14, v6

    move-object v12, v7

    const/4 v13, 0x1

    goto :goto_d

    :cond_26
    move-object v7, v12

    goto :goto_e

    :cond_27
    move-object v7, v12

    .line 2518
    :goto_e
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2521
    :cond_28
    monitor-exit v8

    return v0

    .line 2445
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_a
    move-exception v0

    .line 2522
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    throw v0

    :pswitch_8
    move-object v9, v14

    const/4 v5, 0x1

    const-string v6, "albums"

    .line 2429
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    if-eqz v10, :cond_2a

    const-string v2, "artist =? AND album =?"

    .line 2432
    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "artist"

    .line 2433
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v16

    const-string v7, "album"

    .line 2434
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    move-object v5, v2

    move-object/from16 v25, v6

    move-object v6, v3

    move-object/from16 v3, v25

    goto :goto_f

    :cond_2a
    move-object v5, v2

    move-object/from16 v25, v6

    move-object v6, v3

    move-object/from16 v3, v25

    .line 2765
    :goto_f
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v7, 0x5

    move-object/from16 v4, p2

    .line 2766
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2b

    .line 2769
    invoke-virtual {v15, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_2b
    return v0

    .line 2409
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unauthorized update attempt blocked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updateMediaStoreGeneration()V
    .locals 3

    .line 1587
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 1588
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-wide v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaGenerationCode:J

    invoke-static {v0, v1, v2}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setGenerationCode(Landroid/content/Context;J)V

    return-void
.end method

.method public updateMediaStoreVersion()V
    .locals 2

    .line 1582
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 1583
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mMediaVersionCode:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setMediaVersionCode(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
