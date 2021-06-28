.class public Lcom/sonyericsson/music/proxyservice/worker/Worker;
.super Landroid/os/Handler;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;,
        Lcom/sonyericsson/music/proxyservice/worker/Worker$PlayQueueObserver;,
        Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;
    }
.end annotation


# static fields
.field private static final ALL_TRACKS_LIMIT:I = 0x32

.field static final HANDLE_PLAYQUEUE_UPDATE_DELAY:I = 0xc8

.field static final PLAYBACK_POSITION_DEFAULT_RETURN_VALUE:J = 0x0L

.field private static final TASK_WORKER_RELEASE:I = 0x186a0

.field private static sIsTest:Z


# instance fields
.field private mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private mCurrentArt:Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;

.field mCurrentTrack:Lcom/sonyericsson/music/common/Track;

.field private mGaPlayType:Ljava/lang/String;

.field private mIsReleased:Z

.field private mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

.field mLastRemoteControlTrack:Lcom/sonyericsson/music/common/Track;

.field mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

.field private mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

.field mPlayQueueOperatedOn:Z

.field mPlayQueueUri:Landroid/net/Uri;

.field private mPlaybackEventHandler:Landroid/os/Handler;

.field private mPlaybackEventHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

.field private final mPlayqueueObserver:Lcom/sonyericsson/music/proxyservice/worker/Worker$PlayQueueObserver;

.field mPreviousTrack:Lcom/sonyericsson/music/common/Track;

.field mRegisteredPlayQueueObserver:Z

.field private volatile mRepeatMode:I

.field private final mWindingTracker:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)V
    .locals 3

    .line 170
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x1

    .line 145
    iput v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueOperatedOn:Z

    .line 1502
    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;-><init>(Lcom/sonyericsson/music/proxyservice/worker/Worker;)V

    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 172
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 174
    new-instance v1, Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 176
    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    .line 177
    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$PlayQueueObserver;

    invoke-direct {v1, p0, p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker$PlayQueueObserver;-><init>(Lcom/sonyericsson/music/proxyservice/worker/Worker;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayqueueObserver:Lcom/sonyericsson/music/proxyservice/worker/Worker$PlayQueueObserver;

    .line 179
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandlerFactory;->getMainThreadHandler(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    move-result-object p3

    iput-object p3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    .line 181
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->setupPlaybackEventHandlers()V

    .line 183
    new-instance p3, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    invoke-direct {p3, p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;-><init>(Lcom/sonyericsson/music/proxyservice/worker/Worker;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mWindingTracker:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    .line 184
    new-instance p1, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    iget-object p3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    const/4 p1, 0x0

    .line 186
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    .line 188
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->registerReceiver()V

    .line 190
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mIsReleased:Z

    .line 192
    new-instance p1, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;

    invoke-direct {p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentArt:Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/music/proxyservice/worker/Worker;)Z
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isShuttingDown()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/sonyericsson/music/proxyservice/worker/Worker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->releasePlayer()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/music/proxyservice/worker/Worker;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateDuration(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/music/proxyservice/worker/Worker;)Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    return-object p0
.end method

.method private allowSetRenderer(Lcom/sonyericsson/music/playerservice/PlayerService;Lcom/sonyericsson/music/playerservice/PlayerService;)Z
    .locals 0

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

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

.method private getGaPlayType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 876
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    .line 877
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "dlna"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 880
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_1

    const-string v0, "drive"

    goto :goto_0

    .line 883
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 884
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "other"

    :cond_3
    :goto_0
    return-object v0
.end method

.method private isShuttingDown()Z
    .locals 1

    const v0, 0x186a0

    .line 694
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private next()V
    .locals 13

    .line 1199
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1200
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    goto/16 :goto_1

    .line 1202
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    .line 1204
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v8

    .line 1208
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-static {v0, v2}, Lcom/sonyericsson/music/common/Track;->isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    const/16 v10, 0xb

    const/4 v2, 0x4

    const/4 v11, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1209
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1211
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v4}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackCountInPlayqueue()I

    move-result v4

    if-lt v0, v4, :cond_2

    if-lez v4, :cond_1

    .line 1213
    rem-int/2addr v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1216
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackInQueue(I)Lcom/sonyericsson/music/common/Track;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1219
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    invoke-virtual {v0, v2, v3, v8, v4}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1222
    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1223
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateRemoteControlMetadata(Landroid/graphics/Bitmap;)V

    .line 1225
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 1226
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1228
    invoke-static {v2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    .line 1230
    invoke-virtual {p0, v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v9

    const/4 v12, 0x0

    move-object v2, v1

    move-object v3, v5

    move v5, v7

    move v7, v9

    move-object v9, v12

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;ILandroid/net/Uri;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 1226
    invoke-virtual {v0, v10, v11, v11, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1232
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateStatusBarForRemoteContent()V

    goto :goto_1

    .line 1235
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0, v2, v3, v8, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1238
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 1239
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1241
    invoke-static {v2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v7, -0x1

    .line 1243
    invoke-virtual {p0, v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v9

    const/4 v12, 0x0

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    move v7, v9

    move-object v9, v12

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;ILandroid/net/Uri;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 1239
    invoke-virtual {v0, v10, v11, v11, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1247
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->next()V

    return-void
.end method

.method private notifyPlayerPlayqueueUpdated(I)V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/playerservice/PlayerService;->playQueueUpdated(I)V

    return-void
.end method

.method private open(Landroid/net/Uri;IIZZZI)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v10, p6

    .line 910
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    if-eqz p5, :cond_0

    .line 913
    iget-object v3, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p4

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createPlayQueue(Landroid/net/Uri;Landroid/content/ContentResolver;IZI)Landroid/util/Pair;

    move-result-object v2

    .line 915
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 916
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 917
    iget-object v4, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    move-object v11, v4

    goto :goto_0

    .line 920
    :cond_0
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackCountInPlayqueue()I

    move-result v3

    move-object/from16 v11, p1

    move/from16 v2, p2

    :goto_0
    if-eqz v11, :cond_8

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    if-eqz v10, :cond_2

    .line 931
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getGaPlayType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 932
    invoke-direct {v0, v4}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->sendGaPlay(Ljava/lang/String;)V

    goto :goto_1

    .line 934
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getGaPlayType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mGaPlayType:Ljava/lang/String;

    .line 937
    :goto_1
    iput-object v11, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    const/4 v4, 0x0

    if-eqz p4, :cond_3

    const/4 v2, 0x0

    :cond_3
    if-gez v2, :cond_4

    add-int/lit8 v2, v3, -0x1

    move v12, v2

    goto :goto_2

    :cond_4
    if-lt v2, v3, :cond_5

    const/4 v12, 0x0

    goto :goto_2

    :cond_5
    move v12, v2

    .line 950
    :goto_2
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 951
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->clearTracks()V

    .line 952
    iget-object v3, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v3, v12}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackInQueue(I)Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    iput-object v3, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 954
    iget-object v3, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v3, :cond_7

    .line 956
    iget-object v5, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6, v1, v10, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    if-eqz v2, :cond_6

    .line 959
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v2

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    move-object v6, v2

    .line 961
    iget-object v13, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v14, 0xb

    new-instance v15, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 962
    invoke-static {v2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v7, 0x0

    .line 963
    invoke-virtual {v0, v4}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v8

    const/4 v9, 0x0

    move-object v2, v15

    move-object v4, v5

    move v5, v7

    move v7, v8

    move/from16 v8, p6

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;ILandroid/net/Uri;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    const/4 v2, -0x1

    .line 961
    invoke-virtual {v13, v14, v2, v2, v15}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 966
    iget-object v3, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v4, 0xc

    new-instance v5, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;

    iget-object v6, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    .line 967
    invoke-virtual {v6}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->isShuffled()Z

    move-result v6

    invoke-direct {v5, v6}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;-><init>(Z)V

    .line 966
    invoke-virtual {v3, v4, v2, v2, v5}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 972
    :cond_7
    invoke-direct {v0, v11, v12, v1, v10}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->openPlayer(Landroid/net/Uri;IIZ)V

    .line 974
    iget-object v1, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mWindingTracker:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->stop()V

    return-void

    :cond_8
    :goto_4
    const-string v1, "SemcMusicPlayer"

    .line 925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Worker open. Could not create play queue. tracks: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private openLastPlayed(Ljava/lang/String;Z)V
    .locals 9

    .line 1384
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    if-eqz p2, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1393
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->getLastPlayed()Landroid/net/Uri;

    .line 1395
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->getTrackPos()I

    move-result v0

    .line 1399
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v8, -0x1

    invoke-virtual {v1, v2, v0, v8, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1401
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->getPlayQueuePos()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 1402
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x32

    move-object v0, p0

    .line 1403
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->openSmartPlaylist(IIZZI)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 1408
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->getPlayQueuePos()I

    move-result v2

    .line 1409
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->getTrackPos()I

    move-result v3

    .line 1411
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->open(Landroid/net/Uri;IIZZZI)V

    .line 1413
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->getShuffled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->setShuffle(Z)V

    .line 1416
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->getRepeatMode()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    .line 1417
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/playerservice/PlayerService;->setRepeatMode(I)V

    .line 1419
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    invoke-direct {v1, v2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;-><init>(I)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v8, v8, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1421
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    .line 1422
    invoke-virtual {v3}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->isShuffled()Z

    move-result v3

    invoke-direct {v1, v3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;-><init>(Z)V

    .line 1421
    invoke-virtual {v0, v2, v8, v8, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    return-void
.end method

.method private openPlayer(Landroid/net/Uri;IIZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 2232
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->requestAudioFocus()V

    .line 2235
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/sonyericsson/music/playerservice/PlayerService;->open(Landroid/net/Uri;IIZ)V

    return-void
.end method

.method private openSmartPlaylist(IIZZI)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p4

    .line 985
    iget-object v3, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 986
    iget-object v3, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mWindingTracker:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    invoke-virtual {v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->stop()V

    const/4 v3, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const-string v3, "com.sonyericsson.music.playqueue"

    .line 1043
    iget-object v4, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v4}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackCountInPlayqueue()I

    move-result v4

    .line 1044
    iget-object v5, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    move v7, v4

    move-object v9, v12

    const/4 v8, 0x0

    move-object v4, v3

    move-object v3, v9

    goto/16 :goto_4

    :pswitch_1
    const-string v4, "most_played"

    .line 1001
    sget-object v5, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->MOST_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {v6, v12, v10, v5}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v5

    .line 1004
    invoke-static {v6, v5}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistTracksCursor(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v5, :cond_0

    .line 1006
    invoke-virtual {v5}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getContainerUri()Landroid/net/Uri;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v12

    :goto_0
    move-object v9, v5

    move-object v3, v7

    move-object v5, v12

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_4

    :pswitch_2
    const-string v3, "newly_added"

    .line 1023
    invoke-static {v12, v10}, Lcom/sonyericsson/music/common/DBUtils;->getNewlyAddedDescProperty([Ljava/lang/String;I)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v4

    .line 1025
    invoke-static {v6, v4}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistTracksCursor(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v4, :cond_1

    .line 1027
    invoke-virtual {v4}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getContainerUri()Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v12

    :goto_1
    move-object v9, v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v3

    move-object v3, v5

    move-object v5, v12

    goto :goto_4

    :pswitch_3
    const-string v4, "recently_played"

    .line 1012
    sget-object v5, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;->RECENTLY_PLAYED:Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;

    invoke-static {v6, v12, v10, v5}, Lcom/sonyericsson/music/common/DBUtils;->getPlayedPlaylistDescProperty(Landroid/content/ContentResolver;[Ljava/lang/String;ILcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistType;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v5

    .line 1015
    invoke-static {v6, v5}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistTracksCursor(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v5, :cond_2

    .line 1017
    invoke-virtual {v5}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getContainerUri()Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v12

    :goto_2
    move-object v9, v5

    move-object v3, v7

    move-object v5, v12

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_4

    :pswitch_4
    const-string v4, "favorites"

    .line 1033
    invoke-static {v6}, Lcom/sonyericsson/music/common/DBUtils;->getFavouritesProperties(Landroid/content/ContentResolver;)Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;

    move-result-object v5

    .line 1035
    invoke-static {v6, v5}, Lcom/sonyericsson/music/common/DBUtils;->getSmartPlaylistTracksCursor(Landroid/content/ContentResolver;Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v5, :cond_3

    .line 1037
    invoke-virtual {v5}, Lcom/sonyericsson/music/common/SmartPlaylistUtils$SmartPlaylistProperties;->getContainerUri()Landroid/net/Uri;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, v12

    :goto_3
    move-object v9, v5

    move-object v3, v7

    move-object v5, v12

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto :goto_4

    :pswitch_5
    const-string v4, "all_tracks"

    .line 992
    invoke-static {v3}, Lcom/sonyericsson/music/common/DBUtils;->getAllTracksProjection(Z)[Ljava/lang/String;

    move-result-object v3

    const-string v5, "title COLLATE NOCASE"

    move/from16 v7, p5

    invoke-static {v6, v3, v7, v5}, Lcom/sonyericsson/music/common/DBUtils;->getAllTracksCursor(Landroid/content/ContentResolver;[Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v5, v12

    move-object v9, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4
    if-nez v9, :cond_4

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    return-void

    :cond_4
    if-eqz v2, :cond_5

    .line 1057
    invoke-direct {v1, v4}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->sendGaPlay(Ljava/lang/String;)V

    goto :goto_5

    .line 1059
    :cond_5
    iput-object v4, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mGaPlayType:Ljava/lang/String;

    :goto_5
    if-eqz v3, :cond_6

    .line 1064
    :try_start_0
    iget-object v4, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    move-object v5, v3

    move/from16 v7, p3

    invoke-virtual/range {v4 .. v9}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->createPlayQueueSmartPlaylist(Landroid/database/Cursor;Landroid/content/ContentResolver;ZZLandroid/net/Uri;)I

    move-result v7

    .line 1066
    iget-object v4, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->getPlayqueueContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1069
    throw v0

    :cond_6
    :goto_6
    if-eqz v5, :cond_b

    if-nez v7, :cond_7

    goto :goto_8

    .line 1079
    :cond_7
    iput-object v5, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    if-eqz p3, :cond_8

    const/4 v0, 0x0

    goto :goto_7

    :cond_8
    move/from16 v0, p2

    .line 1085
    :goto_7
    iget-object v3, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v12

    :cond_9
    move-object/from16 v17, v12

    .line 1086
    invoke-virtual {v1, v11}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v18

    .line 1087
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->clearTracks()V

    .line 1088
    iget-object v3, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackInQueue(I)Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    iput-object v3, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1090
    iget-object v3, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v3, :cond_a

    .line 1093
    iget-object v4, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v6, 0x4

    invoke-virtual {v4, v6, v11, v11, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1096
    iget-object v3, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v4, 0xb

    new-instance v6, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v7, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1097
    invoke-static {v7}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v6

    invoke-direct/range {v13 .. v20}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;ILandroid/net/Uri;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 1096
    invoke-virtual {v3, v4, v10, v10, v6}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1101
    iget-object v3, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v4, 0xc

    new-instance v6, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;

    iget-object v7, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    .line 1102
    invoke-virtual {v7}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->isShuffled()Z

    move-result v7

    invoke-direct {v6, v7}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;-><init>(Z)V

    .line 1101
    invoke-virtual {v3, v4, v10, v10, v6}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1107
    :cond_a
    invoke-direct {v1, v5, v0, v11, v2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->openPlayer(Landroid/net/Uri;IIZ)V

    return-void

    :cond_b
    :goto_8
    const-string v2, "SemcMusicPlayer"

    .line 1073
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Worker openSmartPlaylist type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Could not create play queue. tracks: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " URI: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openWithNoPlayQueue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    .line 841
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getGaPlayType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 842
    invoke-direct {v0, v5}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->sendGaPlay(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 846
    invoke-virtual {v0, v5}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v6

    invoke-direct {v0, v6}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->saveLastPlayed(I)V

    .line 848
    iget-object v6, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v6

    move-object v12, v6

    goto :goto_0

    :cond_0
    move-object v12, v7

    .line 849
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->clearTracks()V

    .line 850
    iput-object v7, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    .line 856
    :cond_1
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/sonyericsson/music/common/TrackFactory;->createNonPlayqueueTrack(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    goto :goto_2

    .line 853
    :cond_2
    :goto_1
    iget-object v6, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v6, v1, v2, v3, v4}, Lcom/sonyericsson/music/common/TrackFactory;->createNonPlayqueueTrackWithMetadata(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/music/common/Track;

    move-result-object v2

    iput-object v2, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 862
    :goto_2
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v3, 0x4

    iget-object v4, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2, v3, v5, v5, v4}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 865
    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v3, 0xb

    new-instance v4, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v6, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 867
    invoke-static {v6}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v11, 0x0

    .line 868
    invoke-virtual {v0, v5}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v8, v4

    invoke-direct/range {v8 .. v15}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;ILandroid/net/Uri;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    const/4 v6, -0x1

    .line 866
    invoke-virtual {v2, v3, v6, v6, v4}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    const/4 v2, 0x1

    move/from16 v3, p5

    .line 869
    invoke-direct {v0, v1, v5, v3, v2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->openPlayer(Landroid/net/Uri;IIZ)V

    .line 871
    iget-object v1, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mWindingTracker:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->stop()V

    return-void
.end method

.method private pause(Z)V
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz v0, :cond_1

    .line 1116
    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isLocalPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1117
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    check-cast p1, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    .line 1118
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->pauseWithFade()V

    goto :goto_0

    .line 1120
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {p1}, Lcom/sonyericsson/music/playerservice/PlayerService;->pause()V

    :cond_1
    :goto_0
    return-void
.end method

.method private play()V
    .locals 1

    .line 1128
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mGaPlayType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1129
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->sendGaPlay(Ljava/lang/String;)V

    .line 1132
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->requestAudioFocus()V

    .line 1134
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->play()V

    return-void
.end method

.method private prev()V
    .locals 13

    .line 1147
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1148
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    goto/16 :goto_1

    .line 1150
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    .line 1152
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v8

    .line 1156
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-static {v0, v2}, Lcom/sonyericsson/music/common/Track;->isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    const/16 v10, 0xb

    const/4 v2, 0x4

    const/4 v11, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 1157
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_2

    .line 1160
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v4}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackCountInPlayqueue()I

    move-result v4

    if-lez v4, :cond_1

    .line 1161
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v0, v4, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    rem-int/2addr v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1164
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackInQueue(I)Lcom/sonyericsson/music/common/Track;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1167
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    invoke-virtual {v0, v2, v3, v8, v4}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1170
    iput-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1171
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateRemoteControlMetadata(Landroid/graphics/Bitmap;)V

    .line 1173
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 1174
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1176
    invoke-static {v2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v7, -0x1

    .line 1178
    invoke-virtual {p0, v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v9

    const/4 v12, 0x0

    move-object v2, v1

    move-object v3, v5

    move v5, v7

    move v7, v9

    move-object v9, v12

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;ILandroid/net/Uri;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 1174
    invoke-virtual {v0, v10, v11, v11, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1180
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateStatusBarForRemoteContent()V

    goto :goto_1

    .line 1183
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0, v2, v3, v8, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1186
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 1187
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1189
    invoke-static {v2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v7, -0x1

    .line 1191
    invoke-virtual {p0, v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v9

    const/4 v12, 0x0

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    move v5, v7

    move v7, v9

    move-object v9, v12

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;ILandroid/net/Uri;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 1187
    invoke-virtual {v0, v10, v11, v11, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1195
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->previous()V

    return-void
.end method

.method private registerReceiver()V
    .locals 4

    .line 1492
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    .line 1493
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYBACK_INFO"

    .line 1494
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacksinternal.ACTION_AUDIO_SESSION_UPDATE"

    .line 1495
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1498
    invoke-static {}, Lcom/sonyericsson/music/common/LocalBroadcastManagerFactory;->getLocalBroadcastManager()Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;

    move-result-object v1

    .line 1499
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method private releasePlayer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1138
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v1, 0x0

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1140
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz v0, :cond_0

    .line 1141
    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->release()V

    .line 1143
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .line 1487
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v1, 0x0

    const/16 v2, 0xe

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1488
    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastRemoteControlTrack:Lcom/sonyericsson/music/common/Track;

    return-void
.end method

.method private saveLastPlayed(I)V
    .locals 8

    .line 1456
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/Track;->isTrackPlayQueueSupported(Landroid/content/Context;Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1457
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->trackIsLastPlayedTrack(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueOperatedOn:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    .line 1458
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->getRepeatMode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    .line 1459
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->isShuffled()Z

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->getShuffled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 1463
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v3

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v4

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    .line 1464
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->isShuffled()Z

    move-result v6

    iget v7, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    move v5, p1

    .line 1463
    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->save(ILandroid/net/Uri;IZI)V

    :cond_1
    return-void
.end method

.method private sendGaPlay(Ljava/lang/String;)V
    .locals 5

    .line 893
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    const-string v1, "service_play"

    const-string v2, "content_type"

    invoke-static {v0, v1, v2, p1}, Lcom/sonyericsson/music/datacollection/firebase/FirebaseAnalyticsProxy;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 898
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    const-string v1, "play"

    const-string v2, "service_play"

    const-wide/16 v3, 0x0

    .line 900
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 898
    invoke-static {v0, v1, v2, p1, v3}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p1, 0x0

    .line 902
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mGaPlayType:Ljava/lang/String;

    return-void
.end method

.method private setPlaybackPosition(I)V
    .locals 13

    .line 1306
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1307
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueOperatedOn:Z

    const/4 v1, 0x0

    .line 1313
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v5

    .line 1314
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/playerservice/PlayerService;->setPlaybackPosition(I)V

    .line 1316
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v3, 0xf

    .line 1317
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v4

    const/4 v6, 0x0

    const/4 v9, -0x1

    .line 1316
    invoke-virtual {v2, v3, v4, v9, v6}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1319
    iget-object v10, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v11, 0xb

    new-instance v12, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$SeekUpdate;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1322
    invoke-static {v2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSeekedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1323
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v6

    const/4 v7, 0x0

    if-ge v5, p1, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    move-object v2, v12

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$SeekUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;Z)V

    .line 1320
    invoke-virtual {v10, v11, v9, v9, v12}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private setPlayerService(Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;)V
    .locals 13

    .line 725
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;->getStartPlaying()Z

    move-result v8

    .line 726
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;->getPlayer()Lcom/sonyericsson/music/playerservice/PlayerService;

    move-result-object v0

    .line 727
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;->getPlaybackPos()I

    move-result p1

    .line 732
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->allowSetRenderer(Lcom/sonyericsson/music/playerservice/PlayerService;Lcom/sonyericsson/music/playerservice/PlayerService;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 736
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 737
    invoke-interface {v1}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlaybackPosition()I

    move-result v1

    .line 738
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v3}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayQueuePosition()I

    move-result v3

    move v9, v3

    goto :goto_0

    .line 739
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_2

    .line 740
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    move v9, v1

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ltz v1, :cond_3

    move p1, v1

    goto :goto_1

    :cond_3
    if-ltz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_5

    .line 754
    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->init()V

    .line 757
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->switchPlayerServices(Lcom/sonyericsson/music/playerservice/PlayerService;Lcom/sonyericsson/music/playerservice/PlayerService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 759
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz v1, :cond_7

    .line 764
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 766
    iget-object v10, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v11, 0xb

    new-instance v12, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 768
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v7, 0x0

    move-object v0, v12

    move v3, p1

    move v5, p1

    move v6, v8

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;ILandroid/net/Uri;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    const/4 v0, -0x1

    .line 766
    invoke-virtual {v10, v11, v0, v0, v12}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 772
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v9, p1, v8}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->openPlayer(Landroid/net/Uri;IIZ)V

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_7

    .line 775
    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->release()V

    :cond_7
    :goto_2
    return-void
.end method

.method private setQueuePosition(IZ)V
    .locals 11

    .line 1426
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mGaPlayType:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 1427
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->sendGaPlay(Ljava/lang/String;)V

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackInQueue(I)Lcom/sonyericsson/music/common/Track;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1433
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    .line 1435
    iput-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v0, 0x0

    .line 1436
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateRemoteControlMetadata(Landroid/graphics/Bitmap;)V

    .line 1438
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v2, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, p2, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1440
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    :cond_1
    move-object v5, v0

    .line 1441
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v9, 0xb

    new-instance v10, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1442
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackToBePreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, -0x1

    .line 1443
    invoke-virtual {p0, v4}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v7

    const/4 v8, 0x0

    move-object v1, v10

    move v4, v6

    move v6, v7

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;ILandroid/net/Uri;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    const/4 v1, -0x1

    .line 1441
    invoke-virtual {v0, v9, v1, v1, v10}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    if-eqz p2, :cond_2

    .line 1447
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->requestAudioFocus()V

    .line 1450
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/music/playerservice/PlayerService;->setPlayQueuePosition(IZ)V

    :cond_3
    return-void
.end method

.method private setupPlaybackEventHandlers()V
    .locals 3

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandlers:Ljava/util/List;

    .line 198
    sget-boolean v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->sIsTest:Z

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PlaybackEventThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 201
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 204
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    new-instance v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/PlayTimeLogger;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 207
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    new-instance v0, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/DataPlatformHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 210
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandlers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;

    .line 213
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->start()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startWinding(Z)V
    .locals 11

    .line 1329
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mWindingTracker:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->isWinding()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1333
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mWindingTracker:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->start(Z)V

    const/4 v0, 0x0

    .line 1335
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v0

    .line 1336
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v1, p1}, Lcom/sonyericsson/music/playerservice/PlayerService;->startWinding(Z)V

    .line 1338
    iget-object v8, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v9, 0xb

    new-instance v10, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$SeekUpdate;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1339
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSeekedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1340
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v5

    const/4 v6, 0x0

    move-object v1, v10

    move v4, v0

    move v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$SeekUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;Z)V

    const/4 v1, -0x1

    .line 1338
    invoke-virtual {v8, v9, v1, v1, v10}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    const/4 v1, 0x0

    const/16 v2, 0x10

    if-eqz p1, :cond_1

    .line 1343
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1346
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private stopPlaybackEventHandlers()V
    .locals 2

    .line 220
    sget-boolean v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->sIsTest:Z

    if-nez v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;

    .line 222
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/HandlerBasedBroadcastReceiver;->stop()V

    goto :goto_0

    .line 225
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_1

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlaybackEventHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_2
    :goto_1
    return-void
.end method

.method private stopWinding()V
    .locals 10

    .line 1352
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mWindingTracker:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->isWinding()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1356
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mWindingTracker:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->stop()V

    .line 1357
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->stopWinding()V

    const/4 v0, 0x1

    .line 1361
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v4

    .line 1363
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getState()I

    move-result v0

    const/4 v1, 0x6

    const/16 v7, 0xb

    const/4 v2, 0x0

    const/16 v3, 0x10

    const/4 v8, -0x1

    if-ne v0, v1, :cond_1

    .line 1364
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1368
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v9, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1369
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 1368
    invoke-virtual {v0, v7, v8, v8, v9}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1372
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1376
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v9, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1377
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 1376
    invoke-virtual {v0, v7, v8, v8, v9}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private switchPlayerServices(Lcom/sonyericsson/music/playerservice/PlayerService;Lcom/sonyericsson/music/playerservice/PlayerService;)Z
    .locals 7

    .line 791
    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 798
    :try_start_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->pause(Z)V

    .line 799
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->releasePlayer()V

    :cond_0
    const/4 p2, 0x0

    .line 802
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    .line 805
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isSwitchToLocalPlayer(Lcom/sonyericsson/music/playerservice/PlayerService;)Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    .line 807
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isSwitchToDlnaCastPlayer(Lcom/sonyericsson/music/playerservice/PlayerService;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    .line 809
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isSwitchToGoogleCastPlayer(Lcom/sonyericsson/music/playerservice/PlayerService;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x2

    goto :goto_1

    :cond_3
    const-string v2, "SemcMusicPlayer"

    .line 812
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Worker switchPlayerServices: Unknown PlayerService type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    .line 814
    invoke-interface {p1}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayerId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_4
    const-string v5, "null"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 812
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, -0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 820
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    .line 822
    iget v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    invoke-interface {p1, v4}, Lcom/sonyericsson/music/playerservice/PlayerService;->setRepeatMode(I)V

    .line 823
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v4, 0xc

    new-instance v5, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;

    iget v6, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    invoke-direct {v5, v6}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;-><init>(I)V

    invoke-virtual {p1, v4, v3, v3, v5}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 827
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    invoke-virtual {p1, v1, v2, v3, p2}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "SemcMusicPlayer"

    .line 831
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Worker switchPlayerServices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_5
    :goto_2
    monitor-exit p0

    return v0

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private unregisterContentObserver()V
    .locals 2

    .line 2120
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRegisteredPlayQueueObserver:Z

    if-eqz v0, :cond_0

    .line 2121
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2122
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayqueueObserver:Lcom/sonyericsson/music/proxyservice/worker/Worker$PlayQueueObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 2123
    iput-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRegisteredPlayQueueObserver:Z

    :cond_0
    return-void
.end method

.method private updateCurrentTrack()V
    .locals 5

    .line 698
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->findCurrentTrackPosition(Lcom/sonyericsson/music/common/Track;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 702
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 703
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->playqueuePosition(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 704
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 705
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v2

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v4}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 704
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private updateCurrentTrackMetadata()V
    .locals 6

    .line 642
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    .line 645
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 647
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sonyericsson/music/common/TrackFactory;->createTrackFromPlayqueue(Landroid/content/Context;I)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 651
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->dataUri(Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 653
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentArt:Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->clear()V

    .line 654
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getAlbumArtFromCurrentTrack()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 655
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateRemoteControlMetadata(Landroid/graphics/Bitmap;)V

    .line 657
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v2, 0x7

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4, v4, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 659
    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 660
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v5

    invoke-direct {v1, v2, v3, v0, v5}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v2, 0xd

    .line 662
    invoke-virtual {v0, v2, v4, v4, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateDuration(Z)V
    .locals 4

    .line 1275
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_1

    .line 1276
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    .line 1278
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->duration(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    goto :goto_0

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v0

    :goto_0
    if-eqz p1, :cond_1

    .line 1285
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v1, 0x6

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1286
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1285
    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private updateStatusBarForRemoteContent()V
    .locals 5

    .line 1251
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    .line 1258
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 1259
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1265
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 1266
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1268
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v2, 0xd

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateTrackColor(Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 2184
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/PaletteUtils;->getBackgroundColor(Landroid/graphics/Bitmap;Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2188
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v1, 0x12

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method clearTracks()V
    .locals 1

    const/4 v0, 0x0

    .line 2192
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 2193
    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    return-void
.end method

.method getAlbumArtFromCurrentTrack()Landroid/graphics/Bitmap;
    .locals 7

    .line 2198
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_4

    .line 2199
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    .line 2200
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentArt:Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->get(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_5

    .line 2202
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070141

    .line 2203
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2205
    invoke-static {v0}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2206
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 2207
    invoke-virtual {v4}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 2206
    invoke-static {v1, v3, v4, v2, v5}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getDecodeAlbumArt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2209
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2210
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/sonyericsson/music/common/GawUtils;->generateArtwork(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 2212
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-static {v3}, Lcom/sonyericsson/music/common/Track;->isCloudFile(Lcom/sonyericsson/music/common/Track;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2213
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 2214
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 2215
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$CloudFiles;->getAlbumArtUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 2216
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x0

    invoke-static {v4, v3, v2, v5, v6}, Lcom/sonyericsson/music/common/AlbumArtUtils;->getDecodeArt(Landroid/content/Context;Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 2220
    invoke-static {v1, v2}, Lcom/sonyericsson/music/common/GawUtils;->generateArtwork(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v3

    .line 2224
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentArt:Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$CurrentArt;->set(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 2092
    monitor-enter p0

    .line 2093
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isLocalPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2094
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    check-cast v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->getAudioSessionId()I

    move-result v0

    monitor-exit p0

    return v0

    .line 2096
    :cond_0
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getPlaybackPosition(Z)I
    .locals 4

    .line 1294
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz v0, :cond_0

    .line 1295
    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlaybackPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 1299
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_1
    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 2102
    monitor-enter p0

    .line 2103
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz v0, :cond_0

    .line 2104
    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    monitor-exit p0

    return v0

    .line 2106
    :cond_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 292
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/Task;

    .line 294
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x186a0

    if-ne v1, v4, :cond_1

    .line 295
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mWindingTracker:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->stop()V

    .line 297
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    invoke-virtual {p1}, Lcom/sonyericsson/music/artdecoder/ArtDecoder;->destroy()V

    .line 298
    iput-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mArtDecoder:Lcom/sonyericsson/music/artdecoder/ArtDecoder;

    .line 300
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->unregisterContentObserver()V

    .line 302
    iput-boolean v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mIsReleased:Z

    .line 304
    monitor-enter p0

    .line 305
    :try_start_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 307
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->releasePlayer()V

    .line 308
    iput-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    .line 309
    iput-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastPlayedInfo:Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "SemcMusicPlayer"

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Worker release: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 319
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    .line 321
    iput-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 322
    iput-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    .line 323
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 326
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-nez v4, :cond_3

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    .line 328
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    invoke-virtual {p1, v3, v6, v5, v2}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    return-void

    :cond_2
    if-eqz v1, :cond_3

    return-void

    .line 336
    :cond_3
    iget-boolean v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mIsReleased:Z

    if-eqz v1, :cond_4

    return-void

    .line 340
    :cond_4
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xc

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_7

    .line 628
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateCurrentTrackMetadata()V

    goto/16 :goto_7

    .line 404
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->unregisterContentObserver()V

    .line 405
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_5

    .line 406
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->reshuffle(I)I

    move-result p1

    if-lez p1, :cond_5

    .line 408
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateCurrentTrack()V

    .line 409
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->notifyPlayerPlayqueueUpdated(I)V

    .line 410
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result p1

    invoke-direct {p0, v6, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->setQueuePosition(IZ)V

    .line 412
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;

    invoke-direct {v0, v3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;-><init>(Z)V

    invoke-virtual {p1, v2, v5, v5, v0}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 415
    invoke-virtual {p0, v6}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->saveLastPlayed(I)V

    .line 418
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->registerContentObserver(Landroid/net/Uri;)V

    goto/16 :goto_7

    .line 621
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 622
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz v0, :cond_17

    .line 623
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/playerservice/PlayerService;->onAudioFocusChange(I)V

    goto/16 :goto_7

    .line 600
    :pswitch_4
    monitor-enter p0

    .line 602
    :try_start_3
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz p1, :cond_6

    .line 603
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {p1}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayerId()Ljava/lang/String;

    move-result-object p1

    .line 604
    invoke-virtual {p0, v6}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v0

    .line 605
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v1

    .line 607
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->releasePlayer()V

    .line 609
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mWindingTracker:Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/worker/Worker$WindingTracker;->stop()V

    .line 610
    invoke-virtual {p0, p1, v0, v1, v6}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->notifyPlayerReleased(Ljava/lang/String;IZZ)V

    .line 612
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->clearTracks()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    :try_start_4
    const-string p1, "SemcMusicPlayer"

    const-string v0, "Could not release player."

    .line 615
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_6
    :goto_1
    monitor-exit p0

    goto/16 :goto_7

    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 575
    :pswitch_5
    iget-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRegisteredPlayQueueObserver:Z

    if-eqz p1, :cond_17

    .line 576
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_17

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->findCurrentTrackPosition(Lcom/sonyericsson/music/common/Track;)I

    move-result p1

    if-ne p1, v5, :cond_7

    .line 580
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {p1, v6}, Lcom/sonyericsson/music/playerservice/PlayerService;->playQueueUpdated(I)V

    .line 581
    invoke-direct {p0, v6, v6}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->setQueuePosition(IZ)V

    goto/16 :goto_7

    .line 584
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0, p1}, Lcom/sonyericsson/music/playerservice/PlayerService;->playQueueUpdated(I)V

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    if-eq p1, v0, :cond_8

    .line 587
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->playqueuePosition(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 589
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 590
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 591
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 589
    invoke-virtual {p1, v0, v1, v5, v2}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 593
    :cond_8
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateCurrentTrackMetadata()V

    goto/16 :goto_7

    .line 565
    :pswitch_6
    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    .line 566
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    iget v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->setRepeatMode(I)V

    .line 568
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;

    iget v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRepeatMode:I

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$RepeatModeChanged;-><init>(I)V

    invoke-virtual {p1, v2, v5, v5, v0}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 571
    invoke-virtual {p0, v6}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->saveLastPlayed(I)V

    goto/16 :goto_7

    .line 545
    :pswitch_7
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->unregisterContentObserver()V

    .line 546
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_a

    .line 547
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/ShuffleTask;->getShuffle()Z

    move-result p1

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 549
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->shuffle(ZI)I

    move-result v0

    if-lez v0, :cond_9

    .line 551
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateCurrentTrack()V

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->notifyPlayerPlayqueueUpdated(I)V

    .line 555
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;

    invoke-direct {v1, p1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$ShuffleChanged;-><init>(Z)V

    invoke-virtual {v0, v2, v5, v5, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 558
    invoke-virtual {p0, v6}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->saveLastPlayed(I)V

    .line 561
    :cond_a
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->registerContentObserver(Landroid/net/Uri;)V

    goto/16 :goto_7

    .line 487
    :pswitch_8
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->unregisterContentObserver()V

    .line 488
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_b

    .line 489
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;

    .line 490
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;->getFrom()I

    move-result v1

    .line 491
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/MoveTrackInPlayqueue;->getTo()I

    move-result v0

    .line 490
    invoke-virtual {p1, v1, v0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->moveTrack(II)I

    move-result p1

    if-lez p1, :cond_b

    .line 493
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateCurrentTrack()V

    .line 494
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->notifyPlayerPlayqueueUpdated(I)V

    .line 498
    :cond_b
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->registerContentObserver(Landroid/net/Uri;)V

    goto/16 :goto_7

    .line 472
    :pswitch_9
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->unregisterContentObserver()V

    .line 474
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_c

    .line 475
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/RemoveTrackFromPlayqueue;

    .line 476
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/RemoveTrackFromPlayqueue;->getPosition()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->dequeueTrack(I)I

    move-result p1

    if-lez p1, :cond_c

    .line 478
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateCurrentTrack()V

    .line 479
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->notifyPlayerPlayqueueUpdated(I)V

    .line 483
    :cond_c
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->registerContentObserver(Landroid/net/Uri;)V

    goto/16 :goto_7

    .line 539
    :pswitch_a
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;

    .line 540
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;->getPosition()I

    move-result p1

    .line 541
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/SetQueuePositionTask;->getStartPlaying()Z

    move-result v0

    .line 540
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->setQueuePosition(IZ)V

    goto/16 :goto_7

    .line 504
    :pswitch_b
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->unregisterContentObserver()V

    .line 505
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;

    .line 507
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_f

    .line 510
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 511
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;->enqueueLast()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    .line 512
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackCountInPlayqueue()I

    move-result v1

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 513
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    add-int/2addr v1, v3

    .line 515
    :goto_3
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;->isSingleTrack()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 516
    move-object v3, v0

    check-cast v3, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;

    .line 517
    invoke-virtual {v3}, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;->getSourceUri()Landroid/net/Uri;

    move-result-object v4

    .line 518
    invoke-virtual {v3}, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTrackTask;->getSourcePosition()I

    move-result v3

    .line 519
    iget-object v6, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v6, p1, v4, v3, v1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->enqueueTrack(Landroid/net/Uri;Landroid/net/Uri;II)I

    move-result p1

    goto :goto_4

    .line 522
    :cond_e
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v3, p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->enqueueTracks(Landroid/net/Uri;I)I

    move-result p1

    :goto_4
    if-lez p1, :cond_f

    .line 526
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->notifyPlayerPlayqueueUpdated(I)V

    .line 528
    new-instance p1, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$Enqueued;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/EnqueueTask;->getEnqueueType()I

    move-result v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$Enqueued;-><init>(I)V

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    invoke-virtual {v0, v2, v5, v5, p1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 534
    :cond_f
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->registerContentObserver(Landroid/net/Uri;)V

    goto/16 :goto_7

    .line 463
    :pswitch_c
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/SaveLastPlayedTask;

    .line 464
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/SaveLastPlayedTask;->getPlaybackPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->saveLastPlayed(I)V

    goto/16 :goto_7

    .line 454
    :pswitch_d
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;

    .line 455
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 456
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenLastPlayedTask;->onlyIfPlayQueueIsEmpty()Z

    move-result v0

    .line 457
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->unregisterContentObserver()V

    .line 458
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->openLastPlayed(Ljava/lang/String;Z)V

    .line 459
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->registerContentObserver(Landroid/net/Uri;)V

    goto/16 :goto_7

    .line 450
    :pswitch_e
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->stopWinding()V

    goto/16 :goto_7

    :pswitch_f
    if-eqz v0, :cond_10

    .line 445
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/StartWindingTask;

    .line 446
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/StartWindingTask;->isForward()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->startWinding(Z)V

    goto/16 :goto_7

    .line 441
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object is not allowed to be null when start to winding."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_10
    if-eqz v0, :cond_11

    .line 435
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/SetPlaybackPositionTask;

    .line 436
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/SetPlaybackPositionTask;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->setPlaybackPosition(I)V

    goto/16 :goto_7

    .line 431
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object is not allowed to be null when setting playback position."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 426
    :pswitch_11
    invoke-virtual {p0, v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    goto/16 :goto_7

    .line 422
    :pswitch_12
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateDuration(Z)V

    goto/16 :goto_7

    .line 400
    :pswitch_13
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->next()V

    goto/16 :goto_7

    .line 396
    :pswitch_14
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->prev()V

    goto/16 :goto_7

    .line 392
    :pswitch_15
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->play()V

    goto/16 :goto_7

    .line 387
    :pswitch_16
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_12

    goto :goto_5

    :cond_12
    const/4 v3, 0x0

    .line 388
    :goto_5
    invoke-direct {p0, v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->pause(Z)V

    goto/16 :goto_7

    :pswitch_17
    if-eqz v0, :cond_13

    .line 377
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->unregisterContentObserver()V

    .line 379
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/OpenSmartPlaylistTask;

    .line 380
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenSmartPlaylistTask;->getType()I

    move-result v2

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->getPosition()I

    move-result v3

    .line 381
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->isShuffle()Z

    move-result v4

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->getStartPlayback()Z

    move-result v5

    const/4 v6, -0x1

    move-object v1, p0

    .line 380
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->openSmartPlaylist(IIZZI)V

    .line 383
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->registerContentObserver(Landroid/net/Uri;)V

    goto :goto_7

    .line 373
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object is not allowed to be null when opening a Uri."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_18
    if-eqz v0, :cond_15

    .line 355
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;

    .line 356
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->getUri()Landroid/net/Uri;

    move-result-object v2

    .line 358
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->unregisterContentObserver()V

    .line 360
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->usePlayqueue()Z

    move-result p1

    if-nez p1, :cond_14

    .line 361
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->getAlbum()Ljava/lang/String;

    move-result-object v4

    .line 362
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->getPlaybackPos()I

    move-result v6

    move-object v1, p0

    .line 361
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->openWithNoPlayQueue(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_6

    .line 364
    :cond_14
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->getPosition()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->isShuffle()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 365
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/OpenTask;->getSourcePosition()I

    move-result v8

    move-object v1, p0

    .line 364
    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->open(Landroid/net/Uri;IIZZZI)V

    .line 368
    :goto_6
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueUri:Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->registerContentObserver(Landroid/net/Uri;)V

    goto :goto_7

    .line 351
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object is not allowed to be null when opening a Uri."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_19
    if-eqz v0, :cond_16

    .line 346
    check-cast v0, Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->setPlayerService(Lcom/sonyericsson/music/proxyservice/worker/SetPlayerServiceTask;)V

    goto :goto_7

    .line 343
    :cond_16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Object is not allowed to be null when setting a renderer."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    :goto_7
    :pswitch_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_1a
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method

.method public iShuffled()Z
    .locals 1

    .line 2088
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->isShuffled()Z

    move-result v0

    return v0
.end method

.method isPlaying()Z
    .locals 2

    .line 1111
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReleased()Z
    .locals 1

    .line 638
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mIsReleased:Z

    return v0
.end method

.method notifyPlayerReleased(Ljava/lang/String;IZZ)V
    .locals 10

    .line 671
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    .line 672
    invoke-static {p1}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isLocalPlayer(Ljava/lang/String;)Z

    move-result p1

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_1

    :cond_1
    const/4 p4, -0x1

    :goto_1
    const/4 v3, 0x0

    const/16 v4, 0xa

    .line 671
    invoke-virtual {v0, v4, p1, p4, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 675
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 p4, 0x0

    invoke-virtual {p1, v1, p4, v2, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 677
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_2

    .line 678
    new-instance v9, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object p1

    iget-object p4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p4}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object p4

    invoke-direct {v9, p1, p4, v3, p3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 680
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 p4, 0xb

    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 681
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v8, 0x0

    move-object v4, v0

    move v7, p2

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 680
    invoke-virtual {p1, p4, v2, v2, v0}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 686
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 p2, 0xc

    new-instance p4, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;

    invoke-direct {p4, v2, v3, v3, p3}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, p2, v2, v2, p4}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 690
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 p2, 0x13

    invoke-virtual {p1, p2, v2, v2, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    return-void
.end method

.method registerContentObserver(Landroid/net/Uri;)V
    .locals 3

    .line 2112
    iget-boolean v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRegisteredPlayQueueObserver:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2113
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 2114
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayqueueObserver:Lcom/sonyericsson/music/proxyservice/worker/Worker$PlayQueueObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 p1, 0x1

    .line 2115
    iput-boolean p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mRegisteredPlayQueueObserver:Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    .line 237
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x4

    .line 238
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x5

    .line 239
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x6

    .line 240
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x7

    .line 241
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x1a

    .line 242
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x8

    .line 243
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x9

    .line 244
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0xa

    .line 245
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0xb

    .line 246
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0xc

    .line 247
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0xd

    .line 248
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0xe

    .line 249
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x10

    .line 252
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x11

    .line 253
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x1b

    .line 254
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x12

    .line 255
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x13

    .line 256
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x14

    .line 257
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x15

    .line 258
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x16

    .line 259
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x17

    .line 260
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x18

    .line 261
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0x19

    .line 262
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isLocalPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    check-cast v0, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;

    .line 268
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/localplayer/LocalPlayer;->contextDestroyed()V

    goto :goto_0

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isDlnaCastPlayer(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    check-cast v0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;

    .line 271
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->contextDestroyed()V

    .line 274
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    invoke-static {}, Lcom/sonyericsson/music/common/LocalBroadcastManagerFactory;->getLocalBroadcastManager()Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/common/LocalBroadcastManagerWrapper;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 280
    invoke-direct {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->stopPlaybackEventHandlers()V

    const v0, 0x186a0

    .line 282
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :catchall_0
    move-exception v0

    .line 274
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setListener(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->setWorkerListener(Lcom/sonyericsson/music/proxyservice/worker/WorkerListener;)V

    return-void
.end method

.method trackIsLastPlayedTrack(Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1472
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    .line 1473
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    .line 1475
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->getPlayQueuePos()I

    move-result v1

    .line 1476
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/LastPlayedInfo;->getTrackUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 1478
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method updateRemoteControlMetadata(Landroid/graphics/Bitmap;)V
    .locals 10

    .line 2145
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 2147
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastRemoteControlTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_0

    .line 2148
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/common/Track;->equalMetadata(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2151
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mLastRemoteControlTrack:Lcom/sonyericsson/music/common/Track;

    .line 2153
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 2154
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 2153
    invoke-static {v1, v0}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownArtistWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2155
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 2156
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getAlbum()Ljava/lang/String;

    move-result-object v1

    .line 2155
    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/StringUtils;->replaceUnknownAlbumWithLocalizedString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_2

    .line 2161
    invoke-virtual {p0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getAlbumArtFromCurrentTrack()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2165
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801c1

    .line 2166
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2167
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v9, v0

    goto :goto_0

    :cond_1
    move-object v9, p1

    goto :goto_0

    :cond_2
    move-object v9, p1

    .line 2171
    :goto_0
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 2172
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v6

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueue:Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getTrackCountInPlayqueue()I

    move-result v7

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 2173
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v8

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$TrackMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/graphics/Bitmap;)V

    .line 2174
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v2, 0x11

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v3, v0}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 2177
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateTrackColor(Landroid/graphics/Bitmap;)V

    :cond_3
    return-void
.end method
