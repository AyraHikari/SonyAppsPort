.class public Lcom/sonyericsson/music/playerservice/PlayerCallbacks;
.super Ljava/lang/Object;
.source "PlayerCallbacks.java"


# static fields
.field public static final ACTION_PLAYBACK_INFO:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYBACK_INFO"

.field public static final ACTION_PLAYER_STATE:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

.field public static final BUFFERING_STARTED:I = -0x65

.field public static final BUFFERING_STOPPED:I = -0x66

.field public static final ERROR_FATAL:I = 0x1

.field public static final ERROR_UNSUPPORTED:I = 0x0

.field public static final EXTRA_BUFFERING_PROGRESS:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_BUFFERING_PROGRESS"

.field public static final EXTRA_DATA_URI:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_DATA_URI"

.field public static final EXTRA_DATA_URI_EXPIRY_TIME:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_DATA_URI_EXPIRY_TIME"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_ERROR_CODE"

.field public static final EXTRA_ERROR_MESSAGE:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_ERROR_MESSAGE"

.field public static final EXTRA_ERROR_PLAYING:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_ERROR_PLAYING"

.field public static final EXTRA_ERROR_TITLE:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_ERROR_TITLE"

.field public static final EXTRA_OLD_PLAYBACK_POSITION:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_OLD_PLAYBACK_POSITION"

.field public static final EXTRA_PAUSED_REASON:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PAUSED_REASON"

.field public static final EXTRA_PLAYBACK_POSITION_CHANGED:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYBACK_POSITION_CHANGED"

.field public static final EXTRA_PLAYER_ID:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

.field public static final EXTRA_PLAYLIST_POSITION:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

.field public static final EXTRA_STATE:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_STATE"

.field public static final EXTRA_TRACK_COMPLETED:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_COMPLETED"

.field public static final EXTRA_TRACK_URI:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_URI"

.field public static final PAUSED_REASON_AUDIOFOCUS_LOSS:I = 0x2

.field public static final PAUSED_REASON_GENERIC:I = 0x0

.field public static final PAUSED_REASON_PHONE_CALL:I = 0x1

.field public static final STATE_BUFFERING:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.STATE_BUFFERING"

.field public static final STATE_ERROR:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.STATE_ERROR"

.field public static final STATE_IDLE:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.STATE_IDLE"

.field public static final STATE_OPENED:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.STATE_OPENED"

.field public static final STATE_PAUSED:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.STATE_PAUSED"

.field public static final STATE_PLAYING:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.STATE_PLAYING"

.field public static final STATE_RELEASED:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.STATE_RELEASED"

.field public static final STATE_SEEK_DONE:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.STATE_SEEK_DONE"

.field public static final STATE_SKIPPED:Ljava/lang/String; = "com.sonyericsson.music.playerservice.playercallbacks.STATE_SKIPPED"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
