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
    .locals 16

    .line 142
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 144
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v0, "content://com.sonyericsson.music.musicinfo/external/audio"

    .line 145
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    const-string v0, "content://com.sonyericsson.music.musicinfo/external/playlist"

    .line 146
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    .line 148
    new-instance v0, Landroidx/collection/ArraySet;

    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    .line 151
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "artist"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 152
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "albums"

    const/4 v4, 0x4

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "tracks"

    const/4 v5, 0x5

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 154
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "tracks/#"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 155
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "playlists"

    const/4 v6, 0x7

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "playlists/#"

    const/16 v7, 0x8

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 157
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "playlists/#/members"

    const/16 v8, 0x9

    invoke-virtual {v0, v1, v2, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 158
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "high_res_media"

    const/16 v9, 0xa

    invoke-virtual {v0, v1, v2, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 159
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "cloud_account"

    const/16 v10, 0xb

    invoke-virtual {v0, v1, v2, v10}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 160
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "cloud_files"

    const/16 v11, 0xc

    invoke-virtual {v0, v1, v2, v11}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 161
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "cloud_files/#"

    const/16 v12, 0xd

    invoke-virtual {v0, v1, v2, v12}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 162
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "cloud_files/account/#/parent/*"

    const/16 v13, 0xe

    invoke-virtual {v0, v1, v2, v13}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 163
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "search_history"

    const/16 v14, 0xf

    invoke-virtual {v0, v1, v2, v14}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 165
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/media"

    const/16 v15, 0x64

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 166
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/media/#"

    const/16 v15, 0x65

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/media/#/genres"

    const/16 v15, 0x66

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/media/#/genres/#"

    const/16 v15, 0x67

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 169
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/genres"

    const/16 v15, 0x6a

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 170
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/genres/#"

    const/16 v15, 0x6b

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/genres/#/members"

    const/16 v15, 0x6c

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 172
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/playlists"

    const/16 v15, 0x6e

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 173
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/playlists/#"

    const/16 v15, 0x6f

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 174
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/playlists/#/members"

    const/16 v15, 0x70

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 175
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/playlists/#/members/#"

    const/16 v15, 0x71

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 176
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/artists"

    const/16 v15, 0x72

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/artists/#"

    const/16 v15, 0x73

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 178
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/artists/#/albums"

    const/16 v15, 0x76

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 179
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/albums"

    const/16 v15, 0x74

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/audio/albums/#"

    const/16 v15, 0x75

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 181
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/file"

    const/16 v15, 0x2bc

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 182
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/file/#"

    const/16 v15, 0x2bd

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "*/file/*"

    invoke-virtual {v0, v1, v2, v15}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 185
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    const/16 v1, 0x37

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v15, "_id"

    aput-object v15, v1, v2

    const-string v2, "_data"

    aput-object v2, v1, v3

    const/4 v2, 0x2

    const-string v3, "_size"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "date_added"

    aput-object v3, v1, v2

    const-string v2, "date_modified"

    aput-object v2, v1, v4

    const-string v2, "datetaken"

    aput-object v2, v1, v5

    const/4 v2, 0x6

    const-string v3, "mime_type"

    aput-object v3, v1, v2

    const-string v2, "title"

    aput-object v2, v1, v6

    const-string v2, "_display_name"

    aput-object v2, v1, v7

    const-string v2, "bucket_id"

    aput-object v2, v1, v8

    const-string v2, "bucket_display_name"

    aput-object v2, v1, v9

    const-string v2, "title_key"

    aput-object v2, v1, v10

    const-string v2, "artist_id"

    aput-object v2, v1, v11

    const-string v2, "album_id"

    aput-object v2, v1, v12

    const-string v2, "track"

    aput-object v2, v1, v13

    const-string v2, "composer"

    aput-object v2, v1, v14

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
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 238
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 218
    new-instance v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$1;-><init>(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mRefreshPlaylistArtRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 230
    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutivePlaylistsSyncs:I

    .line 231
    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutiveHighResMediaSyncs:I

    .line 232
    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    .line 235
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncPlaylistsLock:Ljava/lang/Object;

    .line 236
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncHighResMediaLock:Ljava/lang/Object;

    .line 239
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->createMusicInfoSyncHandler(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncMediaStoreAudioData()V

    return-void
.end method

.method private bulkInsertMediaInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 2

    .line 1648
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

    .line 3056
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3058
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 3059
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 3060
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3062
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

    .line 3063
    invoke-static {v11}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validatePlaylistValues(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3064
    invoke-direct {p0, v8, v11}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->createMediaStorePlaylistOrGetInfo(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3065
    invoke-direct {p0, v11}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateMediastoreInsertValuesAvailable(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v5, "mediastore_id = ?"

    const/4 v2, 0x1

    .line 3070
    new-array v6, v2, [Ljava/lang/String;

    const-string v2, "mediastore_id"

    .line 3071
    invoke-virtual {v11, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v9

    const-string v3, "playlists"

    const/4 v7, 0x5

    move-object v2, v1

    move-object v4, v11

    .line 3073
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    const-string v2, "playlists"

    const/4 v3, 0x0

    .line 3077
    invoke-virtual {v1, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    :cond_1
    int-to-long v4, v10

    add-long/2addr v4, v2

    long-to-int v2, v4

    move v10, v2

    goto :goto_0

    .line 3066
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v2, "Incorrect columns available."

    invoke-direct {p1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3084
    :cond_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3086
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3088
    monitor-exit v0

    return v10

    :catchall_0
    move-exception p1

    .line 3086
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3087
    throw p1

    :catchall_1
    move-exception p1

    .line 3089
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    return-void
.end method

.method private callSyncMediaStoreAudio()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 352
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private computeIdAndKey(Landroid/content/ContentValues;)V
    .locals 20

    move-object/from16 v0, p1

    .line 2395
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v8, p0

    .line 2396
    iget-object v2, v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    const-string v2, "title"

    .line 2397
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "title"

    .line 2400
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2399
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title_key"

    .line 2401
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v2, "album"

    .line 2404
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    const/4 v14, 0x0

    const/16 v17, 0x2

    const/4 v13, 0x3

    const/4 v12, 0x1

    const/16 v18, 0x0

    if-eqz v2, :cond_5

    .line 2406
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

    .line 2413
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v18

    const-string v7, "album_key"

    move-object v2, v1

    .line 2406
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2415
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "album_id"

    const-string v4, "album_id"

    .line 2418
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2417
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2416
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "album_key"

    const-string v4, "album_key"

    .line 2421
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2420
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2419
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2422
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v3, v14

    move-object v4, v15

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 2424
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v10, "audio_albums"

    .line 2425
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

    .line 2432
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

    .line 2425
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2434
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "album_id"

    const-string v9, "_id"

    .line 2437
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2436
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2435
    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "album_key"

    const-string v9, "album_key"

    .line 2440
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2439
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2438
    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2441
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 2443
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    const-string v2, "album"

    .line 2444
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2445
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "album"

    const-string v10, "album"

    .line 2446
    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "album_key"

    .line 2447
    invoke-virtual {v5, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "audio_albums"

    .line 2448
    invoke-virtual {v4, v9, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-string v5, "album_id"

    .line 2449
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "album_key"

    .line 2450
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v3, v14

    move-object v4, v15

    const/4 v6, 0x3

    const/4 v7, 0x1

    :goto_0
    const-string v2, "artist"

    .line 2455
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2456
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

    .line 2462
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

    .line 2456
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2464
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "artist_id"

    const-string v4, "_id"

    .line 2467
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2466
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2465
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "artist_key"

    const-string v4, "artist_key"

    .line 2470
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2469
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2468
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v3, v14

    move-object v4, v15

    const/4 v6, 0x3

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 2473
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    const-string v10, "audio_artists"

    .line 2474
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

    .line 2481
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

    .line 2474
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 2483
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "artist_id"

    const-string v9, "_id"

    .line 2486
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2485
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 2484
    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "artist_key"

    const-string v9, "artist_key"

    .line 2489
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 2488
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2487
    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2490
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_9

    .line 2492
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    const-string v2, "artist"

    .line 2494
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2493
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2495
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "artist"

    const-string v10, "artist"

    .line 2497
    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2496
    invoke-virtual {v5, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "artist_key"

    .line 2498
    invoke-virtual {v5, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "audio_artists"

    .line 2499
    invoke-virtual {v3, v9, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    const-string v5, "artist_id"

    .line 2500
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "artist_key"

    .line 2501
    invoke-virtual {v0, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    move-object/from16 v19, v4

    move-object v4, v3

    move-object/from16 v3, v19

    :goto_1
    const-string v2, "genre"

    .line 2506
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 2507
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

    .line 2513
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

    .line 2507
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 2516
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v1, "genre_id"

    const-string v3, "genre_id"

    .line 2519
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2518
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 2517
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "genre_key"

    const-string v3, "genre_key"

    .line 2522
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2521
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2520
    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2523
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :cond_b
    if-eqz v2, :cond_c

    .line 2525
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_c
    const-string v2, "audio_genres"

    .line 2526
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

    .line 2533
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

    .line 2526
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 2535
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v1, "genre_id"

    const-string v2, "_id"

    .line 2538
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2537
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2536
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "genre_key"

    const-string v2, "genre_key"

    .line 2541
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2540
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2539
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :cond_d
    if-eqz v3, :cond_e

    .line 2544
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_e
    const-string v3, "genre"

    .line 2546
    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2545
    invoke-static {v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2547
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "genre"

    const-string v6, "genre"

    .line 2549
    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2548
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "genre_key"

    .line 2550
    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "audio_genres"

    .line 2551
    invoke-virtual {v1, v5, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-string v4, "genre_id"

    .line 2552
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "genre_key"

    .line 2553
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

    .line 3200
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3201
    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private createMediaStorePlaylistOrGetInfo(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z
    .locals 2

    const-string v0, "name"

    .line 3179
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mediastore_id"

    .line 3181
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3183
    invoke-static {p1, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createOrGetPlaylistData(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "mediastore_id"

    .line 3190
    iget v1, p1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "path"

    .line 3191
    iget-object v1, p1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mPath:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "date_created"

    .line 3192
    iget v1, p1, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils$MediaStorePlaylistCreatedData;->mDateCreated:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "date_updated"

    .line 3193
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

    .line 3368
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 3369
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createSmartPlaylist(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    .line 3370
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createSmartPlaylist(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    .line 3371
    sget-object v0, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/provider/MediastorePlaylistUtils;->createSmartPlaylist(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    return-void
.end method

.method private deleteMediaInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 1972
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "media"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1976
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 1979
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1981
    invoke-virtual {p1, v0, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1983
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "audio"

    .line 1984
    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 1986
    sget-object p3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_0
    return p2

    .line 1992
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

    .line 3378
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "WALKMAN SensMe channel"

    .line 3380
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "Music_SensMe_channel"

    .line 3383
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3386
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3387
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 3388
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 3387
    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3388
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 3386
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

    .line 3014
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3016
    invoke-static {v2, v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getAlbumArtPath(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3017
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3018
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 3019
    invoke-static {}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getAlbumArtFolderName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 3018
    invoke-static {v3, v2, v5, v6}, Lcom/sonyericsson/music/common/FileUtils;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3022
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "artist"

    .line 3023
    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "album"

    .line 3024
    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "art_path"

    .line 3025
    invoke-virtual {v3, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albums"

    move-object v1, p1

    .line 3027
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

    .line 3029
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3052
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

    .line 2960
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "artist =? AND album =?"

    const/4 v2, 0x2

    .line 2963
    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v7, v2

    const/4 v9, 0x1

    aput-object v1, v7, v9

    const/4 v10, 0x0

    .line 2966
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

    .line 2969
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "_data"

    .line 2970
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_0

    move-object/from16 v5, p0

    .line 2974
    :try_start_2
    invoke-direct {v5, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isSkipExtractingEmbeddedAlbumArt(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2976
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

    .line 2981
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "artist"

    .line 2982
    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "album"

    .line 2983
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "art_path"

    .line 2985
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 2984
    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albums"

    move-object/from16 v1, p1

    .line 2986
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

    .line 2988
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

    .line 3001
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3005
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

    .line 3001
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3003
    :cond_5
    throw v0
.end method

.method private static getAlbumArtPath(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    .line 2925
    new-array v3, v0, [Ljava/lang/String;

    const-string v1, "album_art"

    const/4 v2, 0x0

    aput-object v1, v3, v2

    const-string v4, "album =? AND artist=?"

    const/4 v1, 0x2

    .line 2928
    new-array v5, v1, [Ljava/lang/String;

    aput-object p2, v5, v2

    aput-object p1, v5, v0

    const/4 p1, 0x0

    .line 2930
    :try_start_0
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v1, p0

    .line 2931
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    .line 2934
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "album_art"

    .line 2935
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

    .line 2939
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

    .line 2941
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

    .line 3308
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3309
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "playlists"

    .line 3311
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 3314
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

    .line 3316
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v7, v6

    const/4 p1, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v7

    move-object v7, p1

    .line 3314
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 3317
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "mediastore_id"

    .line 3318
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "name"

    .line 3319
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

    .line 3323
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3325
    :cond_1
    throw p1

    .line 3327
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

    .line 2899
    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-eq v1, p2, :cond_2

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-eq v1, p2, :cond_2

    sget-object v1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->FAVOURITES:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne v1, p2, :cond_0

    goto :goto_0

    .line 2902
    :cond_0
    sget-object p1, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    if-ne p1, p2, :cond_1

    .line 2903
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

    .line 2901
    invoke-static {p2, v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object p1

    move-object v2, p1

    :goto_1
    const/4 p1, 0x0

    if-eqz v2, :cond_5

    .line 2909
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

    .line 2911
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz v0, :cond_5

    .line 2914
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2916
    :cond_4
    throw p1

    :cond_5
    :goto_2
    return p1
.end method

.method private insertMediaInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 10

    .line 1491
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.music.musicinfo"

    const-string v2, "media"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1496
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/16 v2, 0x70

    if-ne v1, v2, :cond_1

    .line 1500
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1501
    invoke-virtual {v1, v0, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 1503
    invoke-virtual {p2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 1507
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1508
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

    .line 1509
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

    .line 1513
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "smart_playlist_type"

    .line 1514
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1516
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-eqz v2, :cond_0

    if-ne v2, v1, :cond_1

    .line 1517
    :cond_0
    throw p2

    .line 1525
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

    .line 3393
    invoke-virtual {p1}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 3394
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3395
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_HIDDEN:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_SET:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3396
    invoke-virtual {v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_TYPE:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3397
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

    .line 2946
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".xmf"

    .line 2948
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mxmf"

    .line 2949
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".mid"

    .line 2950
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".midi"

    .line 2951
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

    .line 3274
    :try_start_0
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x1

    .line 3275
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

    .line 3276
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "_data"

    .line 3278
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 3279
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_1

    if-eqz v0, :cond_0

    .line 3298
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v7

    .line 3284
    :cond_1
    :try_start_1
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH_FROM_Q:Ljava/lang/String;

    .line 3285
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, ".m3u"

    .line 3286
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    if-eqz v0, :cond_2

    .line 3298
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

    .line 3300
    :cond_7
    throw p1
.end method

.method private queryMediaInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;
    .locals 22

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    .line 869
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "com.sonyericsson.music.musicinfo"

    const-string v5, "media"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 873
    sget-boolean v4, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return-object v5

    .line 874
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    if-eqz v1, :cond_1

    const-string v4, "android:query-arg-sql-selection"

    .line 876
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v5

    :goto_0
    if-eqz v1, :cond_2

    const-string v6, "android:query-arg-sql-selection-args"

    .line 877
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v5

    :goto_1
    if-eqz v1, :cond_3

    const-string v7, "android:query-arg-sql-sort-order"

    .line 878
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v7

    goto :goto_2

    :cond_3
    move-object v8, v5

    :goto_2
    if-eqz v1, :cond_4

    const-string v7, "android:query-arg-sql-group-by"

    .line 879
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_4
    move-object v7, v5

    :goto_3
    if-eqz v1, :cond_5

    const-string v9, "android:query-arg-sql-having"

    .line 880
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_5
    move-object v9, v5

    :goto_4
    if-eqz v1, :cond_6

    const-string v11, "android:query-arg-sql-limit"

    .line 881
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v12, v11

    move-object/from16 v11, p0

    goto :goto_5

    :cond_6
    move-object/from16 v11, p0

    move-object v12, v5

    .line 883
    :goto_5
    iget-object v13, v11, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    if-nez v3, :cond_7

    const-string v14, "*"

    goto :goto_6

    :cond_7
    const-string v14, ", "

    .line 886
    invoke-static {v14, v3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 887
    :goto_6
    sget-object v15, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v15, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 1077
    :pswitch_0
    invoke-virtual {v10, v2, v3, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_1
    if-eqz v4, :cond_8

    .line 940
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

    .line 942
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

    .line 943
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT "

    .line 944
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM ("

    .line 945
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SELECT album_id AS _id, album_id AS album_id, album AS album, album_key AS album_key, artist_id AS artist_id, artist AS artist, artist_key AS artist_key, COUNT(DISTINCT _id) AS numsongs, COUNT(DISTINCT _id) AS numsongs_by_artist, MIN(year) AS minyear, MAX(year) AS maxyear, NULL AS album_art FROM audio WHERE is_music = 1 GROUP BY artist_id, album_id"

    .line 946
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    .line 954
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_9

    const-string v3, "WHERE "

    .line 956
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    if-eqz v8, :cond_a

    const-string v1, " ORDER BY "

    .line 959
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 962
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    :pswitch_2
    if-eqz v4, :cond_b

    .line 913
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

    .line 915
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

    .line 917
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    .line 918
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM ("

    .line 919
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SELECT album_id AS _id, album_id AS album_id, album AS album, album_key AS album_key, artist_id AS artist_id, artist AS artist, artist_key AS artist_key, COUNT(DISTINCT _id) AS numsongs, COUNT(DISTINCT _id) AS numsongs_by_artist, MIN(year) AS minyear, MAX(year) AS maxyear, NULL AS album_art FROM audio WHERE is_music = 1 GROUP BY album_id"

    .line 920
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    .line 929
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_c

    const-string v2, "WHERE "

    .line 931
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz v8, :cond_d

    const-string v2, " ORDER BY "

    .line 934
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    :cond_d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 937
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    :pswitch_4
    if-eqz v4, :cond_e

    .line 889
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

    .line 891
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

    .line 893
    :pswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    .line 894
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM ("

    .line 895
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SELECT artist_id AS _id, MIN(artist) AS artist, artist_key AS artist_key, COUNT(DISTINCT album_id) AS number_of_albums, COUNT(DISTINCT _id) AS number_of_tracks FROM audio WHERE is_music = 1 GROUP BY artist_id"

    .line 896
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    .line 902
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_f

    const-string v2, "WHERE "

    .line 904
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    if-eqz v8, :cond_10

    const-string v2, "ORDER BY "

    .line 907
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 910
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    .line 982
    :pswitch_6
    invoke-virtual {v10, v2, v5, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_1c

    .line 983
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_11

    goto/16 :goto_10

    :cond_11
    const-string v6, "audio_id"

    .line 992
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v15, "tracks"

    const/16 v16, 0x0

    .line 993
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

    .line 996
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_12

    .line 998
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x1

    goto :goto_a

    .line 1001
    :cond_12
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1002
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_11

    const/4 v6, 0x0

    :goto_a
    if-nez v6, :cond_14

    .line 1005
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1006
    invoke-virtual {v10, v2, v3, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 1007
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_13
    return-object v1

    :cond_14
    if-nez v3, :cond_15

    .line 1010
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_b

    :cond_15
    move-object v6, v3

    .line 1011
    :goto_b
    new-instance v7, Landroid/database/MatrixCursor;

    invoke-direct {v7, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1012
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_c
    const-string v1, "audio_id"

    .line 1014
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const-string v15, "audio"

    const/16 v16, 0x0

    const-string v17, "_id = ?"

    .line 1015
    new-array v3, v9, [Ljava/lang/String;

    .line 1016
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v8

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v14, v13

    move-object/from16 v18, v3

    .line 1015
    invoke-virtual/range {v14 .. v21}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1019
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v2

    .line 1020
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1021
    array-length v3, v6

    const/4 v12, 0x0

    :goto_d
    if-ge v12, v3, :cond_1a

    aget-object v14, v6, v12

    .line 1022
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getType(I)I

    move-result v15

    if-eq v15, v9, :cond_17

    const/4 v8, 0x3

    if-eq v15, v8, :cond_16

    move-object v8, v5

    goto :goto_f

    .line 1036
    :cond_16
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_f

    :cond_17
    const-string v8, "audio_id"

    .line 1026
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "_id"

    .line 1027
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "play_order"

    .line 1028
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_19

    const-string v8, "playlist_id"

    .line 1029
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    goto :goto_e

    .line 1033
    :cond_18
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_f

    .line 1030
    :cond_19
    :goto_e
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1044
    :goto_f
    invoke-virtual {v2, v14, v8}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x0

    goto :goto_d

    .line 1046
    :cond_1a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1048
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1050
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1052
    invoke-virtual {v7, v10, v0}, Landroid/database/MatrixCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v7

    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_c

    :cond_1c
    :goto_10
    if-eqz v4, :cond_1d

    .line 984
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 985
    :cond_1d
    invoke-virtual {v10, v2, v3, v1, v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 986
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1e
    return-object v1

    :pswitch_7
    if-eqz v4, :cond_1f

    .line 1061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    :cond_1f
    const-string v1, ""

    .line 1063
    :goto_11
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

    goto/16 :goto_14

    :pswitch_8
    if-eqz v4, :cond_20

    .line 965
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_20
    const-string v1, ""

    .line 967
    :goto_12
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

    .line 969
    :pswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SELECT "

    .line 970
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " FROM (SELECT genre_id AS _id, MIN(genre) AS name FROM audio GROUP BY genre_id) "

    .line 971
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_21

    const-string v2, "WHERE "

    .line 973
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    if-eqz v8, :cond_22

    const-string v2, "ORDER BY "

    .line 976
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 979
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    .line 1067
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

    .line 1068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SELECT "

    .line 1069
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " FROM (SELECT genre_id AS _id, genre AS name FROM audio "

    .line 1070
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "WHERE "

    .line 1071
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " AND genre IS NOT NULL )"

    .line 1072
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1074
    invoke-interface {v1, v10, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v1

    :pswitch_b
    if-eqz v4, :cond_23

    .line 1055
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_13

    :cond_23
    const-string v1, ""

    .line 1057
    :goto_13
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

    :goto_14
    :pswitch_c
    const-string v2, "audio"

    move-object v1, v13

    move-object/from16 v3, p2

    move-object v5, v6

    move-object v6, v7

    move-object v7, v9

    move-object v9, v12

    .line 1080
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1081
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

    .line 2881
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "Music_favorites"

    .line 2882
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2883
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xf

    if-gt v0, v2, :cond_3

    :cond_1
    const-string v0, "Music_recently_played_tracks"

    .line 2884
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2885
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_3

    :cond_2
    const-string v0, "Music_most_played_tracks"

    .line 2886
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2887
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

    .line 3333
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3334
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-static {p1, v1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getParamsValue(Landroid/net/Uri;Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3336
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 3338
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 3337
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3341
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 3343
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3342
    invoke-static {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->concatParamsValue([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3344
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

    .line 2705
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "playlist_id"

    .line 2706
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method private replacePlaylistId([Landroid/content/ContentValues;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2712
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 2713
    invoke-direct {p0, v2, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId(Landroid/content/ContentValues;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static replaceUriParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 3352
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3353
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

    .line 3354
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3355
    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 3357
    :cond_0
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 3360
    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private syncLegacyMediaData()V
    .locals 20

    move-object/from16 v1, p0

    .line 360
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    .line 369
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

    goto :goto_1

    :catch_0
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 374
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    :goto_0
    move-object v0, v9

    :goto_1
    const/4 v10, 0x1

    if-eqz v0, :cond_14

    .line 378
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_9

    .line 390
    :cond_1
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15

    .line 393
    :goto_2
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 394
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;->LEGACY_AUDIO_COLUMN:Landroidx/collection/ArraySet;

    invoke-virtual {v2}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v13, 0x3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 395
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    if-eq v4, v10, :cond_3

    if-eq v4, v13, :cond_2

    goto :goto_3

    .line 402
    :cond_2
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 398
    :cond_3
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 399
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_3

    :cond_4
    const-string v2, "_id"

    .line 411
    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v2, "volume_name"

    .line 412
    invoke-virtual {v14, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "relative_path"

    .line 413
    invoke-virtual {v14, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_display_name"

    .line 414
    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 416
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    new-array v12, v13, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v2, v12, v19

    aput-object v3, v12, v10

    const/4 v2, 0x2

    aput-object v4, v12, v2

    const/16 v16, 0x0

    move-object v2, v8

    move-object v3, v5

    move-object v4, v6

    move-object v5, v7

    move-object v6, v12

    move-object/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 423
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 424
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 425
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;->LEGACY_AUDIO_COLUMN:Landroidx/collection/ArraySet;

    invoke-virtual {v4}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 426
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getType(I)I

    move-result v6

    if-eq v6, v10, :cond_6

    if-eq v6, v13, :cond_5

    goto :goto_4

    .line 433
    :cond_5
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 434
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 429
    :cond_6
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 430
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_4

    .line 441
    :cond_7
    invoke-direct {v1, v14, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateAudioEditInfo(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 442
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v2, v14

    move-object v3, v15

    const/4 v5, 0x3

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    .line 444
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    const-string v12, "tracks"

    const/4 v2, 0x0

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "track_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v15

    const/4 v5, 0x3

    move-object v13, v2

    move-object v2, v14

    move-object v14, v3

    move-object v3, v15

    move-object v15, v4

    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 448
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 449
    invoke-direct {v1, v2, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateAudioEditInfo(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 451
    :cond_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 454
    :goto_5
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 455
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    invoke-virtual {v6}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 456
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 457
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getType(I)I

    move-result v11

    if-eq v11, v10, :cond_d

    if-eq v11, v5, :cond_c

    goto :goto_6

    .line 463
    :cond_c
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 460
    :cond_d
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v4, v7, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_6

    .line 473
    :cond_e
    invoke-virtual {v4}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v2

    const/4 v5, 0x5

    if-nez v2, :cond_f

    const-string v2, "date_modified"

    .line 474
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 475
    invoke-direct {v1, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->computeIdAndKey(Landroid/content/ContentValues;)V

    const-string v2, "audio"

    .line 476
    invoke-virtual {v3, v2, v9, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 480
    :cond_f
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_13

    const-string v12, "tracks"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v11, v3

    .line 484
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const-string v12, "audio_tag"

    .line 485
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    const-string v12, "audio"

    .line 486
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 488
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gt v6, v7, :cond_11

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-le v6, v7, :cond_10

    goto :goto_7

    :cond_10
    const/16 v19, 0x1

    .line 498
    :cond_11
    :goto_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 499
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 500
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 501
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    if-nez v19, :cond_12

    .line 505
    iget v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    add-int/2addr v0, v10

    iput v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    .line 506
    iget v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfLegacyCopyRetry:I

    if-gt v0, v5, :cond_12

    .line 507
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncLegacyMediaData()V

    .line 517
    :cond_12
    :try_start_1
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;->LEGACY_SOMC_AUDIO_URI:Landroid/net/Uri;

    const-string v2, "finish_somc_legacy_migration"

    invoke-virtual {v8, v0, v2, v9, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 519
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 521
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setLegacyDataCopyCompleted(Landroid/content/Context;Z)V

    return-void

    :cond_13
    move-object v15, v3

    goto/16 :goto_2

    .line 380
    :cond_14
    :goto_9
    :try_start_2
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$MediaStoreSync;->LEGACY_SOMC_AUDIO_URI:Landroid/net/Uri;

    const-string v2, "finish_somc_legacy_migration"

    invoke-virtual {v8, v0, v2, v9, v9}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_a

    :catch_4
    move-exception v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    :goto_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->setLegacyDataCopyCompleted(Landroid/content/Context;Z)V

    return-void
.end method

.method private syncMediaStoreAudioData()V
    .locals 20

    move-object/from16 v0, p0

    .line 1087
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v1, :cond_0

    return-void

    .line 1089
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isLegacyDataCopyCompleted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 1095
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1096
    iget-object v2, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 1097
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v1, v2, v12, v12, v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_2

    return-void

    .line 1106
    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "audio"

    .line 1107
    invoke-virtual {v11, v2, v12, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1108
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v12}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void

    .line 1115
    :cond_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    const/4 v14, 0x0

    const/4 v2, 0x0

    .line 1124
    :goto_0
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_id"

    const-string v4, "_id"

    .line 1127
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1126
    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "date_modified"

    const-string v4, "date_modified"

    .line 1129
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1128
    invoke-virtual {v15, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "audio"

    const/4 v10, 0x2

    .line 1133
    new-array v5, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v5, v14

    const-string v3, "date_modified"

    const/4 v9, 0x1

    aput-object v3, v5, v9

    const-string v6, "_id =?"

    new-array v7, v9, [Ljava/lang/String;

    const-string v3, "_id"

    .line 1136
    invoke-virtual {v15, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v14

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v3, v11

    const/4 v12, 0x1

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    .line 1133
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1138
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "date_modified"

    .line 1139
    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v6, "date_modified"

    .line 1140
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_5

    goto/16 :goto_3

    :cond_5
    const/16 v16, 0x0

    goto :goto_1

    :cond_6
    const/16 v16, 0x1

    .line 1143
    :goto_1
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    .line 1144
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1146
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->AUDIO_COLUMNS:Landroidx/collection/ArraySet;

    invoke-virtual {v3}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1147
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getType(I)I

    move-result v6

    if-eq v6, v12, :cond_9

    if-eq v6, v5, :cond_8

    const-string v5, "is_music"

    .line 1161
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1162
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1163
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1154
    :cond_8
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1155
    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1150
    :cond_9
    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1151
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    .line 1170
    :cond_a
    invoke-virtual {v15}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "volume_name"

    .line 1171
    invoke-virtual {v15, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "relative_path"

    .line 1172
    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "_display_name"

    .line 1173
    invoke-virtual {v15, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "audio_tag"

    const/4 v8, 0x0

    const-string v9, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    .line 1174
    new-array v10, v5, [Ljava/lang/String;

    aput-object v3, v10, v14

    aput-object v4, v10, v12

    const/4 v5, 0x2

    aput-object v6, v10, v5

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v3, v11

    move-object v4, v7

    const/4 v7, 0x2

    move-object v5, v8

    move-object v6, v9

    const/4 v9, 0x2

    move-object v7, v10

    move-object/from16 v8, v17

    const/4 v10, 0x2

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1180
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "title"

    .line 1181
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "artist"

    .line 1182
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "album"

    .line 1183
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "genre"

    .line 1184
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "track"

    .line 1185
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "year"

    .line 1186
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1187
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    const-string v10, "title"

    .line 1188
    invoke-virtual {v15, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "title_key"

    .line 1189
    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1191
    :cond_b
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "artist"

    .line 1192
    invoke-virtual {v15, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "artist_id"

    .line 1193
    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v4, "artist_key"

    .line 1194
    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1196
    :cond_c
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    const-string v4, "album"

    .line 1197
    invoke-virtual {v15, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "album_id"

    .line 1198
    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v4, "album_key"

    .line 1199
    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1201
    :cond_d
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "genre"

    .line 1202
    invoke-virtual {v15, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "genre_id"

    .line 1203
    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v4, "genre_key"

    .line 1204
    invoke-virtual {v15, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 1206
    :cond_e
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "track"

    .line 1207
    invoke-virtual {v15, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    :cond_f
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "year"

    .line 1210
    invoke-virtual {v15, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    :cond_10
    invoke-direct {v0, v15}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->computeIdAndKey(Landroid/content/ContentValues;)V

    .line 1213
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_11
    if-eqz v16, :cond_12

    int-to-long v2, v2

    const-string v4, "audio"

    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 1216
    invoke-virtual {v11, v4, v6, v15, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    move v15, v2

    goto :goto_4

    :cond_12
    const-string v3, "audio"

    const-string v4, "_id =?"

    .line 1219
    new-array v5, v12, [Ljava/lang/String;

    const-string v6, "_id"

    .line 1220
    invoke-virtual {v15, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v14

    .line 1219
    invoke-virtual {v11, v3, v15, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    move v15, v2

    goto :goto_4

    :cond_13
    :goto_3
    move v15, v2

    .line 1224
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v4, "audio"

    const/4 v2, 0x2

    .line 1228
    new-array v5, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v5, v14

    const-string v3, "date_modified"

    aput-object v3, v5, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, v11

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1231
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-le v3, v4, :cond_18

    .line 1232
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1233
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    const-string v3, "_id"

    .line 1235
    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1236
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v14

    const-string v5, "date_modified"

    aput-object v5, v4, v12

    const-string v5, "_id =?"

    new-array v6, v12, [Ljava/lang/String;

    .line 1239
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v14

    const/4 v7, 0x0

    const/16 v16, 0x2

    move-object v2, v1

    .line 1236
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 1241
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_15

    .line 1242
    :cond_14
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    if-eqz v2, :cond_16

    .line 1244
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1245
    :cond_16
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "audio"

    .line 1247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v9, v14, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1247
    invoke-virtual {v11, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v14

    goto :goto_6

    :cond_17
    const/4 v2, 0x2

    goto :goto_5

    :cond_18
    const/4 v4, 0x0

    :goto_6
    if-gtz v14, :cond_19

    if-lez v15, :cond_1a

    .line 1257
    :cond_19
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_AUDIO_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1259
    :cond_1a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1260
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    return-void

    :cond_1b
    move v2, v15

    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private updateAudioEditInfo(Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 9

    .line 529
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 530
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$AudioTag;->AUDIO_TAG_COLUMNS:Landroidx/collection/ArraySet;

    invoke-virtual {v1}, Landroidx/collection/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 531
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, -0x1

    .line 532
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
    const-string v3, "genre"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_3
    const-string v4, "album"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

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

    .line 547
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 548
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 549
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 552
    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :pswitch_1
    if-eqz p2, :cond_3

    .line 537
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 538
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 539
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 542
    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :cond_4
    invoke-virtual {v0}, Landroid/content/ContentValues;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 562
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v1, "_id"

    .line 563
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "volume_name"

    .line 564
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "relative_path"

    .line 565
    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "_display_name"

    .line 566
    invoke-virtual {p1, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v8, "audio_id"

    .line 568
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "volume_name"

    .line 569
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "relative_path"

    .line 570
    invoke-virtual {v0, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    .line 571
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "audio_tag"

    const-string v8, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    .line 573
    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v5

    aput-object v7, v6, v4

    aput-object p1, v6, v3

    invoke-virtual {p2, v1, v0, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_5

    const-string p1, "audio_tag"

    const/4 v1, 0x0

    .line 578
    invoke-virtual {p2, p1, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_5
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

    .line 2311
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sonyericsson.music.musicinfo"

    const-string v5, "media"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 2315
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    const/4 v14, -0x1

    if-nez v3, :cond_0

    return v14

    .line 2318
    :cond_0
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v3, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_2

    const/16 v4, 0x70

    if-ne v3, v4, :cond_1

    .line 2385
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2386
    invoke-virtual {v1, v13, v2, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    .line 2388
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

    .line 2321
    :cond_2
    iget-object v1, v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2322
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 2324
    invoke-direct {v0, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->computeIdAndKey(Landroid/content/ContentValues;)V

    const-string v4, "audio"

    const/4 v10, 0x4

    .line 2326
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

    .line 2331
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2333
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2334
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

    .line 2335
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2336
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

    .line 2345
    :pswitch_0
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 2341
    :pswitch_1
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2353
    :cond_5
    invoke-virtual {v4}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    :cond_6
    const-string v6, "_id"

    .line 2355
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "volume_name"

    .line 2356
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "relative_path"

    .line 2357
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "_display_name"

    .line 2358
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "audio_id"

    .line 2360
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v6, "volume_name"

    .line 2361
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "relative_path"

    .line 2362
    invoke-virtual {v4, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "_display_name"

    .line 2363
    invoke-virtual {v4, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "audio_tag"

    const-string v10, "volume_name = ? AND relative_path = ? AND _display_name = ? "

    .line 2364
    new-array v5, v14, [Ljava/lang/String;

    aput-object v7, v5, v16

    aput-object v8, v5, v17

    aput-object v9, v5, v18

    invoke-virtual {v1, v6, v4, v10, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-gtz v5, :cond_7

    const-string v5, "audio_tag"

    const/4 v6, 0x0

    .line 2369
    invoke-virtual {v1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2370
    :cond_7
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2374
    :cond_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    const-string v3, "audio"

    .line 2375
    invoke-virtual {v1, v3, v2, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_9

    .line 2379
    invoke-virtual {v13}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2380
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

    .line 3209
    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 3210
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3212
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3213
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    .line 3212
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3214
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3215
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    .line 3214
    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3216
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3217
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_NAME:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3221
    invoke-direct {p0, p1, p3, p4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isUserCreatedPlaylist(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3224
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3226
    :cond_0
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3227
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v3

    .line 3226
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3231
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-le v3, v4, :cond_1

    .line 3232
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH_FROM_Q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Music/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3235
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

    .line 3239
    :cond_2
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3240
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 3239
    invoke-direct {p0, p2, v2, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->copyContentValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return v0

    .line 3250
    :cond_4
    :goto_0
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3251
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_ADDED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3252
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 3250
    invoke-direct {p0, p2, v2, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->copyContentValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3254
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3255
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_DATE_MODIFIED:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 3256
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 3254
    invoke-direct {p0, p2, v2, v1, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->copyContentValue(Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 3258
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 3259
    sget-object p2, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 3260
    sget-boolean v2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v2, :cond_5

    .line 3262
    aget-object p3, p4, v0

    invoke-static {p2, p3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    .line 3263
    invoke-virtual {p1, p2, v1, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3265
    :cond_5
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

    .line 2669
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "album"

    .line 2670
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "art_path"

    .line 2671
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

    .line 2656
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "artist"

    .line 2657
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

    .line 2723
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "name"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mediastore_id"

    .line 2724
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

    .line 2695
    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "name"

    .line 2696
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

    .line 2683
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

    .line 3093
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3094
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3095
    new-instance v2, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v2}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 3096
    iget-object v3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3098
    :try_start_1
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v3, "playlists"

    .line 3099
    invoke-virtual {v2, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v3, 0x2

    const/4 v11, 0x0

    .line 3102
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

    .line 3104
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "path"

    .line 3105
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "mediastore_id"

    .line 3106
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3108
    :cond_0
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3109
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

    .line 3113
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3120
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

    .line 3121
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "mediastore_id"

    .line 3122
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3124
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 3125
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v3, v5, :cond_3

    const-string v3, "playlists"

    const-string v5, "mediastore_id =?"

    .line 3128
    new-array v6, v13, [Ljava/lang/String;

    .line 3130
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v12

    .line 3128
    invoke-virtual {v10, v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    .line 3134
    :cond_4
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "is_available"

    .line 3135
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3141
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

    .line 3143
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3144
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3145
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

    .line 3146
    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "mediastore_id"

    .line 3147
    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3148
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    if-ne v8, v3, :cond_6

    goto :goto_3

    :cond_7
    move-object v6, v11

    :goto_3
    if-nez v6, :cond_5

    .line 3160
    sget-boolean v4, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v4, :cond_8

    const-string v4, "playlists"

    const-string v5, "mediastore_id =?"

    .line 3161
    new-array v6, v13, [Ljava/lang/String;

    .line 3163
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v12

    .line 3161
    invoke-virtual {v10, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    const-string v4, "playlists"

    const-string v5, "mediastore_id =?"

    .line 3165
    new-array v6, v13, [Ljava/lang/String;

    .line 3166
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v12

    .line 3165
    invoke-virtual {v10, v4, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 3170
    :cond_9
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3172
    :try_start_5
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3174
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    :catchall_1
    move-exception p1

    move-object v2, v11

    :goto_4
    if-eqz v2, :cond_a

    .line 3113
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3115
    :cond_a
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p1

    .line 3172
    :try_start_7
    invoke-virtual {v10}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 3173
    throw p1

    :catchall_3
    move-exception p1

    .line 3174
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1

    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12

    .line 1536
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_d

    .line 1540
    array-length v0, p2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1544
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_c

    .line 1549
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1550
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v4, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eq v4, v7, :cond_8

    const/16 v8, 0xc

    if-eq v4, v8, :cond_4

    packed-switch v4, :pswitch_data_0

    .line 1633
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

    .line 1591
    :pswitch_0
    iget-object v4, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1592
    :try_start_0
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result p1

    if-eq p1, v2, :cond_1

    .line 1594
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v2, :cond_1

    .line 1596
    invoke-direct {p0, p2, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId([Landroid/content/ContentValues;I)V

    .line 1597
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1599
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1597
    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1600
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    :cond_1
    if-lez v1, :cond_2

    .line 1604
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$Members;->getContentUri(I)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1605
    sget-object p1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1607
    :cond_2
    monitor-exit v4

    return v1

    :catchall_0
    move-exception p1

    .line 1608
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1587
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

    .line 1577
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1578
    :try_start_1
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->bulkInsertPlaylist(Ljava/util/List;)I

    move-result p2

    if-lez p2, :cond_3

    .line 1580
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1582
    :cond_3
    monitor-exit p1

    return p2

    :catchall_1
    move-exception p2

    .line 1583
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p2

    .line 1612
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 1613
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1615
    :try_start_2
    array-length v2, p2

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v4, v2, :cond_6

    aget-object v9, p2, v4

    const-string v10, "cloud_files"

    .line 1616
    invoke-virtual {p1, v10, v3, v9}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    cmp-long v11, v9, v5

    if-lez v11, :cond_5

    add-int/lit8 v8, v8, 0x1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    if-lez v8, :cond_7

    .line 1623
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    move-object p2, v3

    .line 1625
    :goto_1
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1627
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_3

    :catchall_2
    move-exception p2

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1628
    throw p2

    .line 1557
    :cond_8
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 1558
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1560
    :try_start_3
    array-length v2, p2

    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_2
    if-ge v4, v2, :cond_a

    aget-object v7, p2, v4

    .line 1561
    invoke-static {v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateArtistValues(Landroid/content/ContentValues;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "artists"

    .line 1563
    invoke-virtual {p1, v9, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    cmp-long v7, v9, v5

    if-lez v7, :cond_9

    add-int/lit8 v8, v8, 0x1

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1569
    :cond_a
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1571
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-object p2, v3

    :goto_3
    if-eqz v1, :cond_b

    if-lez v8, :cond_b

    if-eqz p2, :cond_b

    .line 1637
    invoke-virtual {v0, p2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_b
    return v8

    :catchall_3
    move-exception p2

    .line 1571
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1572
    throw p2

    .line 1546
    :cond_c
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->bulkInsertMediaInternal(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    throw v3

    .line 1537
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unauthorized bulk insert attempt blocked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 9

    .line 260
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    .line 264
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

    .line 337
    :pswitch_0
    sget-boolean p2, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez p2, :cond_1

    return-object p1

    .line 338
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isLegacyDataCopyCompleted(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 339
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncLegacyMediaData()V

    .line 341
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->callSyncMediaStoreAudio()V

    return-object p1

    .line 331
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 333
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2, v6, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->getPlaybackUriAndToken(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/sqlite/SQLiteDatabase;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 325
    :pswitch_2
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 327
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2, v5, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->getPlaybackUriAndToken(Landroid/content/Context;Ljava/lang/String;ZLandroid/database/sqlite/SQLiteDatabase;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 297
    :pswitch_3
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncHighResMediaLock:Ljava/lang/Object;

    monitor-enter p2

    .line 301
    :try_start_0
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 303
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p3

    if-nez p3, :cond_5

    .line 305
    iget p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutiveHighResMediaSyncs:I

    add-int/2addr p3, v6

    iput p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutiveHighResMediaSyncs:I

    rem-int/lit8 p3, p3, 0xa

    if-nez p3, :cond_3

    const/4 v5, 0x1

    :cond_3
    if-eqz v5, :cond_4

    .line 309
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 314
    :cond_4
    iget-object p3, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {p3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    .line 317
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 320
    :cond_5
    :goto_1
    monitor-exit p2

    return-object p1

    :catchall_0
    move-exception p1

    .line 321
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 266
    :pswitch_4
    iget-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mSyncPlaylistsLock:Ljava/lang/Object;

    monitor-enter p2

    .line 270
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_8

    .line 275
    iget v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutivePlaylistsSyncs:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mNbrOfConsecutivePlaylistsSyncs:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_6

    const/4 v5, 0x1

    :cond_6
    if-eqz v5, :cond_7

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v3, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 286
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, v6, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0, p3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 292
    :cond_8
    :goto_2
    monitor-exit p2

    return-object p1

    :catchall_1
    move-exception p1

    .line 293
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 261
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

    .line 1657
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v3, v4, :cond_21

    .line 1661
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1663
    invoke-direct/range {p0 .. p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->deleteMediaInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1666
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1667
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    packed-switch v5, :pswitch_data_0

    .line 1920
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete: uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string v0, "search_history"

    .line 1915
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    move-object v12, v2

    move-object v13, v4

    const/4 v15, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_7

    :pswitch_2
    const-string v0, "cloud_files"

    .line 1906
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    move-object v12, v2

    move-object v13, v4

    const/4 v15, 0x1

    move-object/from16 v2, p2

    goto/16 :goto_7

    .line 1886
    :pswitch_3
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1889
    :try_start_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    move-object/from16 v5, p2

    .line 1890
    invoke-static {v4, v5, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1892
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1894
    :cond_1
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1896
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1897
    throw v0

    :pswitch_4
    move-object/from16 v5, p2

    .line 1818
    iget-object v15, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1819
    :try_start_1
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v2, :cond_b

    .line 1823
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    .line 1824
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_a

    .line 1826
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

    .line 1830
    sget-object v6, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v6}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v6

    .line 1831
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1830
    invoke-static {v0, v6, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replaceUriParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1833
    invoke-static {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v10

    .line 1836
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1e

    if-ne v5, v6, :cond_7

    iget-object v5, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    array-length v5, v5

    if-le v5, v12, :cond_7

    const/4 v5, 0x3

    .line 1838
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

    .line 1843
    monitor-exit v15

    return v13

    .line 1844
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_3

    monitor-exit v15

    return v13

    .line 1846
    :cond_3
    iget-object v6, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    array-length v6, v6

    new-array v6, v6, [Ljava/lang/String;

    .line 1847
    iget-object v7, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    :goto_0
    const-string v9, "_id"

    .line 1850
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1851
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    :cond_4
    const-string v9, "audio_id"

    .line 1852
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v14, "play_order"

    .line 1853
    invoke-interface {v5, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 1854
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v14

    const-string v12, "audio_id = %d AND play_order = %d "

    new-array v13, v11, [Ljava/lang/Object;

    .line 1857
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v13, v10

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v13, v10

    .line 1854
    invoke-static {v14, v12, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 1858
    aput-object v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    .line 1860
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_6

    .line 1861
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    const/16 v19, 0x0

    .line 1863
    :goto_2
    array-length v7, v6

    if-ge v5, v7, :cond_8

    .line 1864
    aget-object v7, v6, v5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1865
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

    .line 1869
    iget-object v5, v14, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v19

    :cond_8
    if-lez v19, :cond_9

    .line 1872
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "date_updated"

    .line 1873
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1874
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri(I)Landroid/net/Uri;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1876
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1877
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1879
    :cond_9
    monitor-exit v15

    return v19

    .line 1881
    :cond_a
    monitor-exit v15

    const/4 v0, 0x0

    return v0

    .line 1820
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 1882
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :pswitch_5
    move-object/from16 v5, p2

    .line 1768
    iget-object v6, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1769
    :try_start_2
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    if-nez v2, :cond_10

    .line 1783
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    if-eq v2, v4, :cond_f

    .line 1787
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v5

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v5, v4, :cond_d

    const-string v4, "_id = ?"

    const/4 v7, 0x1

    .line 1790
    new-array v7, v7, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    aput-object v2, v7, v8

    .line 1792
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v8, "playlists"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1795
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1796
    invoke-virtual {v2, v8, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_c

    .line 1798
    sget-object v4, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1800
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 1798
    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    .line 1801
    invoke-virtual {v3, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1803
    :cond_c
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1805
    :try_start_4
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-lez v13, :cond_e

    .line 1809
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1810
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_3

    :catchall_2
    move-exception v0

    .line 1805
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1806
    throw v0

    :cond_d
    const/4 v13, 0x0

    .line 1813
    :cond_e
    :goto_3
    monitor-exit v6

    return v13

    .line 1785
    :cond_f
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

    .line 1770
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3
    move-exception v0

    .line 1814
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :pswitch_6
    move-object/from16 v5, p2

    .line 1735
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1736
    :try_start_5
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_13

    if-nez v2, :cond_13

    .line 1740
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v2

    const-string v5, "playlists"

    .line 1742
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v6

    .line 1743
    iget-object v7, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1745
    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    .line 1746
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1748
    :try_start_6
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1749
    invoke-virtual {v7, v5, v8, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_11

    .line 1751
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 1752
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v3, v5, v8, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1755
    :cond_11
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1757
    :try_start_7
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    if-lez v2, :cond_12

    const/4 v5, 0x0

    .line 1760
    invoke-virtual {v3, v6, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1761
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1763
    :cond_12
    monitor-exit v4

    return v2

    :catchall_4
    move-exception v0

    .line 1757
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1758
    throw v0

    .line 1737
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    .line 1764
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :pswitch_7
    move-object/from16 v5, p2

    const-string v4, "tracks"

    .line 1723
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_14

    move-object v12, v2

    move-object v0, v4

    move-object v2, v5

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    goto/16 :goto_7

    .line 1727
    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Delete: Track uri not supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_8
    move-object/from16 v5, p2

    const-string v4, "albums"

    .line 1703
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_15

    goto :goto_4

    :cond_15
    const-string v2, "artist"

    .line 1707
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "album"

    .line 1708
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1709
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_16

    const-string v5, "album =? AND artist =?"

    .line 1715
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

    .line 1710
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Delete: Album uri not supported"

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    move-object/from16 v5, p2

    const-string v4, "artists"

    .line 1679
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_17

    move-object v0, v5

    goto :goto_6

    :cond_17
    const-string v2, "name"

    .line 1683
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1684
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v0, "artist =?"

    const/4 v5, 0x1

    goto :goto_5

    :cond_18
    const-string v2, "id"

    .line 1687
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1688
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "_id =?"

    const/4 v5, 0x1

    .line 1695
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

    .line 1923
    :goto_7
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 1926
    :try_start_8
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    if-eqz v14, :cond_1c

    const/4 v4, 0x1

    .line 1932
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

    if-eqz v4, :cond_1a

    .line 1934
    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1935
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1936
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    new-array v6, v6, [Ljava/io/File;

    const/4 v7, 0x0

    :goto_8
    add-int/lit8 v8, v7, 0x1

    .line 1939
    new-instance v9, Ljava/io/File;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v9, v6, v7

    .line 1940
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    if-nez v7, :cond_19

    move-object v14, v6

    goto :goto_9

    :cond_19
    move v7, v8

    goto :goto_8

    :catchall_6
    move-exception v0

    goto :goto_b

    :cond_1a
    const/4 v14, 0x0

    :goto_9
    if-eqz v4, :cond_1d

    .line 1944
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
    if-eqz v4, :cond_1b

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1946
    :cond_1b
    throw v0

    :cond_1c
    move-object v1, v11

    const/16 v16, 0x0

    const/4 v14, 0x0

    .line 1948
    :cond_1d
    :goto_c
    invoke-virtual {v1, v0, v2, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1f

    if-eqz v14, :cond_1e

    .line 1952
    array-length v2, v14

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v2, :cond_1e

    aget-object v5, v14, v4

    .line 1953
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1e
    if-eqz v15, :cond_1f

    if-eqz v13, :cond_1f

    const/4 v2, 0x0

    .line 1960
    invoke-virtual {v3, v13, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1963
    :cond_1f
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    .line 1965
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

    .line 1966
    throw v0

    .line 1691
    :cond_20
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Delete: Artist uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1658
    :cond_21
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unauthorized delete attempt blocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void

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
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1292
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v3, v4, :cond_13

    .line 1296
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 1298
    invoke-direct/range {p0 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->insertMediaInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1301
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1302
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    packed-switch v5, :pswitch_data_0

    .line 1480
    :pswitch_0
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert not supported for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1468
    :pswitch_1
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "search_history"

    .line 1469
    invoke-virtual {v4, v5, v11, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v2, v4, v9

    if-lez v2, :cond_11

    .line 1472
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v6, 0x1

    goto/16 :goto_6

    .line 1456
    :pswitch_2
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "cloud_files"

    .line 1457
    invoke-virtual {v4, v5, v11, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v2, v4, v9

    if-lez v2, :cond_11

    .line 1460
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v6, 0x1

    goto/16 :goto_6

    :pswitch_3
    if-eqz v2, :cond_11

    const-string v5, "name"

    .line 1404
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "service_id"

    .line 1405
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-eqz v5, :cond_7

    if-eqz v7, :cond_7

    .line 1408
    iget-object v12, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v12

    .line 1411
    :try_start_0
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    const-string v15, "name=? AND service_id=?"

    const/4 v13, 0x2

    .line 1416
    new-array v14, v13, [Ljava/lang/String;

    aput-object v5, v14, v6

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v14, v8

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v12

    move-object v7, v14

    move-object v14, v5

    move-object/from16 v16, v7

    .line 1418
    invoke-static/range {v13 .. v18}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v5, :cond_1

    .line 1420
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "_id"

    .line 1421
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1422
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v11, v5

    goto :goto_3

    :cond_1
    const/4 v7, -0x1

    :goto_0
    if-eqz v5, :cond_2

    .line 1426
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eq v7, v4, :cond_4

    const-string v4, "_id=?"

    .line 1433
    new-array v5, v8, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v6

    .line 1435
    invoke-static {v12, v2, v4, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    int-to-long v4, v7

    goto :goto_1

    :cond_3
    move-wide v4, v9

    goto :goto_1

    .line 1439
    :cond_4
    invoke-static {v12, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->insert(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)J

    move-result-wide v4

    :goto_1
    cmp-long v2, v4, v9

    if-lez v2, :cond_5

    .line 1443
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v11

    .line 1446
    :goto_2
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1448
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto/16 :goto_6

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v11, :cond_6

    .line 1426
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1428
    :cond_6
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 1448
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1449
    throw v0

    :cond_7
    move-object v0, v11

    goto/16 :goto_6

    .line 1382
    :pswitch_4
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1384
    :try_start_5
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v6

    .line 1383
    invoke-direct {v1, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v6

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    .line 1384
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_9

    .line 1386
    invoke-direct {v1, v2, v6}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId(Landroid/content/ContentValues;I)V

    const-string v4, "external"

    int-to-long v6, v6

    .line 1388
    invoke-static {v4, v6, v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 1389
    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1392
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1393
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v0, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1395
    :cond_8
    monitor-exit v5

    return-object v2

    .line 1398
    :cond_9
    monitor-exit v5

    return-object v11

    :catchall_3
    move-exception v0

    .line 1399
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    .line 1378
    :pswitch_5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not implemented support for insert of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1345
    :pswitch_6
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1346
    :try_start_6
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validatePlaylistValues(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1347
    invoke-direct {v1, v3, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->createMediaStorePlaylistOrGetInfo(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z

    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-eqz v5, :cond_d

    .line 1350
    :try_start_7
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateMediastoreInsertValuesAvailable(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1354
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 1355
    :try_start_8
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string v6, "playlists"

    .line 1356
    invoke-virtual {v5, v6, v11, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v6

    cmp-long v2, v6, v9

    if-lez v2, :cond_a

    .line 1360
    invoke-static {v0, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1362
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v3, v2, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 1363
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v3, v2, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v11, v0

    .line 1365
    :cond_a
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    if-eqz v5, :cond_d

    .line 1368
    :try_start_9
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_4

    .line 1351
    :cond_b
    :try_start_a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Incorrect columns available."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    move-object v5, v11

    :goto_4
    if-eqz v5, :cond_c

    .line 1368
    :try_start_b
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1370
    :cond_c
    throw v0

    .line 1373
    :cond_d
    :goto_5
    monitor-exit v4

    return-object v11

    :catchall_6
    move-exception v0

    .line 1374
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    .line 1333
    :pswitch_7
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateTrackValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1334
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "tracks"

    .line 1335
    invoke-virtual {v4, v5, v11, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long v2, v4, v9

    if-lez v2, :cond_e

    .line 1338
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_6

    :cond_e
    move-object v0, v11

    goto :goto_6

    .line 1321
    :pswitch_8
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateAlbumValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1322
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "albums"

    .line 1323
    invoke-virtual {v4, v5, v11, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long v2, v4, v9

    if-lez v2, :cond_f

    .line 1326
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_6

    :cond_f
    move-object v0, v11

    goto :goto_6

    .line 1308
    :pswitch_9
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->validateArtistValues(Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1309
    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "artists"

    .line 1310
    invoke-virtual {v4, v5, v11, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v4

    cmp-long v2, v4, v9

    if-lez v2, :cond_10

    .line 1314
    invoke-static {v0, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_6

    :cond_10
    move-object v0, v11

    goto :goto_6

    :cond_11
    move-object v0, v11

    :goto_6
    if-eqz v6, :cond_12

    if-eqz v0, :cond_12

    .line 1484
    invoke-virtual {v3, v0, v11}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_12
    return-object v0

    .line 1293
    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Unauthorized insert attempt blocked"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

.method public onCreate()Z
    .locals 2

    .line 244
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

    .line 2565
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 2571
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

    .line 2631
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2634
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2635
    invoke-static {p1, v0, p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->getAlbumArtFileDescriptor(Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    return-object p1

    .line 2640
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "openFile: not supported uri"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2607
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "force"

    const-string v4, "true"

    invoke-virtual {p1, v0, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 2608
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/String;

    const-string p1, "art_path"

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 2607
    invoke-virtual/range {v4 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_2

    .line 2611
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "art_path"

    .line 2613
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2612
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2615
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2617
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderUtils;->parseFileMode(Ljava/lang/String;)I

    move-result p2

    .line 2618
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

    .line 2624
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_1
    move-exception p2

    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2626
    :cond_3
    throw p2

    :cond_4
    const-string v0, "name"

    .line 2575
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2576
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 2582
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

    .line 2585
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "art_path"

    .line 2587
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2586
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2589
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2590
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2591
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderUtils;->parseFileMode(Ljava/lang/String;)I

    move-result p2

    .line 2592
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

    .line 2598
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    if-eqz v3, :cond_7

    return-object v3

    .line 2645
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

    .line 2598
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2600
    :cond_8
    throw p2

    .line 2577
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "openFile: is not supported for artist uri with undefined artist name"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2566
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unauthorized open file attempt blocked"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2

    .line 1273
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1275
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryMediaInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 1278
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v0, p1

    move-object/from16 v6, p4

    .line 589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_1f

    .line 593
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_1

    .line 595
    sget-boolean v1, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    move-object/from16 v5, p3

    move-object/from16 v7, p5

    .line 597
    invoke-static {v5, v6, v7, v4}, Lcom/sonyericsson/music/common/DBUtils;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1

    move-object/from16 v13, p2

    .line 598
    invoke-direct {v10, v0, v13, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->queryMediaInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_1
    move-object/from16 v13, p2

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    .line 599
    sget-object v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    if-eq v1, v3, :cond_1e

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 604
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 606
    sget-object v8, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v8, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 608
    new-instance v11, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v11}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 613
    iget-object v14, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    const/4 v15, 0x1

    packed-switch v8, :pswitch_data_0

    .line 858
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

    .line 848
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 851
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 852
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$SearchHistoryTable;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 851
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

    .line 836
    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloud;->queryAccountParentFiles(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 840
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 841
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 840
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

    .line 826
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 829
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 830
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 829
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

    .line 816
    invoke-static/range {v0 .. v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 819
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 820
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudAccounts;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    .line 819
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_5
    return-object v0

    .line 811
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

    .line 778
    :pswitch_6
    iget-object v8, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v8

    .line 779
    :try_start_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v6, :cond_7

    .line 786
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v4

    .line 785
    invoke-direct {v10, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 786
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_6

    .line 795
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const-string v2, "external"

    int-to-long v3, v4

    .line 797
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v12

    .line 799
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v14, v2

    check-cast v14, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, [Ljava/lang/String;

    move-object v11, v9

    move-object/from16 v13, p2

    move-object/from16 v16, p5

    .line 800
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 803
    invoke-interface {v2, v9, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 806
    :cond_6
    monitor-exit v8

    return-object v2

    .line 780
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 807
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 747
    :pswitch_7
    iget-object v2, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 748
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v6, :cond_a

    .line 760
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v5

    if-eq v5, v3, :cond_9

    const-string v0, "_id = ?"

    .line 765
    new-array v15, v15, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v15, v4

    const-string v3, "playlists"

    .line 767
    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v14

    move-object/from16 v13, p2

    move-object v14, v0

    move-object/from16 v18, p5

    .line 768
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 771
    invoke-interface {v0, v9, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 773
    :cond_8
    monitor-exit v2

    return-object v0

    .line 762
    :cond_9
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

    .line 749
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 774
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 727
    :pswitch_8
    iget-object v2, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 728
    :try_start_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-nez v6, :cond_c

    .line 732
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    const-string v3, "playlists"

    .line 733
    invoke-virtual {v11, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 735
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 736
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v12, v14

    move-object/from16 v13, p2

    move-object v14, v3

    move-object/from16 v18, p5

    .line 738
    invoke-virtual/range {v11 .. v18}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 740
    invoke-interface {v0, v9, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 742
    :cond_b
    monitor-exit v2

    return-object v0

    .line 729
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    .line 743
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :pswitch_9
    const-string v2, "tracks"

    .line 642
    invoke-virtual {v11, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v2, v5

    move-object v3, v6

    goto :goto_0

    :cond_d
    const-string v2, "id"

    .line 647
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "track_id =?"

    .line 655
    new-array v3, v15, [Ljava/lang/String;

    aput-object v0, v3, v4

    .line 657
    :goto_0
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "_id"

    goto :goto_1

    :cond_e
    move-object v0, v7

    :goto_1
    move-object v10, v1

    move-object v5, v2

    move-object v6, v3

    move-object v12, v9

    move-object v9, v0

    goto/16 :goto_9

    .line 651
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "query for track uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :pswitch_a
    iget-object v2, v10, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    .line 666
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_10

    move-object v14, v5

    move-object v15, v6

    goto :goto_2

    :cond_10
    const-string v2, "artist"

    .line 670
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "album"

    .line 671
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 672
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_18

    const-string v5, "album =? AND artist =?"

    const/4 v6, 0x2

    .line 678
    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v4

    aput-object v2, v6, v15

    move-object v14, v5

    move-object v15, v6

    .line 680
    :goto_2
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "_id"

    move-object/from16 v16, v2

    goto :goto_3

    :cond_11
    move-object/from16 v16, v7

    :goto_3
    const-string v3, "albums"

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v2, v11

    move-object/from16 v4, p2

    move-object v5, v14

    move-object v6, v15

    move-object v12, v9

    move-object/from16 v9, v16

    .line 682
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 685
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_12

    .line 686
    invoke-interface {v2, v12, v1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v2

    :cond_12
    const-string v3, "force"

    .line 688
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    if-eqz v2, :cond_13

    .line 691
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 694
    :cond_13
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_3
    const-string v2, "artist"

    .line 697
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v2, "album"

    .line 698
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

    .line 700
    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->extractAndSaveEmbeddedAlbumArt(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 702
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/database/Cursor;

    .line 704
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 705
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_4

    :cond_14
    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p2

    move-object v4, v14

    move-object v5, v15

    const/4 v6, 0x0

    move-object/from16 v7, v16

    move-object/from16 v8, v18

    move-object v9, v0

    .line 707
    invoke-direct/range {v1 .. v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->extractAndSaveAlbumArtFromMediaStore(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 709
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/database/Cursor;

    .line 711
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 712
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :cond_15
    move-object v2, v1

    .line 716
    :goto_4
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_5

    :catchall_3
    move-exception v0

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 717
    throw v0

    :cond_16
    move-object v10, v1

    :goto_5
    if-eqz v2, :cond_17

    .line 721
    invoke-interface {v2, v12, v10}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_17
    return-object v2

    .line 673
    :cond_18
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Album uri not supported, both artist and album is undefined"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    move-object v10, v1

    move-object v12, v9

    const-string v1, "artists"

    .line 617
    invoke-virtual {v11, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 618
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_19

    move-object v0, v5

    move-object v2, v6

    goto :goto_7

    :cond_19
    const-string v1, "name"

    .line 622
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 623
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    const-string v0, "artist =?"

    goto :goto_6

    :cond_1a
    const-string v1, "id"

    .line 626
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "_id =?"

    .line 635
    :goto_6
    new-array v2, v15, [Ljava/lang/String;

    aput-object v1, v2, v4

    .line 637
    :goto_7
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-string v1, "_id"

    goto :goto_8

    :cond_1b
    move-object v1, v7

    :goto_8
    move-object v5, v0

    move-object v9, v1

    move-object v6, v2

    :goto_9
    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object v2, v11

    move-object v3, v14

    move-object/from16 v4, p2

    .line 861
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 863
    invoke-interface {v0, v12, v10}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :cond_1c
    return-object v0

    .line 630
    :cond_1d
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "query for artist uri not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_1e
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

    .line 590
    :cond_1f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unauthorized query attempt blocked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

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

    .line 2891
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderHighResMedia;->sync(Landroid/content/Context;Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;)V

    return-void
.end method

.method syncPlaylistsWithMediaStore(Landroid/os/Bundle;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 2736
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2737
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2739
    invoke-static {v3}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 2741
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2747
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2748
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2751
    invoke-static {v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->createSmartPlaylists(Landroid/content/Context;)V

    .line 2754
    invoke-static {v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->deleteSensMePlaylists(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2759
    :try_start_1
    invoke-static {v3}, Lcom/sonyericsson/music/common/DBUtils;->getLocalMediaStorePlaylists(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v7, :cond_6

    .line 2760
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "name"

    .line 2761
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "_id"

    .line 2762
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "_data"

    .line 2764
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    const-string v13, "date_added"

    .line 2766
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    const-string v14, "date_modified"

    .line 2768
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 2770
    :goto_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 2771
    sget-boolean v16, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v16, :cond_0

    invoke-direct {v1, v15}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->removeSmartPlaylistDuplicate(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 2772
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "name"

    .line 2773
    invoke-virtual {v5, v9, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    goto/16 :goto_3

    .line 2777
    :cond_0
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2778
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v9, -0x1

    if-le v5, v9, :cond_3

    .line 2783
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2785
    invoke-static {v15}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getSmartPlaylistType(Ljava/lang/String;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    move-result-object v9

    .line 2786
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v18, v10

    .line 2787
    invoke-interface {v7, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    move/from16 v19, v11

    .line 2789
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    move/from16 v20, v12

    const-string v12, "name"

    .line 2790
    invoke-virtual {v11, v12, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "path"

    .line 2791
    invoke-virtual {v11, v12, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "mediastore_id"

    .line 2794
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "smart_playlist_type"

    if-eqz v9, :cond_1

    .line 2796
    invoke-virtual {v9}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_1

    :cond_1
    sget-object v12, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->SMART_PLAYLIST_TYPE_NONE:Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;

    .line 2798
    invoke-virtual {v12}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists$PlaylistProviderTypeIndex;->getId()I

    move-result v12

    .line 2797
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 2795
    :goto_1
    invoke-virtual {v11, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "date_created"

    .line 2799
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "date_updated"

    const/4 v12, -0x1

    if-eq v10, v12, :cond_2

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    .line 2801
    :goto_2
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 2800
    invoke-virtual {v11, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "is_available"

    const/4 v10, 0x1

    .line 2802
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v8, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "members_count"

    .line 2803
    invoke-direct {v1, v5, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getPlaylistTracksCount(ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v11, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2806
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    goto :goto_3

    :cond_4
    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v20, v12

    .line 2809
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v5, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v12, v20

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_6
    :goto_4
    if-eqz v7, :cond_7

    .line 2814
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2821
    :cond_7
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "name"

    const-string v8, "Music_newly_added_tracks"

    .line 2822
    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "path"

    .line 2823
    sget-object v8, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 2824
    invoke-virtual {v8}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getContainerUri()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2823
    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "mediastore_id"

    const/4 v8, -0x2

    .line 2825
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "smart_playlist_type"

    .line 2826
    sget-object v9, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    .line 2827
    invoke-virtual {v9}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->getProviderTypeId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 2826
    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "is_available"

    const/4 v9, 0x1

    .line 2828
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "members_count"

    .line 2829
    sget-object v9, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->NEWLY_ADDED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-direct {v1, v8, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getPlaylistTracksCount(ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2831
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2834
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2835
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "name IN ("

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2836
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    .line 2837
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    const-string v10, "?, "

    .line 2838
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    invoke-interface {v6, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    const-string v11, "name"

    .line 2840
    invoke-virtual {v9, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v10

    goto :goto_5

    .line 2842
    :cond_8
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2843
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v10}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2842
    invoke-virtual {v6, v8, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    .line 2849
    :goto_6
    invoke-direct {v1, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->verifyPresentData(Ljava/util/List;)V

    .line 2852
    invoke-direct {v1, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->bulkInsertPlaylist(Ljava/util/List;)I

    if-eqz v0, :cond_a

    const-string v4, "delay_art_refresh"

    .line 2857
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_7

    :cond_a
    const/4 v9, 0x0

    :goto_7
    if-nez v9, :cond_b

    .line 2861
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mRefreshPlaylistArtRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_9

    .line 2863
    :cond_b
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mHandler:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    iget-object v4, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mRefreshPlaylistArtRunnable:Ljava/lang/Runnable;

    int-to-long v5, v9

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    :catchall_1
    move-exception v0

    const/4 v7, 0x0

    :goto_8
    if-eqz v7, :cond_c

    .line 2814
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2816
    :cond_c
    throw v0

    .line 2873
    :cond_d
    :goto_9
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2875
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2876
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentSyncCompletedUri()Landroid/net/Uri;

    move-result-object v3

    .line 2875
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2877
    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    return-void
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v4, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 2004
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    if-ne v5, v6, :cond_20

    .line 2008
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->MEDIA_URI:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 2010
    invoke-direct/range {p0 .. p4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updateMediaInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2013
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 2015
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 2016
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    const/4 v7, 0x2

    const/16 v16, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x1

    packed-switch v5, :pswitch_data_0

    .line 2297
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

    goto/16 :goto_c

    .line 2269
    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->parseAccountAndParent(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2274
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

    .line 2277
    invoke-static {v2, v3, v5, v0}, Lcom/sonyericsson/music/common/DBUtils;->appendSelection(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    const-string v2, "cloud_files"

    .line 2284
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 2285
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    move-object v6, v0

    move-object v5, v3

    move-object v9, v14

    move-object v3, v2

    goto/16 :goto_c

    .line 2271
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

    goto/16 :goto_c

    .line 2244
    :pswitch_4
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 2247
    :try_start_0
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 2248
    invoke-static {v5, v4, v2, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProviderCloudAccount;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    .line 2251
    invoke-virtual {v15, v8, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2253
    :cond_2
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2255
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v0

    :catchall_0
    move-exception v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2256
    throw v0

    .line 2196
    :pswitch_5
    iget-object v5, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2197
    :try_start_1
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v3, :cond_6

    .line 2204
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    .line 2203
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    .line 2204
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v2, v6, :cond_5

    const-string v3, "from"

    .line 2206
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "to"

    .line 2207
    invoke-virtual {v0, v6}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2208
    sget-object v7, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2209
    invoke-virtual {v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getParameter()Ljava/lang/String;

    move-result-object v7

    .line 2210
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 2208
    invoke-static {v0, v7, v8}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replaceUriParam(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 2212
    invoke-direct {v1, v4, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replacePlaylistId(Landroid/content/ContentValues;I)V

    .line 2214
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    int-to-long v7, v2

    .line 2216
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2217
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2216
    invoke-static {v15, v7, v8, v2, v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->moveItem(Landroid/content/ContentResolver;JII)Z

    move-result v2

    goto :goto_0

    :cond_3
    const-string v3, "external"

    int-to-long v8, v2

    .line 2220
    invoke-static {v3, v8, v9}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 2224
    invoke-static {v7}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v3

    .line 2226
    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    .line 2227
    invoke-virtual {v15, v2, v4, v6, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-lez v2, :cond_4

    .line 2236
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2237
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v15, v0, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2239
    :cond_4
    monitor-exit v5

    return v2

    .line 2231
    :cond_5
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

    .line 2198
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 2240
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 2122
    :pswitch_6
    iget-object v7, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v7

    .line 2123
    :try_start_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez v3, :cond_11

    .line 2128
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getPlaylistIdParam(Landroid/net/Uri;)I

    move-result v2

    if-eq v2, v6, :cond_10

    if-eqz v4, :cond_7

    .line 2134
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-ne v0, v13, :cond_7

    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_IS_HIDDEN:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2135
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_d

    .line 2145
    invoke-direct {v1, v2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->getMediaStorePlaylistIdAndName(I)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2146
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_c

    .line 2147
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

    .line 2149
    new-array v5, v13, [Ljava/lang/String;

    iget-object v6, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v16

    .line 2150
    invoke-direct {v1, v15, v4, v3, v5}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updatePlaylistInMediaStore(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-ne v3, v13, :cond_b

    .line 2151
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2152
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2151
    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 2155
    :try_start_3
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2156
    invoke-virtual {v0}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v0

    .line 2157
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

    if-eqz v14, :cond_8

    .line 2159
    :try_start_5
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2160
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 2161
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2162
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v15, v5, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_8
    move-object v0, v3

    :goto_2
    if-eqz v14, :cond_9

    .line 2166
    :try_start_6
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v0, :cond_e

    .line 2173
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v14, v3

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v3, v14

    :goto_3
    if-eqz v14, :cond_a

    .line 2166
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2168
    :cond_a
    throw v0

    :cond_b
    move-object v3, v14

    const/4 v6, 0x1

    goto :goto_4

    :cond_c
    move-object v3, v14

    const/4 v6, 0x1

    goto :goto_4

    :cond_d
    move-object v3, v14

    const/4 v6, 0x1

    :cond_e
    :goto_4
    const-string v0, "playlists"

    const-string v5, "_id = ?"

    .line 2182
    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v16

    .line 2183
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

    .line 2185
    :try_start_7
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_f

    .line 2188
    invoke-virtual {v15, v8, v14}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2191
    :cond_f
    monitor-exit v10

    return v0

    :cond_10
    move-object v10, v7

    .line 2130
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

    :cond_11
    move-object v10, v7

    .line 2124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_5
    move-exception v0

    move-object v10, v7

    .line 2192
    :goto_5
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_5

    :pswitch_7
    const/4 v6, 0x1

    .line 2039
    iget-object v8, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mPlaylistDatabaseLock:Ljava/lang/Object;

    monitor-enter v8

    .line 2040
    :try_start_8
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    if-nez v3, :cond_1d

    if-eqz v4, :cond_13

    .line 2045
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_MEDIASTORE_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2046
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v2

    .line 2045
    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_6

    .line 2048
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid content for update"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2051
    :cond_13
    :goto_6
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2053
    invoke-direct {v1, v4}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->isOnlyRefreshMusicInfoInternalValues(Landroid/content/ContentValues;)Z

    move-result v17

    if-nez v17, :cond_18

    .line 2057
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->replaceMusicInfoIdsWithMediaStoreIds(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 2059
    invoke-static {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMediastoreWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v2

    .line 2060
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v12, v3

    check-cast v12, Ljava/lang/String;

    .line 2061
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v2

    check-cast v13, [Ljava/lang/String;

    .line 2062
    invoke-direct {v1, v15, v4, v12, v13}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->updatePlaylistInMediaStore(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    if-lt v2, v6, :cond_17

    .line 2065
    :try_start_9
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PLAYLIST_IDS:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2066
    invoke-virtual {v2}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v2

    .line 2067
    sget-object v3, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    .line 2068
    invoke-virtual {v3}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMediaStoreColumnName()Ljava/lang/String;

    move-result-object v3

    .line 2069
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

    if-eqz v14, :cond_15

    .line 2072
    :try_start_b
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2073
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 2074
    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 2076
    :cond_14
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_14

    .line 2078
    sget-object v2, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->NOTIFY_PLAYLIST_URI:Landroid/net/Uri;

    invoke-virtual {v15, v2, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    goto :goto_8

    :cond_15
    :goto_7
    if-eqz v14, :cond_19

    .line 2082
    :try_start_c
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catchall_8
    move-exception v0

    move-object v14, v6

    goto :goto_8

    :catchall_9
    move-exception v0

    move-object v6, v14

    :goto_8
    if-eqz v14, :cond_16

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 2084
    :cond_16
    throw v0

    :cond_17
    move-object v6, v14

    goto :goto_9

    :cond_18
    move-object v6, v14

    .line 2089
    :cond_19
    :goto_9
    iget-object v2, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v18

    const-string v19, "playlists"

    .line 2091
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams;->getMusicInfoWhereParams(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 2092
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    .line 2093
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    const/4 v9, 0x5

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, p2

    move-object v14, v5

    move-object v5, v7

    move-object v12, v6

    const/4 v13, 0x1

    move-object v6, v0

    move v7, v9

    .line 2094
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1c

    if-nez v17, :cond_1b

    .line 2097
    invoke-virtual {v14}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 2099
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2101
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2102
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 2103
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2104
    sget-object v5, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->FILTER_PATH:Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;

    invoke-virtual {v5}, Lcom/sonyericsson/music/metadata/provider/FilterQueryParams$Filter;->getMusicInfoColumnName()Ljava/lang/String;

    move-result-object v5

    .line 2105
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 2104
    invoke-virtual {v2, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2106
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

    .line 2108
    new-array v6, v13, [Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v16

    const/4 v4, 0x5

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object v11, v2

    move-object v7, v12

    move-object v12, v5

    const/4 v5, 0x1

    move-object v13, v6

    move-object v6, v14

    move v14, v4

    .line 2109
    invoke-virtual/range {v9 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-object v14, v6

    move-object v12, v7

    const/4 v13, 0x1

    goto :goto_a

    :cond_1a
    move-object v7, v12

    goto :goto_b

    :cond_1b
    move-object v7, v12

    .line 2114
    :goto_b
    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v15, v2, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 2117
    :cond_1c
    monitor-exit v8

    return v0

    .line 2041
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "selectionArguments not allowed, please see FilterQueryParams-class"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_a
    move-exception v0

    .line 2118
    monitor-exit v8
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    throw v0

    :pswitch_8
    move-object v9, v14

    const/4 v5, 0x1

    const-string v6, "albums"

    .line 2025
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v10

    if-eqz v10, :cond_1e

    const-string v2, "artist =? AND album =?"

    .line 2028
    new-array v3, v7, [Ljava/lang/String;

    const-string v7, "artist"

    .line 2029
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v16

    const-string v7, "album"

    .line 2030
    invoke-virtual {v0, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    move-object v5, v2

    move-object/from16 v20, v6

    move-object v6, v3

    move-object/from16 v3, v20

    goto :goto_c

    :cond_1e
    move-object v5, v2

    move-object/from16 v20, v6

    move-object v6, v3

    move-object/from16 v3, v20

    .line 2300
    :goto_c
    iget-object v0, v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->mDbHelper:Lcom/sonyericsson/music/metadata/provider/MusicInfoDatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/4 v7, 0x5

    move-object/from16 v4, p2

    .line 2301
    invoke-virtual/range {v2 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1f

    .line 2304
    invoke-virtual {v15, v8, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1f
    return v0

    .line 2005
    :cond_20
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
