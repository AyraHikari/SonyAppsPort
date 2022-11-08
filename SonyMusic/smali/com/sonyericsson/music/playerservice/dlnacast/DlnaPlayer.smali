.class public Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;
.super Lcom/sonyericsson/music/playerservice/BasePlayer;
.source "DlnaPlayer.java"

# interfaces
.implements Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mDelayedGetPlaybackPosRunnable:Ljava/lang/Runnable;

.field private mDrmUtils:Lcom/sonyericsson/music/common/DrmUtils;

.field private mErrorCount:I

.field private mIsInContinuousPlayingState:Z

.field private mPlayqueueDirection:I

.field private mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

.field private mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

.field private mRemotePlayerReleased:Z

.field private volatile mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

.field private final mRouteInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

.field private mSavedPlaybackPosition:I

.field private mStopOnError:Z

.field private mWorkerThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/playerservice/BasePlayer;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 39
    iput-boolean p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerReleased:Z

    .line 40
    sget-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->END:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    .line 56
    iput p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPlayqueueDirection:I

    .line 59
    new-instance p2, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$1;

    invoke-direct {p2, p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$1;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;)V

    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDelayedGetPlaybackPosRunnable:Ljava/lang/Runnable;

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRouteInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 71
    new-instance p1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;)V

    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    return-void
.end method

.method private createRemotePlaybackClient()V
    .locals 8

    .line 794
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRouteInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->createRemoteClient(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    .line 796
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private discardWinding()V
    .locals 0

    return-void
.end method

.method private getMimeType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 843
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x1

    .line 844
    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "mime_type"

    const/4 v2, 0x0

    aput-object v0, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 848
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mime_type"

    .line 849
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 853
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 855
    :cond_1
    throw v0

    :cond_2
    if-eqz p1, :cond_3

    .line 853
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V
    .locals 13

    .line 699
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->getErrorCode()I

    move-result v0

    .line 700
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    .line 701
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v2

    .line 702
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;->isPlaying()Z

    move-result v6

    if-nez v2, :cond_0

    .line 705
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 706
    invoke-virtual {v2, v3, p1}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    return-void

    .line 710
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string v3, " "

    .line 714
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    :cond_3
    sget-object v1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    .line 719
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->discardWinding()V

    .line 721
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 724
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 728
    :goto_0
    iget v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mErrorCount:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mErrorCount:I

    .line 729
    iget v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mErrorCount:I

    if-lt v3, v1, :cond_5

    .line 730
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    .line 731
    iput v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mErrorCount:I

    .line 738
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 739
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 740
    iget-object v5, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v5}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 741
    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 740
    invoke-virtual {v4}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    .line 741
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 742
    :cond_6
    iget-object v5, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v5}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v5

    move-object v9, v3

    move-object v10, v4

    move v11, v5

    goto :goto_1

    :cond_7
    move-object v9, v4

    move-object v10, v9

    const/4 v11, 0x0

    .line 745
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/16 v4, -0x66

    invoke-virtual {v3, v9, v10, v11, v4}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    .line 761
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/sonymobile/music/common/NetworkConnectivityUtil;->isNetworkConnected(Landroid/content/Context;I)Z

    move-result v3

    const v4, 0xf4240

    if-eq v0, v4, :cond_9

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    move v4, v0

    goto :goto_3

    .line 765
    :cond_9
    :goto_2
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mStopOnError:Z

    const/4 v4, 0x1

    .line 768
    :goto_3
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mStopOnError:Z

    if-eqz v0, :cond_a

    .line 769
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v5, 0x0

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    invoke-virtual/range {v3 .. v9}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyError(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 771
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    .line 772
    invoke-direct {p0, v2, v2, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    goto :goto_4

    .line 773
    :cond_a
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    if-eqz v0, :cond_d

    if-le v1, p1, :cond_d

    .line 774
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_b

    .line 775
    iget-object v7, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v11

    const/4 v12, -0x1

    invoke-virtual/range {v7 .. v12}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 778
    :cond_b
    iget p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPlayqueueDirection:I

    if-nez p1, :cond_c

    .line 779
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->next()V

    goto :goto_4

    .line 781
    :cond_c
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->previous()V

    goto :goto_4

    .line 784
    :cond_d
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/16 v4, 0x32

    const/4 v5, 0x0

    move-object v7, v9

    move-object v8, v10

    move v9, v11

    invoke-virtual/range {v3 .. v9}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyError(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 788
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    .line 789
    invoke-direct {p0, v2, v2, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    :goto_4
    return-void
.end method

.method private internalPlay()V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->discardWinding()V

    .line 242
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 244
    :cond_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->isTrackPlayable(Lcom/sonyericsson/music/common/Track;)Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xa

    goto :goto_0

    :cond_2
    const/high16 v0, -0x80000000

    :goto_0
    const/4 v3, 0x1

    if-le v0, v1, :cond_3

    .line 249
    invoke-direct {p0, v3, v2, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    .line 250
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mStopOnError:Z

    .line 251
    new-instance v1, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {v1, v0, v3, v4, v2}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    invoke-direct {p0, v1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    return-void

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    .line 257
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->isPlayerPreparedAndReady()Z

    move-result v1

    if-nez v1, :cond_4

    .line 258
    iget v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mSavedPlaybackPosition:I

    sget-object v1, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->NONE:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, v0, v3, v1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 259
    invoke-direct {p0, v3, v2, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    goto :goto_1

    .line 261
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PREPARED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PAUSED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-ne v0, v1, :cond_6

    .line 264
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->play()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    goto :goto_1

    .line 266
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PREPARING:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    if-eqz v0, :cond_7

    .line 269
    invoke-virtual {v0, v3}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->setStartPlaying(Z)V

    goto :goto_1

    .line 272
    :cond_7
    sget-object v0, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DlnaPlayer:internalPlay ignored play command. mRemotePlayserState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;)V

    :cond_8
    :goto_1
    return-void
.end method

.method private isPlayerPreparedAndReady()Z
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    .line 471
    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->END:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->COMPLETED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->IDLE:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPlaying()Z
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyOpenAndSkipAtPrepare(Lcom/sonyericsson/music/playerservice/PrepareOperation;Lcom/sonyericsson/music/common/Track;)V
    .locals 3

    .line 582
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getOperation()Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    move-result-object v0

    .line 583
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 585
    :goto_0
    sget-object v2, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$6;->$SwitchMap$com$sonyericsson$music$playerservice$PrepareOperation$PrepareOp:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 593
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p2

    .line 593
    invoke-virtual {p1, v0, v1, p2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyOpened(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 587
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 588
    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getOldPlaybackPos()I

    move-result p1

    .line 589
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p2

    .line 587
    invoke-virtual {v0, v2, v1, p1, p2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifySkipped(Ljava/lang/String;Ljava/lang/String;II)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z
    .locals 7

    .line 175
    iput p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mSavedPlaybackPosition:I

    .line 177
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->discardWinding()V

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->getMimeType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 182
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    move-object v1, p0

    move v4, p2

    move v5, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->prepareRemotePlaybackClient(Lcom/sonyericsson/music/common/Track;Ljava/lang/String;ZILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private openTrackFromPq(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->openTrackFromPlayQueuePos(I)Lcom/sonyericsson/music/common/Track;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->isTrackPlayable(Lcom/sonyericsson/music/common/Track;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 164
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->openCurrentTrack(IZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method private prepareRemotePlaybackClient(Lcom/sonyericsson/music/common/Track;Ljava/lang/String;ZILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V
    .locals 7

    .line 194
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->getPlaybackPosition()I

    move-result v4

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->END:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-ne v0, v1, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->createRemotePlaybackClient()V

    .line 200
    :cond_0
    new-instance v6, Lcom/sonyericsson/music/playerservice/PrepareOperation;

    move-object v0, v6

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/playerservice/PrepareOperation;-><init>(Lcom/sonyericsson/music/common/Track;ZIILcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)V

    iput-object v6, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    const/4 p5, 0x0

    if-eqz p3, :cond_3

    .line 204
    iget-object p3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    int-to-long v0, p4

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->prepareAndPlayAsync(Lcom/sonyericsson/music/common/Track;Ljava/lang/String;J)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    .line 205
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    .line 209
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 209
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object p1

    .line 210
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    .line 211
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 212
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 214
    invoke-virtual {p4}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result p4

    const/16 p5, -0x65

    .line 212
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 217
    :cond_2
    new-instance p2, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    .line 218
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->isPlaying()Z

    move-result p4

    invoke-direct {p2, p5, p3, p1, p4}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    .line 217
    invoke-direct {p0, p2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    goto :goto_0

    .line 221
    :cond_3
    invoke-virtual {p0, p1, p5}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->handleOnPrepared(Lcom/sonyericsson/music/common/Track;Z)V

    :goto_0
    return-void
.end method

.method private releaseRemotePlaybackClient(ZZZ)V
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_0

    .line 802
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    sget-object v2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->ERROR:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    sget-object v2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->IDLE:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    sget-object v2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->END:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v0, v2, :cond_0

    .line 805
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mSavedPlaybackPosition:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 807
    iput v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mSavedPlaybackPosition:I

    .line 810
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    if-eqz p3, :cond_2

    .line 813
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->synchronousReleaseRemoteClient()V

    goto :goto_1

    .line 815
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->releaseRemoteClient()V

    goto :goto_1

    .line 818
    :cond_3
    iput v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mSavedPlaybackPosition:I

    .line 821
    :goto_1
    iput v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mErrorCount:I

    if-eqz p2, :cond_4

    .line 824
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyReleased()V

    .line 826
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyAudioSessionUpdated(I)V

    return-void
.end method

.method private setPlayQueuePosition(IZZ)V
    .locals 2

    .line 451
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 456
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDelayedGetPlaybackPosRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x1

    .line 459
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mStopOnError:Z

    if-eqz p3, :cond_2

    .line 460
    sget-object p3, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    goto :goto_0

    .line 461
    :cond_2
    sget-object p3, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->NONE:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    :goto_0
    const/4 v1, 0x0

    .line 463
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->openTrackFromPq(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 464
    invoke-direct {p0, v0, v1, v1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public contextDestroyed()V
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 91
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 93
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerReleased:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-direct {p0, v0, v2, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    .line 95
    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    .line 96
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerReleased:Z

    :cond_1
    return-void
.end method

.method public getDuration()I
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->isPlayerPreparedAndReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->getDuration()I

    move-result v0

    return v0

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_1

    .line 493
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v0

    return v0

    .line 496
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public getPlaybackPosition()I
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->isPlayerPreparedAndReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->getCurrentPosition()I

    move-result v0

    return v0

    .line 481
    :cond_0
    iget v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mSavedPlaybackPosition:I

    if-lez v0, :cond_1

    return v0

    .line 485
    :cond_1
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->getPlaybackPosition()I

    move-result v0

    return v0
.end method

.method handleOnCompletion(Lcom/sonyericsson/music/common/Track;)V
    .locals 10

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 p1, 0x0

    .line 635
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mStopOnError:Z

    .line 636
    iput p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mSavedPlaybackPosition:I

    .line 638
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 639
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 640
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 639
    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v2

    .line 640
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move-object v8, v2

    .line 641
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v9

    .line 643
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v3, 0x1

    const/4 v7, -0x1

    move-object v4, v0

    move-object v5, v8

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyIdle(ZLjava/lang/String;Ljava/lang/String;II)V

    .line 645
    iget-boolean v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    if-eqz v2, :cond_6

    .line 646
    iget v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mRepeatMode:I

    if-ne v2, v1, :cond_2

    .line 647
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->next()V

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 650
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->getPlayQueuePosition()I

    move-result v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->setPlayQueuePosition(IZZ)V

    goto :goto_1

    :cond_3
    if-nez v2, :cond_6

    .line 652
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v1}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_4

    .line 657
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->setPlaybackPosition(I)V

    .line 658
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    invoke-virtual {v1, v0, v8, p1, p1}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifySkipped(Ljava/lang/String;Ljava/lang/String;II)V

    .line 660
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move-object v4, v8

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 663
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    .line 664
    invoke-direct {p0, p1, p1, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    goto :goto_1

    .line 666
    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->isLast()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 667
    iput-boolean p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    .line 669
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move-object v4, v8

    move v5, v9

    invoke-virtual/range {v2 .. v7}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 673
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->next()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method handleOnError(Lcom/sonyericsson/music/common/Track;I)V
    .locals 3

    .line 691
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-nez v0, :cond_0

    return-void

    .line 695
    :cond_0
    new-instance v0, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->isPlaying()Z

    move-result v2

    invoke-direct {v0, p2, v1, p1, v2}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    return-void
.end method

.method handleOnPlaybackPositionUpdate()V
    .locals 4

    .line 680
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->getPlaybackPosition()I

    move-result v0

    .line 686
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v2}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 687
    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v3

    .line 686
    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifySeekDone(Ljava/lang/String;II)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method handleOnPrepared(Lcom/sonyericsson/music/common/Track;Z)V
    .locals 12

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    .line 515
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/music/common/Track;->isSame(Lcom/sonymobile/music/audioplayer/BasicTrack;Z)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-nez p1, :cond_0

    goto/16 :goto_6

    .line 521
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    invoke-virtual {p1}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getOperation()Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    move-result-object p1

    .line 522
    sget-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$6;->$SwitchMap$com$sonyericsson$music$playerservice$PrepareOperation$PrepareOp:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 526
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->notifyOpenAndSkipAtPrepare(Lcom/sonyericsson/music/playerservice/PrepareOperation;Lcom/sonyericsson/music/common/Track;)V

    :goto_0
    const/4 v0, 0x0

    .line 539
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    invoke-virtual {v3}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->getPlaybackPos()I

    move-result v3

    .line 540
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->isPlayerPreparedAndReady()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-virtual {v4}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->getDuration()I

    move-result v4

    goto :goto_2

    .line 541
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v4}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v4

    :goto_2
    if-le v3, v4, :cond_2

    move v3, v4

    :cond_2
    if-nez p2, :cond_3

    if-lez v3, :cond_3

    .line 548
    invoke-virtual {p0, v3}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->setPlaybackPosition(I)V

    .line 551
    :cond_3
    iget-object v4, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    invoke-virtual {v4}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->shouldStartPlaying()Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p2, :cond_4

    .line 553
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->internalPlay()V

    :cond_4
    const/4 v5, 0x0

    if-nez v4, :cond_5

    if-eqz p2, :cond_5

    .line 555
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->pause()V

    goto :goto_5

    :cond_5
    if-eqz v0, :cond_7

    .line 557
    sget-object p2, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->FAST_FORWARD:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    if-ne p1, p2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p0, v1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->startWinding(Z)V

    goto :goto_5

    :cond_7
    if-nez p2, :cond_9

    .line 559
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 560
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 561
    iget-object p2, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 560
    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object p2

    .line 561
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_8
    move-object p2, v5

    .line 562
    :goto_4
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    .line 564
    iget-object v6, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, p1

    move-object v8, p2

    move v9, v0

    invoke-virtual/range {v6 .. v11}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    .line 567
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/16 v4, -0x66

    invoke-virtual {v1, p1, p2, v0, v4}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    .line 569
    invoke-direct {p0, v2, v2, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    if-ltz v3, :cond_9

    .line 574
    iput v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mSavedPlaybackPosition:I

    .line 578
    :cond_9
    :goto_5
    iput-object v5, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    return-void

    :cond_a
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method handlePlayingStateUpdated(Z)V
    .locals 7

    .line 603
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-nez v0, :cond_0

    return-void

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 609
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 608
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v3, v0

    .line 610
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v4

    .line 612
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/16 v1, -0x66

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    if-eqz p1, :cond_2

    .line 615
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v0, -0x1

    invoke-virtual {p1, v2, v3, v4, v0}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPlaying(Ljava/lang/String;Ljava/lang/String;II)V

    .line 620
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 621
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDelayedGetPlaybackPosRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDelayedGetPlaybackPosRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 625
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    :cond_3
    :goto_1
    return-void
.end method

.method public init()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->init()V

    .line 78
    new-instance v0, Lcom/sonyericsson/music/common/DrmUtilsImpl;

    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sonyericsson/music/common/DrmUtilsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDrmUtils:Lcom/sonyericsson/music/common/DrmUtils;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method protected isTrackPlayable(Landroid/net/Uri;)Z
    .locals 4

    .line 831
    invoke-static {p1}, Lcom/sonyericsson/music/common/DBUtils;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDrmUtils:Lcom/sonyericsson/music/common/DrmUtils;

    if-eqz v0, :cond_2

    .line 832
    invoke-interface {v0, p1}, Lcom/sonyericsson/music/common/DrmUtils;->hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 835
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDrmUtils:Lcom/sonyericsson/music/common/DrmUtils;

    invoke-interface {v2, p1}, Lcom/sonyericsson/music/common/DrmUtils;->canForward(Landroid/net/Uri;)Z

    move-result p1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_2
    return v1
.end method

.method public next()V
    .locals 5

    .line 334
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->next()V

    .line 336
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 341
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDelayedGetPlaybackPosRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 344
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->validatePlayQueue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 345
    invoke-direct {p0, v1, v2, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    return-void

    .line 349
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 350
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mStopOnError:Z

    const/4 v3, -0x1

    .line 352
    iget-boolean v4, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    xor-int/2addr v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/music/playerservice/BasePlayer;->findNextPlayableTrack(IZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 354
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 355
    iput v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPlayqueueDirection:I

    .line 356
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    sget-object v4, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    :goto_1
    sget-object v4, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->openTrackFromPq(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result v3

    :cond_5
    if-nez v3, :cond_6

    .line 362
    invoke-direct {p0, v1, v2, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    :cond_6
    return-void
.end method

.method public onCompletion(Lcom/sonyericsson/music/common/Track;)V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 875
    new-instance v1, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$3;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$3;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;Lcom/sonyericsson/music/common/Track;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onError(Lcom/sonyericsson/music/common/Track;I)V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 863
    new-instance v1, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$2;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;Lcom/sonyericsson/music/common/Track;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onPlaybackPositionUpdate()V
    .locals 4

    .line 898
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 900
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDelayedGetPlaybackPosRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public onPrepared(Lcom/sonyericsson/music/common/Track;)V
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 887
    new-instance v1, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$4;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$4;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;Lcom/sonyericsson/music/common/Track;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V
    .locals 2

    .line 907
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    .line 909
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PAUSED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-ne p1, v0, :cond_1

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$5;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer$5;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public open(Landroid/net/Uri;IIZ)V
    .locals 3

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sonyericsson/music/playerservice/BasePlayer;->open(Landroid/net/Uri;IIZ)V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDelayedGetPlaybackPosRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    const/4 v0, 0x0

    .line 136
    iput v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mErrorCount:I

    const/4 v1, 0x1

    .line 137
    iput-boolean v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mStopOnError:Z

    .line 139
    invoke-static {}, Lcom/sonyericsson/music/playqueue/PlayqueueStore$Playqueue;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 140
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/playerservice/BasePlayer;->openPlayQueue(Landroid/net/Uri;I)I

    move-result p1

    const/4 p2, -0x1

    if-le p1, p2, :cond_2

    .line 143
    sget-object p2, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->OPEN:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, p1, p3, p4, p2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->openTrackFromPq(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 144
    new-instance p1, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;

    const/4 p2, 0x0

    iget-object p3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-direct {p1, v0, p2, p3, v0}, Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;-><init>(ILjava/lang/String;Lcom/sonyericsson/music/common/Track;Z)V

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->handleError(Lcom/sonyericsson/music/playerservice/BasePlayer$ErrorMessage;)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-direct {p0, v1, v0, v0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    :cond_3
    :goto_0
    return-void

    .line 151
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Non-pq not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public pause()V
    .locals 15

    .line 291
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->pause()V

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-nez v0, :cond_0

    return-void

    .line 297
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->discardWinding()V

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    .line 303
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 304
    invoke-virtual {v1, v0}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->setStartPlaying(Z)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 308
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 309
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    invoke-virtual {v1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->pause()Z

    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_8

    .line 314
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    :cond_3
    move-object v4, v2

    .line 315
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    .line 316
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    move-object v5, v2

    .line 317
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v0

    move v6, v0

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    .line 319
    :goto_3
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/16 v1, -0x66

    invoke-virtual {v0, v4, v5, v6, v1}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_7

    .line 323
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    goto :goto_4

    .line 326
    :cond_7
    iget-object v9, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyPaused(Ljava/lang/String;Ljava/lang/String;IZI)V

    :cond_8
    :goto_4
    return-void
.end method

.method public play()V
    .locals 1

    .line 227
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->play()V

    const/4 v0, 0x1

    .line 229
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mStopOnError:Z

    .line 230
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->internalPlay()V

    return-void
.end method

.method protected playQueueUpdated(ZI)V
    .locals 10

    if-eqz p1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->pause()V

    const/4 p1, 0x0

    .line 432
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/16 v1, -0x66

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p1, v2, v1}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyBuffering(Ljava/lang/String;Ljava/lang/String;II)V

    .line 436
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayerServiceState:Lcom/sonyericsson/music/playerservice/PlayerServiceState;

    const/16 v4, 0x32

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, p2

    invoke-virtual/range {v3 .. v9}, Lcom/sonyericsson/music/playerservice/PlayerServiceState;->notifyError(ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 439
    invoke-direct {p0, v2, v2, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    :cond_0
    return-void
.end method

.method public previous()V
    .locals 5

    .line 368
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->previous()V

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 375
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDelayedGetPlaybackPosRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->validatePlayQueue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 379
    invoke-direct {p0, v1, v2, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    return-void

    .line 383
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mPlayQueueInfo:Lcom/sonyericsson/music/playerutil/PlayQueueInfo;

    invoke-virtual {v0}, Lcom/sonyericsson/music/playerutil/PlayQueueInfo;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 384
    iput-boolean v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mStopOnError:Z

    .line 386
    iget-boolean v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    xor-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/sonyericsson/music/playerservice/BasePlayer;->findPreviousPlayableTrack(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 388
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 390
    iput v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPlayqueueDirection:I

    .line 391
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    sget-object v4, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mIsInContinuousPlayingState:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x1

    :goto_1
    sget-object v4, Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;->SKIP:Lcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->openTrackFromPq(IIZLcom/sonyericsson/music/playerservice/PrepareOperation$PrepareOp;)Z

    move-result v3

    :cond_5
    if-nez v3, :cond_6

    .line 397
    invoke-direct {p0, v1, v2, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    :cond_6
    return-void
.end method

.method public release()V
    .locals 3

    .line 102
    invoke-super {p0}, Lcom/sonyericsson/music/playerservice/BasePlayer;->release()V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 107
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    .line 109
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerReleased:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-direct {p0, v2, v0, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->releaseRemotePlaybackClient(ZZZ)V

    .line 111
    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    .line 112
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerReleased:Z

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDrmUtils:Lcom/sonyericsson/music/common/DrmUtils;

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v0}, Lcom/sonyericsson/music/common/DrmUtils;->close()V

    :cond_2
    return-void
.end method

.method public setPlayQueuePosition(IZ)V
    .locals 1

    .line 445
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/music/playerservice/BasePlayer;->setPlayQueuePosition(IZ)V

    const/4 v0, 0x1

    .line 447
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->setPlayQueuePosition(IZZ)V

    return-void
.end method

.method public setPlaybackPosition(I)V
    .locals 3

    .line 403
    invoke-super {p0, p1}, Lcom/sonyericsson/music/playerservice/BasePlayer;->setPlaybackPosition(I)V

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/BasePlayer;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-nez v0, :cond_0

    goto :goto_1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mWorkerThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 410
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mDelayedGetPlaybackPosRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 413
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/PrepareOperation;

    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/playerservice/PrepareOperation;->setPlaybackPos(I)V

    .line 416
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayerState:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    .line 418
    invoke-direct {p0}, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->isPlayerPreparedAndReady()Z

    move-result v1

    if-nez v1, :cond_3

    .line 419
    iput p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mSavedPlaybackPosition:I

    goto :goto_0

    .line 420
    :cond_3
    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PREPARED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->STARTED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PAUSED:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    if-ne v0, v1, :cond_5

    .line 423
    :cond_4
    iput p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mSavedPlaybackPosition:I

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/DlnaPlayer;->mRemotePlayer:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->setPlaybackPos(J)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public startWinding(Z)V
    .locals 0

    return-void
.end method

.method public stopWinding()V
    .locals 0

    return-void
.end method
