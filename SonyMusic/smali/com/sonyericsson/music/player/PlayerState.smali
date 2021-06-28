.class public Lcom/sonyericsson/music/player/PlayerState;
.super Ljava/lang/Object;
.source "PlayerState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/player/PlayerState$Mode;,
        Lcom/sonyericsson/music/player/PlayerState$SkipDirection;,
        Lcom/sonyericsson/music/player/PlayerState$LoadingState;
    }
.end annotation


# static fields
.field public static final EMPTY:Lcom/sonyericsson/music/player/PlayerState;

.field public static final NO_POS:I = -0x1

.field public static final PLAYBACK_POSITION_UNKNOWN:I = -0x1


# instance fields
.field private mAudioSession:I

.field private mCurrentTrack:Lcom/sonyericsson/music/common/Track;

.field private mCurrentTrackColor:I

.field private mDelayedPauseEndMillis:J

.field private mIsInPlayQueueMode:Z

.field private mIsPlaying:Z

.field private mLoadingState:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

.field private mMode:Lcom/sonyericsson/music/player/PlayerState$Mode;

.field private mPlayQueueCursor:Landroid/database/Cursor;

.field private mPlaybackPosition:I

.field private mRepeatMode:I

.field private mRouteId:Ljava/lang/String;

.field private mRouteType:I

.field private mShuffle:Z

.field private mSkipDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/sonyericsson/music/player/PlayerState;->createEmpty()Lcom/sonyericsson/music/player/PlayerState;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/music/player/PlayerState;->EMPTY:Lcom/sonyericsson/music/player/PlayerState;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static consistentPlayQueue(Lcom/sonyericsson/music/common/Track;ZLandroid/database/Cursor;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p1

    if-ltz p1, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static create(Lcom/sonyericsson/music/player/MediaPlaybackWrapper;Landroid/database/Cursor;Lcom/sonyericsson/music/player/PlayerState$LoadingState;IILcom/sonyericsson/music/player/PlayerState;)Lcom/sonyericsson/music/player/PlayerState;
    .locals 3

    .line 89
    new-instance v0, Lcom/sonyericsson/music/player/PlayerState;

    invoke-direct {v0}, Lcom/sonyericsson/music/player/PlayerState;-><init>()V

    .line 91
    invoke-virtual {p0}, Lcom/sonyericsson/music/player/MediaPlaybackWrapper;->getPlaybackState()Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isPlaying()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mIsPlaying:Z

    .line 94
    iput-object p2, v0, Lcom/sonyericsson/music/player/PlayerState;->mLoadingState:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRepeatMode()I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/music/player/PlayerState;->mRepeatMode:I

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isShuffled()Z

    move-result p2

    iput-boolean p2, v0, Lcom/sonyericsson/music/player/PlayerState;->mShuffle:Z

    .line 97
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteType()I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/music/player/PlayerState;->mRouteType:I

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrackColor()I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrackColor:I

    .line 99
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getRouteId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/sonyericsson/music/player/PlayerState;->mRouteId:Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getDelayedPauseEndMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mDelayedPauseEndMillis:J

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getAudioSession()I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/music/player/PlayerState;->mAudioSession:I

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p2

    .line 104
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->isInPlayQueueMode()Z

    move-result v1

    .line 105
    invoke-static {p1, p3}, Lcom/sonyericsson/music/player/PlayerState;->validPendingPosition(Landroid/database/Cursor;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    invoke-static {p1, p3}, Lcom/sonyericsson/music/player/PlayerState;->trackFromPlayQueue(Landroid/database/Cursor;I)Lcom/sonyericsson/music/common/Track;

    move-result-object p0

    iput-object p0, v0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 108
    iput p4, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlaybackPosition:I

    .line 109
    iput-boolean v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mIsInPlayQueueMode:Z

    .line 110
    iput-object p1, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlayQueueCursor:Landroid/database/Cursor;

    .line 111
    sget-object p0, Lcom/sonyericsson/music/player/PlayerState$Mode;->PENDING:Lcom/sonyericsson/music/player/PlayerState$Mode;

    iput-object p0, v0, Lcom/sonyericsson/music/player/PlayerState;->mMode:Lcom/sonyericsson/music/player/PlayerState$Mode;

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {p2, v1, p1}, Lcom/sonyericsson/music/player/PlayerState;->consistentPlayQueue(Lcom/sonyericsson/music/common/Track;ZLandroid/database/Cursor;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 114
    iput-object p2, v0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 115
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getPlaybackPos()I

    move-result p0

    iput p0, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlaybackPosition:I

    .line 116
    iput-boolean v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mIsInPlayQueueMode:Z

    .line 117
    iput-object p1, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlayQueueCursor:Landroid/database/Cursor;

    .line 118
    sget-object p0, Lcom/sonyericsson/music/player/PlayerState$Mode;->PQ:Lcom/sonyericsson/music/player/PlayerState$Mode;

    iput-object p0, v0, Lcom/sonyericsson/music/player/PlayerState;->mMode:Lcom/sonyericsson/music/player/PlayerState$Mode;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    if-nez v1, :cond_2

    .line 121
    iput-object p2, v0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 122
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getPlaybackPos()I

    move-result p0

    iput p0, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlaybackPosition:I

    .line 123
    iput-boolean p3, v0, Lcom/sonyericsson/music/player/PlayerState;->mIsInPlayQueueMode:Z

    .line 124
    iput-object p1, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlayQueueCursor:Landroid/database/Cursor;

    .line 125
    sget-object p0, Lcom/sonyericsson/music/player/PlayerState$Mode;->NOPQ:Lcom/sonyericsson/music/player/PlayerState$Mode;

    iput-object p0, v0, Lcom/sonyericsson/music/player/PlayerState;->mMode:Lcom/sonyericsson/music/player/PlayerState$Mode;

    goto :goto_0

    .line 129
    :cond_2
    iput-object p2, v0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 130
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/aidl/MediaPlaybackState;->getPlaybackPos()I

    move-result p0

    iput p0, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlaybackPosition:I

    .line 131
    iput-boolean p3, v0, Lcom/sonyericsson/music/player/PlayerState;->mIsInPlayQueueMode:Z

    const/4 p0, 0x0

    .line 132
    iput-object p0, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlayQueueCursor:Landroid/database/Cursor;

    .line 133
    sget-object p0, Lcom/sonyericsson/music/player/PlayerState$Mode;->NOPQ:Lcom/sonyericsson/music/player/PlayerState$Mode;

    iput-object p0, v0, Lcom/sonyericsson/music/player/PlayerState;->mMode:Lcom/sonyericsson/music/player/PlayerState$Mode;

    .line 135
    :goto_0
    invoke-virtual {p5}, Lcom/sonyericsson/music/player/PlayerState;->getCurrentTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object p0

    iget-object p1, v0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-static {p0, p1}, Lcom/sonyericsson/music/player/PlayerState;->guessSkipDirection(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    move-result-object p0

    iput-object p0, v0, Lcom/sonyericsson/music/player/PlayerState;->mSkipDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    return-object v0
.end method

.method private static createEmpty()Lcom/sonyericsson/music/player/PlayerState;
    .locals 3

    .line 58
    new-instance v0, Lcom/sonyericsson/music/player/PlayerState;

    invoke-direct {v0}, Lcom/sonyericsson/music/player/PlayerState;-><init>()V

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mIsPlaying:Z

    .line 60
    sget-object v2, Lcom/sonyericsson/music/player/PlayerState$LoadingState;->IDLE:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    iput-object v2, v0, Lcom/sonyericsson/music/player/PlayerState;->mLoadingState:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    const/4 v2, 0x0

    .line 61
    iput-object v2, v0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 62
    iput v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrackColor:I

    .line 63
    iput v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mRepeatMode:I

    .line 64
    iput-boolean v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mShuffle:Z

    .line 65
    iput v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlaybackPosition:I

    .line 66
    iput v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mRouteType:I

    .line 67
    iput-boolean v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mIsInPlayQueueMode:Z

    .line 68
    iput-object v2, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlayQueueCursor:Landroid/database/Cursor;

    .line 69
    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    iput-object v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mSkipDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    .line 70
    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$Mode;->NOPQ:Lcom/sonyericsson/music/player/PlayerState$Mode;

    iput-object v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mMode:Lcom/sonyericsson/music/player/PlayerState$Mode;

    .line 71
    iput-object v2, v0, Lcom/sonyericsson/music/player/PlayerState;->mRouteId:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 72
    iput-wide v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mDelayedPauseEndMillis:J

    const/4 v1, -0x1

    .line 73
    iput v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mAudioSession:I

    return-object v0
.end method

.method private static guessSkipDirection(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/common/Track;)Lcom/sonyericsson/music/player/PlayerState$SkipDirection;
    .locals 0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 142
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p0

    sub-int/2addr p1, p0

    const/4 p0, -0x1

    if-ne p1, p0, :cond_0

    .line 144
    sget-object p0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->BACKWARD:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 146
    sget-object p0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->FORWARD:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    goto :goto_0

    .line 148
    :cond_1
    sget-object p0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    goto :goto_0

    .line 151
    :cond_2
    sget-object p0, Lcom/sonyericsson/music/player/PlayerState$SkipDirection;->NONE:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    :goto_0
    return-object p0
.end method

.method public static trackFromPlayQueue(Landroid/database/Cursor;I)Lcom/sonyericsson/music/common/Track;
    .locals 10

    .line 163
    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "title"

    .line 166
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v1, "artist"

    .line 167
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "album"

    .line 168
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "duration"

    .line 169
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "album_id"

    .line 170
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "artist_id"

    .line 171
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "track_uri"

    .line 172
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 173
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 177
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 178
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 179
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v6, -0x1

    .line 181
    invoke-static {p0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 182
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 184
    :cond_0
    new-instance v9, Lcom/sonyericsson/music/common/Track$TrackBuilder;

    invoke-direct {v9, p0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v9, v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->title(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->album(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    .line 185
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->artist(Ljava/lang/String;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    int-to-long v0, v6

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->trackId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, v7, v8}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->albumId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    .line 186
    invoke-virtual {p0, v4, v5}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->artistId(J)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->playqueuePosition(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p0

    return-object p0

    .line 164
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method private static validPendingPosition(Landroid/database/Cursor;I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 159
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getAudioSession()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mAudioSession:I

    return v0
.end method

.method public getCurrentTrack()Lcom/sonyericsson/music/common/Track;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    return-object v0
.end method

.method public getCurrentTrackColor()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrackColor:I

    return v0
.end method

.method public getDelayedPauseEndMillis()J
    .locals 2

    .line 246
    iget-wide v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mDelayedPauseEndMillis:J

    return-wide v0
.end method

.method public getLoadingState()Lcom/sonyericsson/music/player/PlayerState$LoadingState;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mLoadingState:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    return-object v0
.end method

.method public getPlayQueueCursor()Landroid/database/Cursor;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mPlayQueueCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getPlaybackPosition()I
    .locals 1

    .line 226
    iget v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mPlaybackPosition:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 218
    iget v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mRepeatMode:I

    return v0
.end method

.method public getRouteId()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mRouteId:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteType()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mRouteType:I

    return v0
.end method

.method public getSkipDirection()Lcom/sonyericsson/music/player/PlayerState$SkipDirection;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mSkipDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    return-object v0
.end method

.method public isInPlayQueueMode()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mIsInPlayQueueMode:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mIsPlaying:Z

    return v0
.end method

.method public isShuffle()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/sonyericsson/music/player/PlayerState;->mShuffle:Z

    return v0
.end method

.method public snapshot()Lcom/sonyericsson/music/player/PlayerState;
    .locals 4

    .line 293
    new-instance v0, Lcom/sonyericsson/music/player/PlayerState;

    invoke-direct {v0}, Lcom/sonyericsson/music/player/PlayerState;-><init>()V

    .line 294
    iget-boolean v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mIsPlaying:Z

    iput-boolean v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mIsPlaying:Z

    .line 295
    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mLoadingState:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    iput-object v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mLoadingState:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    .line 296
    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v1

    .line 297
    invoke-virtual {v1, v3}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->playqueuePosition(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 298
    iget v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrackColor:I

    iput v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrackColor:I

    .line 299
    iget v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mRepeatMode:I

    iput v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mRepeatMode:I

    .line 300
    iget-boolean v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mShuffle:Z

    iput-boolean v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mShuffle:Z

    .line 301
    iget v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mPlaybackPosition:I

    iput v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlaybackPosition:I

    .line 302
    iget v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mRouteType:I

    iput v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mRouteType:I

    .line 303
    iput-boolean v3, v0, Lcom/sonyericsson/music/player/PlayerState;->mIsInPlayQueueMode:Z

    .line 304
    iput-object v2, v0, Lcom/sonyericsson/music/player/PlayerState;->mPlayQueueCursor:Landroid/database/Cursor;

    .line 305
    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mSkipDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    iput-object v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mSkipDirection:Lcom/sonyericsson/music/player/PlayerState$SkipDirection;

    .line 306
    sget-object v1, Lcom/sonyericsson/music/player/PlayerState$Mode;->NOPQ:Lcom/sonyericsson/music/player/PlayerState$Mode;

    iput-object v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mMode:Lcom/sonyericsson/music/player/PlayerState$Mode;

    .line 307
    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mRouteId:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mRouteId:Ljava/lang/String;

    .line 308
    iget-wide v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mDelayedPauseEndMillis:J

    iput-wide v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mDelayedPauseEndMillis:J

    .line 309
    iget v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mAudioSession:I

    iput v1, v0, Lcom/sonyericsson/music/player/PlayerState;->mAudioSession:I

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 262
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "{"

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    iget-boolean v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mIsPlaying:Z

    if-eqz v1, :cond_0

    const-string v1, " >>"

    goto :goto_0

    :cond_0
    const-string v1, " ||"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mLoadingState:Lcom/sonyericsson/music/player/PlayerState$LoadingState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " repeat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mRepeatMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " shuffle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mShuffle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mPlaybackPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " routeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mRouteType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mMode:Lcom/sonyericsson/music/player/PlayerState$Mode;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " routeId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mRouteId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    iget-boolean v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mIsInPlayQueueMode:Z

    if-eqz v1, :cond_3

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-nez v2, :cond_1

    const-string v2, "?"

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mPlayQueueCursor:Landroid/database/Cursor;

    if-nez v2, :cond_2

    const-string v2, "?"

    goto :goto_2

    .line 274
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 276
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_4

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_4
    const-string v1, " <none>"

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 281
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " delayedPauseEndMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mDelayedPauseEndMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " audio session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sonyericsson/music/player/PlayerState;->mAudioSession:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " }"

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
