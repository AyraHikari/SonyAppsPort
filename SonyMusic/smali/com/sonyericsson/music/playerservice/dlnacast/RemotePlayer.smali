.class Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;
.super Ljava/lang/Object;
.source "RemotePlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;,
        Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;,
        Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;,
        Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;,
        Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;,
        Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;,
        Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;
    }
.end annotation


# static fields
.field static final ERROR_PERMISSION_DENIED:I = 0xf4240


# instance fields
.field private final mContext:Landroid/content/Context;

.field volatile mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

.field mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field mPrepareCallback:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PrepareCallback;

.field mPrepareOperation:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;

.field mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

.field volatile mRemoteClientReleased:Z

.field mRemoteStatusCallback:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemoteStatusCallback;

.field mSessionCallback:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClientReleased:Z

    .line 80
    iput-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mContext:Landroid/content/Context;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mMainThreadHandler:Landroid/os/Handler;

    .line 82
    iput-object p2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;)Landroid/content/Context;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method createRemoteClient(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 86
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 88
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$1;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Landroidx/mediarouter/media/MediaRouter$RouteInfo;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x1388

    .line 110
    :try_start_0
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :catch_0
    iget-object p1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    sget-object v0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->IDLE:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-interface {p1, v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V

    return-void
.end method

.method getCurrentPosition()I
    .locals 6

    .line 270
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClientReleased:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 273
    new-array v2, v2, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 276
    iget-object v3, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;

    invoke-direct {v4, p0, v2, v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$7;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;[JLjava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v3, 0x1388

    .line 311
    :try_start_0
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :catch_0
    aget-wide v0, v2, v1

    long-to-int v1, v0

    return v1

    :cond_0
    return v1
.end method

.method getDuration()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;->getTrack()Lcom/sonyericsson/music/common/Track;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/music/common/Track;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method pause()Z
    .locals 2

    .line 214
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClientReleased:Z

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$5;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$5;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method play()Z
    .locals 2

    .line 197
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClientReleased:Z

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$4;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method prepareAndPlayAsync(Lcom/sonyericsson/music/common/Track;Ljava/lang/String;J)Z
    .locals 8

    .line 156
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClientReleased:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->PREPARING:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v7, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$3;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Lcom/sonyericsson/music/common/Track;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method releaseRemoteClient()V
    .locals 4

    .line 118
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mMainThreadHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$2;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$2;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v1, 0x1388

    .line 129
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :catch_0
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mListener:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;

    sget-object v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;->END:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;

    invoke-interface {v0, v1}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePlayerListener;->onUpdateState(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$PlayerState;)V

    return-void
.end method

.method setPlaybackPos(J)V
    .locals 2

    .line 231
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClientReleased:Z

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$6;-><init>(Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method synchronousReleaseRemoteClient()V
    .locals 3

    .line 137
    invoke-static {}, Lcom/sonymobile/music/common/ThreadingUtils;->throwIfNotMainDebug()V

    .line 139
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    if-eqz v0, :cond_2

    .line 140
    invoke-virtual {v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->hasSession()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    iget-object v2, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mSessionCallback:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$SessionCallback;

    invoke-virtual {v0, v1, v2}, Landroidx/mediarouter/media/RemotePlaybackClient;->stop(Landroid/os/Bundle;Landroidx/mediarouter/media/RemotePlaybackClient$SessionActionCallback;)V

    .line 144
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClientReleased:Z

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    invoke-virtual {v0}, Landroidx/mediarouter/media/RemotePlaybackClient;->release()V

    const/4 v0, 0x1

    .line 146
    iput-boolean v0, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClientReleased:Z

    .line 149
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mCurrentMediaItem:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$MediaItem;

    .line 150
    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mPrepareOperation:Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer$RemotePrepareOperation;

    .line 151
    iput-object v1, p0, Lcom/sonyericsson/music/playerservice/dlnacast/RemotePlayer;->mRemoteClient:Landroidx/mediarouter/media/RemotePlaybackClient;

    :cond_2
    return-void
.end method
