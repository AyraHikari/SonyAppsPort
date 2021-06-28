.class public Lcom/sonyericsson/music/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final FAVOURITES_PLAYLIST_NAME:Ljava/lang/String; = "WALKMAN favorites"

.field public static final JOB_SERVICE_ID_ANALYTICS_SERVICE:I = 0x3

.field public static final JOB_SERVICE_ID_MUSIC_INFO_SERVICE:I = 0x2

.field public static final JOB_SERVICE_ID_REFRESH_PLAYLIST_ART_SERVICE:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "SemcMusicPlayer"

.field public static final MIME_IMELODY:Ljava/lang/String; = "audio/imelody"

.field public static final MIME_IMY:Ljava/lang/String; = "audio/imy"

.field public static final MIME_MID:Ljava/lang/String; = "audio/mid"

.field public static final MIME_MIDI:Ljava/lang/String; = "audio/midi"

.field public static final MIME_SP_MIDI:Ljava/lang/String; = "audio/sp-midi"

.field public static final MOST_PLAYED_PLAYLIST_NAME:Ljava/lang/String; = "WALKMAN most played tracks"

.field public static final MUSIC_FAVOURITES_PLAYLIST_NAME:Ljava/lang/String; = "Music_favorites"

.field public static final MUSIC_MOST_PLAYED_PLAYLIST_NAME:Ljava/lang/String; = "Music_most_played_tracks"

.field public static final MUSIC_NEWLY_ADDED_PLAYLIST_NAME:Ljava/lang/String; = "Music_newly_added_tracks"

.field public static final MUSIC_RECENTLY_PLAYED_PLAYLIST_NAME:Ljava/lang/String; = "Music_recently_played_tracks"

.field public static final MUSIC_SENSME_PLAYLIST_NAME:Ljava/lang/String; = "Music_SensMe_channel"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final NOTIFICATION_ID_CLOUD_CONTENT_DOWNLOAD:I = 0x3

.field public static final NOTIFICATION_ID_INVALID:I = -0x1

.field public static final NOTIFICATION_ID_MEDIA_PLAYBACK:I = 0x2

.field public static final NOTIFICATION_ID_UPDATE_MUSIC_INFO:I = 0x1

.field public static final RECENTLY_PLAYED_PLAYLIST_NAME:Ljava/lang/String; = "WALKMAN recently played tracks"

.field public static final REQUEST_CODE_FAKE:I = 0xd

.field public static final SENSME_PLAYLIST_NAME:Ljava/lang/String; = "WALKMAN SensMe channel"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final USER_CREATED_PLAYLIST_DATA_PATH:Ljava/lang/String;

.field public static final USER_CREATED_PLAYLIST_DATA_PATH_FROM_Q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/Playlists/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/Constants;->USER_CREATED_PLAYLIST_DATA_PATH_FROM_Q:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
