.class public Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;
.super Ljava/lang/Object;
.source "PlaybackControlStateIntents.java"


# static fields
.field public static final BUFFERING_STARTED:I = -0x65

.field public static final BUFFERING_STOPPED:I = -0x66

.field public static final EXTRA_ACTIVE_PRESSED:Ljava/lang/String; = "ACTIVE_PRESSED"

.field public static final EXTRA_ALBUM_ID:Ljava/lang/String; = "ALBUM_ID"

.field public static final EXTRA_ALBUM_NAME:Ljava/lang/String; = "ALBUM_NAME"

.field public static final EXTRA_ARTIST_ID:Ljava/lang/String; = "ARTIST_ID"

.field public static final EXTRA_ARTIST_NAME:Ljava/lang/String; = "ARTIST_NAME"

.field public static final EXTRA_BUFFERING_PROGRESS:Ljava/lang/String; = "BUFFERING_PROGRESS"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "ERROR_CODE"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "ERROR_MSG"

.field public static final EXTRA_ERROR_PLAYING:Ljava/lang/String; = "ERROR_PLAYING"

.field public static final EXTRA_ERROR_TITLE:Ljava/lang/String; = "ERROR_TITLE"

.field public static final EXTRA_IS_LOCAL:Ljava/lang/String; = "IS_LOCAL"

.field public static final EXTRA_IS_PLAYQUEUE_SUPPORTED:Ljava/lang/String; = "PLAYQUEUE_SUPPORTED"

.field public static final EXTRA_IS_SHUFFLED:Ljava/lang/String; = "IS_SHUFFLED"

.field public static final EXTRA_PLAYER:Ljava/lang/String; = "PLAYER"

.field public static final EXTRA_PREVIOUS_TRACK_POSITION:Ljava/lang/String; = "PREVIOUS_TRACK_POSITION"

.field public static final EXTRA_PREVIOUS_TRACK_URI:Ljava/lang/String; = "PREVIOUS_TRACK_URI"

.field public static final EXTRA_REPEAT_MODE:Ljava/lang/String; = "REPEAT_MODE"

.field public static final EXTRA_SEEK_FORWARD:Ljava/lang/String; = "SEEK_FORWARD"

.field public static final EXTRA_TIMESTAMP_MS:Ljava/lang/String; = "TIMESTAMP_MS"

.field public static final EXTRA_TRACK_DURATION:Ljava/lang/String; = "TRACK_DURATION"

.field public static final EXTRA_TRACK_ID:Ljava/lang/String; = "TRACK_ID"

.field public static final EXTRA_TRACK_NAME:Ljava/lang/String; = "TRACK_NAME"

.field public static final EXTRA_TRACK_POSITION:Ljava/lang/String; = "TRACK_POSITION"

.field public static final EXTRA_TRACK_URI:Ljava/lang/String; = "TRACK_URI"

.field public static final PLAYBACK_SERVICE_ERROR_CONTENT_UNAVAILABLE:I = 0x46

.field public static final PLAYBACK_SERVICE_ERROR_GENERIC_FAILURE:I = 0x32

.field public static final PLAYBACK_SERVICE_ERROR_MEDIA_UNKNOWN:I = 0xa

.field public static final PLAYBACK_SERVICE_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0x14

.field public static final PLAYBACK_SERVICE_ERROR_NO_CONNECTION:I = 0x3c

.field public static final PLAYBACK_SERVICE_ERROR_SECURITY:I = 0x28

.field public static final PLAYBACK_SERVICE_MEDIA_ERROR_SERVER_DIED:I = 0x1e


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBufferingUpdatedIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".BUFFERING_UPDATED_INTENT"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPlaybackErrorIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".PLAYBACK_ERROR"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRepeatModeChangedIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".REPEAT_MODE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShuffleChangedIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".SHUFFLE_CHANGED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".TRACK_COMPLETED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".playbackcontrol.ACTION_PAUSED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackPreparedIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".TRACK_PREPARED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackSeekedIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".TRACK_SEEKED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".playbackcontrol.ACTION_SKIPPED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".playbackcontrol.ACTION_TRACK_STARTED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".TRACK_TO_BE_PREPARED"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
