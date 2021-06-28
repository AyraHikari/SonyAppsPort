.class public Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
.super Ljava/lang/Object;
.source "MediaPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioSession:I

.field private mDelayedPauseEndMillis:J

.field mIsBuffering:Z

.field mIsInPlayQueueMode:Z

.field mIsPlaying:Z

.field mIsShuffled:Z

.field private mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

.field private mPlaybackPos:I

.field mRepeatMode:I

.field private mRouteId:Ljava/lang/String;

.field private mRouteType:I

.field private mTrack:Lcom/sonyericsson/music/common/Track;

.field private mTrackColor:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsPlaying:Z

    const/4 v1, 0x1

    .line 210
    iput v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mRepeatMode:I

    .line 211
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsShuffled:Z

    .line 212
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsBuffering:Z

    .line 213
    iput-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsInPlayQueueMode:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)I
    .locals 0

    .line 208
    iget p0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mRouteType:I

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mRouteId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)J
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mDelayedPauseEndMillis:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)I
    .locals 0

    .line 208
    iget p0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mPlaybackPos:I

    return p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)I
    .locals 0

    .line 208
    iget p0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mTrackColor:I

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)Lcom/sonyericsson/music/common/Track;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)I
    .locals 0

    .line 208
    iget p0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mAudioSession:I

    return p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p0
.end method


# virtual methods
.method public audioSession(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 283
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mAudioSession:I

    return-object p0
.end method

.method public build()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;
    .locals 1

    .line 294
    new-instance v0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;-><init>(Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;)V

    return-object v0
.end method

.method public delayedPauseEndMillis(J)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 262
    iput-wide p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mDelayedPauseEndMillis:J

    return-object p0
.end method

.method public isBuffering(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 242
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsBuffering:Z

    return-object p0
.end method

.method public isInPlayQueueMode(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 247
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsInPlayQueueMode:Z

    return-object p0
.end method

.method public isPlaying(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsPlaying:Z

    return-object p0
.end method

.method public isShuffled(Z)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mIsShuffled:Z

    return-object p0
.end method

.method public mediaSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mMediaSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    return-object p0
.end method

.method public playbackPos(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 267
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mPlaybackPos:I

    return-object p0
.end method

.method public repeatMode(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 232
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mRepeatMode:I

    return-object p0
.end method

.method public routeId(Ljava/lang/String;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mRouteId:Ljava/lang/String;

    return-object p0
.end method

.method public routeType(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 252
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mRouteType:I

    return-object p0
.end method

.method public track(Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mTrack:Lcom/sonyericsson/music/common/Track;

    return-object p0
.end method

.method public trackColor(I)Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;
    .locals 0

    .line 272
    iput p1, p0, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState$Builder;->mTrackColor:I

    return-object p0
.end method
