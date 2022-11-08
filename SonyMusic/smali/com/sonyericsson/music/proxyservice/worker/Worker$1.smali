.class Lcom/sonyericsson/music/proxyservice/worker/Worker$1;
.super Landroid/content/BroadcastReceiver;
.source "Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/worker/Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/worker/Worker;)V
    .locals 0

    .line 1502
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/proxyservice/worker/Worker$1;Landroid/content/Intent;)V
    .locals 0

    .line 1502
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->handlePlaybackIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private audioSessionUpdated(Landroid/content/Intent;)V
    .locals 4

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacksinternal.EXTRA_AUDIO_SESSION_ID"

    const/4 v1, -0x1

    .line 1595
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1597
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    return-void
.end method

.method private handleError(Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

    const/4 v3, 0x0

    .line 1659
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_URI"

    .line 1660
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1663
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v5

    .line 1666
    :goto_0
    iget-object v7, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v10, v7, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v7, 0x1

    const/4 v15, -0x1

    if-eqz v10, :cond_3

    if-eqz v6, :cond_3

    .line 1668
    invoke-virtual {v10, v4}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1669
    iget-object v6, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v6, v6, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/sonyericsson/music/common/TrackFactory;->createTrackFromPlayqueue(Landroid/content/Context;I)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1671
    invoke-virtual {v0, v4}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 1675
    :cond_1
    iget-object v4, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iput-object v0, v4, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1676
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->updateTrackWithDataUri(Landroid/content/Intent;)Z

    .line 1680
    iget-object v0, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v4, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v6, 0x4

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v4, v6, v3, v3, v0}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1683
    iget-object v0, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getAlbumArtFromCurrentTrack()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1684
    new-instance v14, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    iget-object v4, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v4, v4, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v4}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v6, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v6, v6, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v6}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    .line 1685
    invoke-virtual {v8}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v8

    invoke-direct {v14, v4, v6, v0, v8}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1687
    iget-object v0, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v4, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v6, 0xb

    new-instance v13, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackSkippedUpdate;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1688
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    iget-object v0, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v11, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v12, 0x0

    const/4 v0, 0x0

    move-object v8, v13

    move-object v3, v13

    move v13, v0

    invoke-direct/range {v8 .. v14}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackSkippedUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 1687
    invoke-virtual {v4, v6, v15, v15, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    .line 1691
    :cond_3
    iget-object v0, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v7, v3, v15, v5}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :goto_2
    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_ERROR_CODE"

    .line 1695
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1698
    iget-object v4, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    monitor-enter v4

    .line 1700
    :try_start_0
    iget-object v0, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    .line 1701
    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/ProxyServiceUtils;->isLocalPlayer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-ne v3, v7, :cond_4

    .line 1703
    iget-object v0, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->access$200(Lcom/sonyericsson/music/proxyservice/worker/Worker;)V

    .line 1705
    iget-object v0, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v6, 0x9

    invoke-virtual {v0, v6, v15, v7, v5}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v6, "SemcMusicPlayer"

    .line 1709
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Worker handleError: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_4
    :goto_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_ERROR_MESSAGE"

    .line 1713
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_ERROR_TITLE"

    .line 1714
    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_ERROR_PLAYING"

    .line 1716
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1718
    iget-object v6, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v6, v6, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v8, 0xc

    new-instance v9, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;

    invoke-direct {v9, v3, v4, v0, v2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$PlaybackError;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6, v8, v15, v15, v9}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1721
    iget-object v0, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v7, v15, v5}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    return-void

    .line 1711
    :goto_4
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private handlePlaybackIntent(Landroid/content/Intent;)V
    .locals 8

    .line 1516
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1517
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v2, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    if-eqz v2, :cond_f

    invoke-static {v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->access$100(Lcom/sonyericsson/music/proxyservice/worker/Worker;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 1521
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->isCorrectPlayer(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYER_STATE"

    .line 1525
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_c

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_STATE"

    .line 1526
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_URI"

    .line 1527
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1530
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    :cond_2
    move-object v4, v3

    .line 1534
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v5, v5, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v5, :cond_3

    if-eqz v4, :cond_3

    .line 1535
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1539
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->updateTrackWithDataUri(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1540
    iget-object v5, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v6, v5, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v7, 0x7

    iget-object v5, v5, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v6, v7, v2, v2, v5}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_3
    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_IDLE"

    .line 1545
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1546
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->trackCompleted(Landroid/content/Intent;Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_4
    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_OPENED"

    .line 1547
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v4, :cond_5

    .line 1548
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->trackOpened(Landroid/content/Intent;Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_SKIPPED"

    .line 1549
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v4, :cond_6

    .line 1550
    invoke-direct {p0, p1, v4}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->trackSkipped(Landroid/content/Intent;Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_PLAYING"

    .line 1551
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v4, :cond_7

    .line 1552
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->trackPlaying(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_PAUSED"

    .line 1553
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v4, :cond_8

    .line 1554
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->trackPaused(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_BUFFERING"

    .line 1555
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v4, :cond_9

    .line 1556
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->trackBuffering(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.STATE_SEEK_DONE"

    .line 1557
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v4, :cond_a

    .line 1558
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->trackSeekDone(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.STATE_ERROR"

    .line 1559
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1560
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->handleError(Landroid/content/Intent;)V

    goto :goto_1

    :cond_b
    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.STATE_RELEASED"

    .line 1561
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1565
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    monitor-enter v0

    .line 1566
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iput-object v3, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    .line 1567
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 1569
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1570
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->notifyPlayerReleased(Ljava/lang/String;IZZ)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1567
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_c
    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.ACTION_PLAYBACK_INFO"

    .line 1572
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYBACK_POSITION_CHANGED"

    .line 1573
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-le p1, v2, :cond_e

    .line 1577
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->playbackPosChanged(I)V

    goto :goto_1

    :cond_d
    const-string v1, "com.sonyericsson.music.playerservice.playercallbacksinternal.ACTION_AUDIO_SESSION_UPDATE"

    .line 1579
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1580
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->audioSessionUpdated(Landroid/content/Intent;)V

    :cond_e
    :goto_1
    return-void

    :cond_f
    :goto_2
    return-void
.end method

.method private isCorrectPlayer(Landroid/content/Intent;)Z
    .locals 1

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYER_ID"

    .line 1585
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1587
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {v0}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlayerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private logRecentlyPlayed(Ljava/lang/String;)V
    .locals 11

    .line 1765
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1767
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-static {v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->access$400(Lcom/sonyericsson/music/proxyservice/worker/Worker;)Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v1, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1768
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v1

    .line 1767
    invoke-virtual {v0, v1}, Lcom/sonyericsson/music/proxyservice/worker/PlayQueue;->getCurrentPlayingContainerUri(I)Ljava/lang/String;

    move-result-object v0

    .line 1769
    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->replaceWithAlbumContainerUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1771
    sget-object v0, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v1, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1772
    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->getAlbumId()J

    move-result-wide v1

    .line 1771
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1772
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0

    :cond_0
    move-object v6, v0

    .line 1775
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v1, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1776
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1777
    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getPlayqueuePosition()I

    move-result v5

    .line 1778
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const/4 v10, 0x1

    move-object v9, p1

    .line 1775
    invoke-static/range {v1 .. v10}, Lcom/sonyericsson/music/proxyservice/playbackeventhandling/RecentlyPlayedLogger;->buildRecentlyPlayedIntent(Landroid/content/Context;Ljava/lang/String;JILjava/lang/String;JLjava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private playbackPosChanged(I)V
    .locals 11

    .line 2002
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v1, -0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2003
    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 2009
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v2, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    new-instance v10, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$SeekUpdate;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 2010
    invoke-static {v0}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSeekedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v5, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 2011
    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v10

    move v6, p1

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$SeekUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;Z)V

    const/16 p1, 0xb

    .line 2009
    invoke-virtual {v2, p1, v1, v1, v10}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    return-void
.end method

.method private postSaveLastPlayed(I)V
    .locals 2

    .line 2015
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2017
    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/SaveLastPlayedTask;

    invoke-direct {v0, p1}, Lcom/sonyericsson/music/proxyservice/worker/SaveLastPlayedTask;-><init>(I)V

    .line 2018
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 2019
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private replaceWithAlbumContainerUri(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 1786
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/music/common/MediaStoreUriMatcher;->getUriType(Landroid/net/Uri;)I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private trackBuffering(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_BUFFERING_PROGRESS"

    const/4 v1, -0x1

    .line 1836
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1843
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-eq p1, v1, :cond_0

    .line 1845
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v2, 0x8

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0, v2, p1, v1, p2}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private trackCompleted(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 10

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_TRACK_COMPLETED"

    const/4 v1, 0x0

    .line 1602
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1606
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v2, v2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1607
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1611
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v1, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v2, 0xb

    new-instance v9, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1613
    invoke-static {p2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v5, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1614
    invoke-virtual {v5}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v6

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v7

    const/4 v8, 0x0

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    const/4 p2, -0x1

    .line 1611
    invoke-virtual {v1, v2, p2, p2, v9}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1617
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackCompletedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->logRecentlyPlayed(Ljava/lang/String;)V

    .line 1619
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v1, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    iput-object v1, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    :cond_0
    if-eqz p1, :cond_1

    .line 1624
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iput-boolean v0, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueOperatedOn:Z

    :cond_1
    return-void
.end method

.method private trackOpened(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 9

    .line 1931
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

    const/4 v2, 0x0

    .line 1933
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1940
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v3, v3, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1961
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1962
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->playqueuePosition(I)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object p2

    iput-object p2, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    goto :goto_1

    .line 1943
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sonyericsson/music/common/DBUtils;->isPlayQueueModeUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1944
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonyericsson/music/common/TrackFactory;->createTrackFromPlayqueue(Landroid/content/Context;I)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1946
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    :cond_2
    return-void

    .line 1956
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sonyericsson/music/common/TrackFactory;->createNonPlayqueueTrack(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    .line 1959
    :cond_4
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iput-object v0, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1960
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->updateTrackWithDataUri(Landroid/content/Intent;)Z

    .line 1965
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-static {p1, v2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->access$300(Lcom/sonyericsson/music/proxyservice/worker/Worker;Z)V

    .line 1967
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v4

    .line 1969
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {p1}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlaybackPosition()I

    move-result p1

    .line 1973
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v1, 0x3

    .line 1974
    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1973
    invoke-virtual {v0, v1, p1, v4, p2}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1982
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v6, -0x1

    invoke-virtual {p2, v0, p1, v6, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    if-eqz v4, :cond_6

    .line 1990
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getAlbumArtFromCurrentTrack()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1991
    new-instance p1, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    move-object v5, p1

    goto :goto_2

    :cond_6
    move-object v5, v1

    .line 1994
    :goto_2
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateRemoteControlMetadata(Landroid/graphics/Bitmap;)V

    .line 1995
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v7, 0xb

    new-instance v8, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1996
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPreparedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v2, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v3, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 1995
    invoke-virtual {p2, v7, v6, v6, v8}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    return-void
.end method

.method private trackPaused(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PAUSED_REASON"

    const/4 v1, 0x0

    .line 1810
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1812
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1813
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v1, p1, v0}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1816
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {p2, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result p2

    .line 1817
    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getAlbumArtFromCurrentTrack()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1818
    new-instance v8, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v4, v4, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v4}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v5, v5, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v5}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v4, v5, v3, v1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1821
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v9, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v10, 0xb

    new-instance v11, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object v1, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1822
    invoke-static {v1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackPausedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v5, v1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v7, 0x0

    move-object v3, v11

    move v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    const/4 v1, -0x1

    .line 1821
    invoke-virtual {v9, v10, v1, v1, v11}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .line 1828
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v2, 0x10

    invoke-virtual {p1, v2, v1, p2, v0}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1832
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {p1}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlaybackPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->postSaveLastPlayed(I)V

    return-void
.end method

.method private trackPlaying(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 11

    .line 1734
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1735
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueOperatedOn:Z

    .line 1737
    invoke-static {p1, p2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->access$300(Lcom/sonyericsson/music/proxyservice/worker/Worker;Z)V

    .line 1739
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayer:Lcom/sonyericsson/music/playerservice/PlayerService;

    invoke-interface {p1}, Lcom/sonyericsson/music/playerservice/PlayerService;->getPlaybackPosition()I

    move-result p1

    .line 1740
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p2, v0, p1, v2, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1742
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->postSaveLastPlayed(I)V

    .line 1744
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getAlbumArtFromCurrentTrack()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1745
    new-instance v8, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v3, v3, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v3}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    .line 1746
    invoke-virtual {v4}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v4

    invoke-direct {v8, v0, v3, p2, v4}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1748
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->updateRemoteControlMetadata(Landroid/graphics/Bitmap;)V

    .line 1752
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v9, 0xb

    new-instance v10, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1753
    invoke-static {p2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v5, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    const/4 v3, 0x0

    .line 1754
    invoke-virtual {p2, v3}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getPlaybackPosition(Z)I

    move-result v6

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    .line 1755
    invoke-virtual {p2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v7

    move-object v3, v10

    invoke-direct/range {v3 .. v8}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    .line 1752
    invoke-virtual {v0, v9, v2, v2, v10}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1757
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackStartedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->logRecentlyPlayed(Ljava/lang/String;)V

    .line 1759
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v0, 0x10

    const/4 v2, 0x3

    invoke-virtual {p2, v0, v2, p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private trackSeekDone(Landroid/content/Intent;Ljava/lang/String;)V
    .locals 3

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYBACK_POSITION_CHANGED"

    const/4 v1, -0x1

    .line 1851
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1859
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    if-le p1, v1, :cond_0

    .line 1860
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p2, v0, p1, v1, v2}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private trackSkipped(Landroid/content/Intent;Landroid/net/Uri;)V
    .locals 10

    .line 1866
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPlayQueueOperatedOn:Z

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_PLAYLIST_POSITION"

    const/4 v1, 0x0

    .line 1868
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_OLD_PLAYBACK_POSITION"

    .line 1869
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1877
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-virtual {v2}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v8

    .line 1879
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v2, v2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1882
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v2, v2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/sonyericsson/music/common/DBUtils;->isPlayQueueModeUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1883
    iget-object v2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v2, v2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/sonyericsson/music/common/TrackFactory;->createTrackFromPlayqueue(Landroid/content/Context;I)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1885
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sonyericsson/music/common/Track;->isSame(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_1
    return-void

    .line 1895
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sonyericsson/music/common/TrackFactory;->createNonPlayqueueTrack(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    .line 1898
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iput-object v0, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1899
    invoke-direct {p0, p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->updateTrackWithDataUri(Landroid/content/Intent;)Z

    .line 1902
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    invoke-static {p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->access$300(Lcom/sonyericsson/music/proxyservice/worker/Worker;Z)V

    .line 1906
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/4 v0, 0x4

    .line 1907
    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    .line 1906
    invoke-virtual {p2, v0, v1, v8, p1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    .line 1909
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    if-eqz p2, :cond_5

    .line 1910
    invoke-virtual {p1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->getAlbumArtFromCurrentTrack()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1911
    new-instance v9, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;

    iget-object p2, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p2, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {p2}, Lcom/sonyericsson/music/common/Track;->getTitle()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v0, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getArtist()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    .line 1912
    invoke-virtual {v1}, Lcom/sonyericsson/music/proxyservice/worker/Worker;->isPlaying()Z

    move-result v1

    invoke-direct {v9, p2, v0, p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 1914
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object p2, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mMainThreadHandler:Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;

    const/16 v0, 0xb

    new-instance v1, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackSkippedUpdate;

    iget-object p1, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mContext:Landroid/content/Context;

    .line 1915
    invoke-static {p1}, Lcom/sonyericsson/music/playbackcontrol/PlaybackControlStateIntents;->getTrackSkippedIntent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v5, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mPreviousTrack:Lcom/sonyericsson/music/common/Track;

    iget-object v6, p1, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/sonyericsson/music/proxyservice/worker/WorkerInternalUpdate$TrackSkippedUpdate;-><init>(Ljava/lang/String;Lcom/sonyericsson/music/common/Track;Lcom/sonyericsson/music/common/Track;IZLcom/sonyericsson/music/proxyservice/worker/WorkerListener$NotificationInfo;)V

    const/4 p1, -0x1

    .line 1914
    invoke-virtual {p2, v0, p1, p1, v1}, Lcom/sonyericsson/music/proxyservice/worker/MainThreadHandler;->postToMain(IIILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private updateTrackWithDataUri(Landroid/content/Intent;)Z
    .locals 3

    const-string v0, "com.sonyericsson.music.playerservice.playercallbacks.EXTRA_DATA_URI"

    .line 1921
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1924
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    iget-object v1, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track;->buildUpon()Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->dataUri(Landroid/net/Uri;)Lcom/sonyericsson/music/common/Track$TrackBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/music/common/Track$TrackBuilder;->build()Lcom/sonyericsson/music/common/Track;

    move-result-object v1

    iput-object v1, v0, Lcom/sonyericsson/music/proxyservice/worker/Worker;->mCurrentTrack:Lcom/sonyericsson/music/common/Track;

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1507
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1;->this$0:Lcom/sonyericsson/music/proxyservice/worker/Worker;

    new-instance v0, Lcom/sonyericsson/music/proxyservice/worker/Worker$1$1;

    invoke-direct {v0, p0, p2}, Lcom/sonyericsson/music/proxyservice/worker/Worker$1$1;-><init>(Lcom/sonyericsson/music/proxyservice/worker/Worker$1;Landroid/content/Intent;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
